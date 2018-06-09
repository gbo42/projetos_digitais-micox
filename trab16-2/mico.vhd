-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- UFPR, BCC, ci210 2016-2 trabalho semestral, autor: Roberto Hexsel, 07out
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- display: exibe inteiro na saida padrao do simulador
--          NAO ALTERE ESTE MODELO
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE; use std.textio.all;
use work.p_wires.all;

entity display is
  port (rst,clk : in bit;
        enable  : in bit;
        data    : in reg32);
end display;

architecture functional of display is
  file output : text open write_mode is "STD_OUTPUT";
begin  -- functional

  U_WRITE_OUT: process(clk)
    variable msg : line;
  begin
    if falling_edge(clk) and enable = '1' then
      write ( msg, string'(BV32HEX(data)) );
      writeline( output, msg );
    end if;
  end process U_WRITE_OUT;

end functional;
-- ++ display ++++++++++++++++++++++++++++++++++++++++++++++++++++++++



-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- MICO X
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE;
use IEEE.std_logic_1164.all;
use work.p_wires.all;

entity mico is
  port (rst,clk : in    bit);
end mico;

architecture functional of mico is

  component or2 is
	  generic (prop : time := t_or2);
	  port(A, B : in  bit;
	       S    : out bit);
	end component or2;

  component Branch is
  	port (A, B : in reg32;
  				fun : in reg4;
  				jump : out bit);
  end component Branch;


  component adderCadeia is
      port(inpA, inpB : in reg16;
           outC : out reg16;
           vem  : in bit;
           vai  : out bit
           );
  end component adderCadeia;

  component mux2vet16 is
        port(A, B : in reg16;
             S : in bit;
             C : out reg16);
  end component mux2vet16;

  component mux2vet32 is
    port(A, B : in reg32;
         S : in bit;
         C : out reg32);
  end component mux2vet32;

  component registrador16 is
    port(rel, rst, ld: in  bit;
          D:           in  reg16;
          Q:           out reg16);
  end component registrador16;

  component Ext16_32 is
	port ( 	A: in reg16;
			extZero: in bit;
			B: out reg32);
  end component Ext16_32;

  component display is                  -- neste arquivo
    port (rst,clk : in bit;
          enable  : in bit;
          data    : in reg32);
  end component display;

  component mem_prog is                 -- no arquivo mem.vhd
    port (ender : in  reg6;
          instr : out reg32);
  end component mem_prog;

  component ULA is                      -- neste arquivo
    port (fun : in reg4;
          alfa,beta : in  reg32;
          gama      : out reg32);
  end component ULA;

  component R is                        -- neste arquivo
    port (clk         : in  bit;
          wr_en       : in  bit;
          r_a,r_b,r_c : in  reg4;
          A,B         : out reg32;
          C           : in  reg32);
  end component R;

  type t_control_type is record
    extZero  : bit;       -- estende com zero=1, com sinal=0
    selBeta  : bit;       -- seleciona fonte para entrada B da ULA
    wr_display: bit;      -- atualiza display=1
    selNxtIP : reg2;       -- seleciona fonte do incremento do IP
    wr_reg   : bit;       -- atualiza registrador: R(c) <= C
  end record;

  type t_control_mem is array (0 to 15) of t_control_type;

  -- preencha esta tabela com os sinais de controle adequados
  -- a tabela eh indexada com o opcode da instrucao
  constant ctrl_table : t_control_mem := (
  --extZ sBeta wrD  sIP  wrR
    ('0','0', '0', "00", '0'),            -- NOP
    ('0','0', '0', "00", '1'),            -- ADD
    ('0','0', '0', "00", '1'),            -- SUB
    ('0','0', '0', "00", '1'),            -- MUL
    ('0','0', '0', "00", '1'),            -- AND
    ('0','0', '0', "00", '1'),            -- OR
    ('0','0', '0', "00", '1'),            -- XOR
    ('0','0', '0', "00", '1'),            -- NOT
    ('0','0', '0', "00", '1'),            -- SLL
    ('0','0', '0', "00", '1'),            -- SRL
    ('1','1', '0', "00", '1'),            -- ORI
    ('0','1', '0', "00", '1'),            -- ADDI
    ('0','0', '1', "00", '0'),            -- SHOW
    ('0','0', '0', "01", '0'),            -- JUMP
    ('0','0', '0', "00", '0'),            -- BRANCH
    ('0','0', '0', "10", '0'));           -- HALT

  signal extZero, selBeta, wr_display, selNxtIP, wr_reg, halt : bit;

  signal instr, A, B, C, beta, extended : reg32;
  signal this  : t_control_type;
  signal const, ip, prox, somaIp : reg16;
  signal opcode : reg4;
  signal i_opcode : natural range 0 to 15;

  signal bran, jump: bit;

begin  -- functional

  -- memoria de programa contem somente 64 palavras
  U_mem_prog: mem_prog port map(ip(5 downto 0), instr);

  opcode <= instr(31 downto 28);
  i_opcode <= BV2INT4(opcode);          -- indice do vetor DEVE ser inteiro

  this <= ctrl_table(i_opcode);         -- sinais de controle

  extZero    <= this.extZero;
  selBeta    <= this.selBeta;
  wr_display <= this.wr_display;
  selNxtIP   <= this.selNxtIP(0);
  halt       <= this.selNxtIP(1);
  wr_reg     <= this.wr_reg;

  U_branch: Branch port map (A, B, instr(31 downto 28), bran);

  -- circuito para determinar o IP
  U_muxsoma: mux2vet16 port map (x"0001", instr(15 downto 0), halt, somaIp);
  U_soma: adderCadeia port map (ip, somaIp, prox, '0', open);
  U_or: or2 port map (selNxtIP,bran, jump);
  U_muxIP: mux2vet16 port map (prox,instr(15 downto 0), jump, const);
  U_regIP: registrador16 port map ( clk, rst, '1', const, ip);

  U_regs: R port map (clk, wr_reg, instr(27 downto 24), instr(23 downto 20), instr(19 downto 16), A, B, C);

  U_ext: Ext16_32 port map (instr(15 downto 0), extZero, extended);

  -- seleciona beta
  U_muxbeta: mux2vet32 port map (B, extended, selBeta ,beta);

  U_ULA: ULA port map ( instr(31 downto 28), A, beta, C);


  -- nao altere esta linha
  U_display: display port map (rst, clk, wr_display, A);

end functional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++




-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity ULA is
  port (fun : in reg4;
        alfa,beta : in  reg32;
        gama      : out reg32);
end ULA;

architecture behaviour of ULA is

  component adderCadeia32 is
    port(inpA, inpB : in reg32;
         outC : out reg32;
         vem  : in bit;
         vai  : out bit
         );
  end component adderCadeia32;

  component mux16vet32 is
    port(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P : in  reg32;
         sel  : in  reg4;
         Z    : out reg32);
  end component mux16vet32;

  component inv is
    generic (prop : time := t_inv);
    port(A : in bit;
         S : out bit);
  end component inv;

  component and2 is
    generic (prop : time := t_and2);
    port(A, B : in  bit;  -- entradas A,B
         S    : out bit); -- saida C
  end component and2;

  component inv32 is
    generic (prop : time := t_inv);
    port(A : in reg32;
         S : out reg32);
  end component inv32;

  component and32 is
    port(A, B : in reg32;
         S : out reg32);
  end component and32;

  component or32 is
    port(A, B : in reg32;
         S : out reg32);
  end component or32;

  component xor32 is
    port(A, B : in reg32;
         S : out reg32);
  end component xor32;

  component mux2vet32 is
    port(A,B : in  reg32;
         S : in  bit;
         C : out reg32);
  end component mux2vet32;

  component mult32x32 is
    port(A, B : in  reg32;   -- entradas A,B
         prod : out reg64);  -- produto
  end component mult32x32;

  component deslE is
    port(A	: in reg32;
         sel  : in  reg5;
         B    : out reg32);
  end component deslE;

  component deslD is
    port(A	: in reg32;
         sel  : in  reg5;
         B    : out reg32);
  end component deslD;

  signal soma, beta_inv, beta_aux, alfa_inv : reg32;
  signal and_res, or_res, xor_res, desl_e, desl_d : reg32;
  signal prod : reg64;
  signal i, j : bit;
  constant zero : integer := 0;

begin

U_inv: inv port map (fun(0),i);
U_and: and2 port map (i, fun(1), j);
U_inv32: inv32 port map (beta, beta_inv);
U_and32: and32 port map (alfa, beta, and_res);
U_or32: or32 port map (alfa, beta, or_res);
U_xor32: xor32 port map (alfa, beta, xor_res);

U_mux2: mux2vet32 port map (beta, beta_inv,j,beta_aux);
U_soma: adderCadeia32 port map (alfa, beta_aux, soma, j, open);
U_mult: mult32x32 port map (alfa, beta, prod);
U_deslE: deslE port map (alfa, beta(4 downto 0), desl_e);
U_deslD: deslD port map (alfa, beta(4 downto 0), desl_d);

U_inv32_alfa: inv32 port map (alfa, alfa_inv);
U_mux: mux16vet32 port map (INT2BV32(zero), soma, soma, prod(31 downto 0), and_res, or_res, xor_res, alfa_inv, desl_e, desl_d, or_res, soma, INT2BV32(zero), INT2BV32(zero), INT2BV32(zero), INT2BV32(zero), fun, gama);

-- para fins de teste
--U_mux: mux16vet32 port map (INT2BV32(zero), soma, soma, prod(31 downto 0), and_res, or_res, xor_res, alfa_inv, INT2BV32(zero), INT2BV32(zero), or_res, soma, INT2BV32(zero), INT2BV32(zero), INT2BV32(zero), INT2BV32(zero), fun, gama);





end behaviour;
-- -----------------------------------------------------------------------



-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity R is
  port (clk         : in  bit;
        wr_en       : in  bit;          -- ativo em 1
        r_a,r_b,r_c : in  reg4;
        A,B         : out reg32;
        C           : in  reg32);
end R;

architecture rtl of R is

  component registrador32 is
    port(rel, rst, ld: in  bit;
          D:           in  reg32;
          Q:           out reg32);
  end component registrador32;

  component mux16vet32 is
    port(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P : in  reg32;
         sel  : in  reg4;
         Z    : out reg32);
  end component mux16vet32;

  component demux16 is
    port(A               : in  bit;
         sel        : in  reg4;
         K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z : out bit);
  end component demux16;

  signal reg0out, reg1out, reg2out, reg3out,  reg4out, reg5out, reg6out, reg7out, reg8out, reg9out, reg10out, reg11out, reg12out, reg13out, reg14out, reg15out: reg32;
  signal en0,en1,en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13,en14,en15: bit;

begin

  --fazer demux16 para o wr_en (demux16(wr_en => wr_en0, wr_en1, wren2...))
  Ureg0: registrador32 port map (clk, '0', '0', C, reg0out);
  Ureg1: registrador32 port map (clk, '1', en1, C, reg1out);
  Ureg2: registrador32 port map (clk, '1', en2, C, reg2out);
  Ureg3: registrador32 port map (clk, '1', en3, C, reg3out);
  Ureg4: registrador32 port map (clk, '1', en4, C, reg4out);
  Ureg5: registrador32 port map (clk, '1', en5, C, reg5out);
  Ureg6: registrador32 port map (clk, '1', en6, C, reg6out);
  Ureg7: registrador32 port map (clk, '1', en7, C, reg7out);
  Ureg8: registrador32 port map (clk, '1', en8, C, reg8out);
  Ureg9: registrador32 port map (clk, '1', en9, C, reg9out);
  Ureg10: registrador32 port map (clk, '1', en10, C, reg10out);
  Ureg11: registrador32 port map (clk, '1', en11, C, reg11out);
  Ureg12: registrador32 port map (clk, '1', en12, C, reg12out);
  Ureg13: registrador32 port map (clk, '1', en13, C, reg13out);
  Ureg14: registrador32 port map (clk, '1', en14, C, reg14out);
  Ureg15: registrador32 port map (clk, '1', en15, C, reg15out);

  Umux0: mux16vet32 port map (reg0out, reg1out, reg2out, reg3out,  reg4out, reg5out, reg6out, reg7out, reg8out, reg9out, reg10out, reg11out, reg12out, reg13out, reg14out, reg15out, r_a, A);
  Umux1: mux16vet32 port map (reg0out, reg1out, reg2out, reg3out,  reg4out, reg5out, reg6out, reg7out, reg8out, reg9out, reg10out, reg11out, reg12out, reg13out, reg14out, reg15out, r_b, B);

  Udemux0: demux16 port map (wr_en, r_c, en0,en1,en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13,en14,en15);
end rtl;
-- -----------------------------------------------------------------------



-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- or 32 bits -> 1 bit
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity Orvet32 is
	port(A : in reg32;
			 res : out bit);
end Orvet32;

architecture estrut of Orvet32 is
	component or2 is
	  generic (prop : time := t_or2);
	  port(A, B : in  bit;
	       S    : out bit);
	end component or2;

signal aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8,aux9,aux10,aux11,aux12,aux13,aux14,aux15,
       aux16,aux17,aux18,aux19,aux20,aux21,aux22,aux23,aux24,aux25,aux26,aux27,aux28,aux29,aux30 : bit;
begin

U_or0: or2 port map(A(0),A(1),aux1);
U_or1: or2 port map(aux1,A(2),aux2);
U_or2: or2 port map(aux2,A(3),aux3);
U_or3: or2 port map(aux3,A(4),aux4);
U_or4: or2 port map(aux4,A(5),aux5);
U_or5: or2 port map(aux5,A(6),aux6);
U_or6: or2 port map(aux6,A(7),aux7);
U_or7: or2 port map(aux7,A(8),aux8);
U_or8: or2 port map(aux8,A(9),aux9);
U_or9: or2 port map(aux9,A(10),aux10);
U_or10: or2 port map(aux10,A(11),aux11);
U_or11: or2 port map(aux11,A(12),aux12);
U_or12: or2 port map(aux12,A(13),aux13);
U_or13: or2 port map(aux13,A(14),aux14);
U_or14: or2 port map(aux14,A(15),aux15);
U_or15: or2 port map(aux15,A(16),aux16);
U_or16: or2 port map(aux16,A(17),aux17);
U_or17: or2 port map(aux17,A(18),aux18);
U_or18: or2 port map(aux18,A(19),aux19);
U_or19: or2 port map(aux19,A(20),aux20);
U_or20: or2 port map(aux20,A(21),aux21);
U_or21: or2 port map(aux21,A(22),aux22);
U_or22: or2 port map(aux22,A(23),aux23);
U_or23: or2 port map(aux23,A(24),aux24);
U_or24: or2 port map(aux24,A(25),aux25);
U_or25: or2 port map(aux25,A(26),aux26);
U_or26: or2 port map(aux26,A(27),aux27);
U_or27: or2 port map(aux27,A(28),aux28);
U_or28: or2 port map(aux28,A(29),aux29);
U_or29: or2 port map(aux29,A(30),aux30);
U_or30: or2 port map(aux30,A(31),res);

end estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- branch
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity Branch is
	port (A, B : in reg32;
				fun : in reg4;
				jump : out bit);
end Branch;

architecture estrut of Branch is
	component adderCadeia32 is
		port(inpA, inpB : in reg32;
				 outC : out reg32;
				 vem  : in bit;
				 vai  : out bit
				 );
	end component adderCadeia32;

	component Orvet32 is
		port(A : in reg32;
				 res : out bit);
	end component Orvet32;

	component and2 is
	  generic (prop : time := t_and2);
	  port(A, B : in  bit;
	       S    : out bit);
	end component and2;

	component inv is
	  generic (prop : time := t_inv);
	  port(A : in bit;
	       S : out bit);
	end component inv;

	component inv32 is
	  generic (prop : time := t_inv);
	  port(A : in reg32;
	       S : out reg32);
	end component inv32;

signal resultado, b_inv : reg32;
signal resOr, equal : bit;
signal aux1, aux2, aux3, auxinv : bit;

begin

U_inv_32: inv32 port map (B, b_inv);
U_adder: adderCadeia32 port map (A, b_inv, resultado, '1', open);
U_orvet: Orvet32 port map (resultado, resOr);
U_inv1: inv port map (resOr, equal);

U_and1: and2 port map (fun(3), fun(2), aux1);
U_inv2: inv port map (fun(0), auxinv);
U_and2: and2 port map (fun(1), auxinv, aux2);
U_and3: and2 port map (aux1, aux2, aux3);

U_and4: and2 port map (aux3, equal, jump);

end estrut;


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- extensor de bits 16->32
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity Ext16_32 is
	port ( 	A: in reg16;
			extZero: in bit;
			B: out reg32);
end Ext16_32;

architecture estrut of Ext16_32 is

	component mux2vet16 is
		port(A,B: in reg16;
			 S	: in bit;
       C	: out reg16);
	end component mux2vet16;

	constant auxint : integer :=0;
	signal aux : reg16;

begin

	B(15 downto 0) <= A;
	aux(0) <= A(15);
	aux(1) <= A(15);
	aux(2) <= A(15);
	aux(3) <= A(15);
	aux(4) <= A(15);
	aux(5) <= A(15);
	aux(6) <= A(15);
	aux(7) <= A(15);
	aux(8) <= A(15);
	aux(9) <= A(15);
	aux(10) <= A(15);
	aux(11) <= A(15);
	aux(12) <= A(15);
	aux(13) <= A(15);
	aux(14) <= A(15);
	aux(15) <= A(15);

	U_mux: mux2vet16 port map (aux ,INT2BV16(auxint), extZero, B(31 downto 16));


end estrut;
