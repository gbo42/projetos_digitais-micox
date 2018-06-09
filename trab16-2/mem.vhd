-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- UFPR, BCC, ci210 2016-2 trabalho semestral, autor: Roberto Hexsel, 07out
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mem_prog is
  port (ender : in  reg6;
        instr : out reg32);

  type t_prog_mem is array (0 to 63) of reg32;

  -- memoria de programa contem somente 64 palavras
  constant program : t_prog_mem := (

    --Programa Fatorial
    x"b0010001",--	addi cont, R0, 1
    x"b002000c",--	addi N, R0, 12 (numero a ser calculado)
    x"b0030001",--	addi P, R0, 1
    x"c2000000",--	show N
    x"e1200008",-- fat:	bran cont, N, fim
    x"b1010001",--	addi cont, cont, 1
    x"33130000",--	mul P, P, cont
    x"d0000004",--	jump fat
    x"c3000000",-- fim:	show P
    x"f0000000",--	halt
    --Fim Fatorial
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000",
    x"00000000");

  function BV2INT6(S: reg6) return integer is
    variable result: integer;
  begin
  
    for i in S'range loop
      result := result * 2;
      if S(i) = '1' then
        result := result + 1;
      end if;
    end loop;
    return result;
  end BV2INT6;

end mem_prog;

-- nao altere esta arquitetura
architecture tabela of mem_prog is
begin  -- tabela

  instr <= program( BV2INT6(ender) );

end tabela;
