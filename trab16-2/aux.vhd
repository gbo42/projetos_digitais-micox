-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- UFPR, BCC, ci210 2016-2 trabalho semestral, autor: Roberto Hexsel, 07out
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- deslE
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity deslE is
  port(A	: in reg32;
       sel  : in  reg5;
       B    : out reg32);
end deslE;

architecture estrut of deslE is

  component mux32 is
    port(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19,
    	   in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31: in  bit;
         sel  : in  reg5;
         Z    : out bit);
  end component mux32;

begin

Um0: mux32 port map (A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(0));
Um1: mux32 port map (A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(1));
Um2: mux32 port map (A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(2));
Um3: mux32 port map (A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(3));
Um4: mux32 port map (A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(4));
Um5: mux32 port map (A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(5));
Um6: mux32 port map (A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(6));
Um7: mux32 port map (A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(7));
Um8: mux32 port map (A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(8));
Um9: mux32 port map (A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(9));
Um10: mux32 port map (A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(10));
Um11: mux32 port map (A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(11));
Um12: mux32 port map (A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(12));
Um13: mux32 port map (A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(13));
Um14: mux32 port map (A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(14));
Um15: mux32 port map (A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(15));
Um16: mux32 port map (A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(16));
Um17: mux32 port map (A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(17));
Um18: mux32 port map (A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(18));
Um19: mux32 port map (A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0','0',sel, B(19));
Um20: mux32 port map (A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0','0',sel, B(20));
Um21: mux32 port map (A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0','0',sel, B(21));
Um22: mux32 port map (A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0','0',sel, B(22));
Um23: mux32 port map (A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0','0',sel, B(23));
Um24: mux32 port map (A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0','0',sel, B(24));
Um25: mux32 port map (A(25),A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0','0',sel, B(25));
Um26: mux32 port map (A(26),A(25),A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0','0',sel, B(26));
Um27: mux32 port map (A(27),A(26),A(25),A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0','0',sel, B(27));
Um28: mux32 port map (A(28),A(27),A(26),A(25),A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0','0',sel, B(28));
Um29: mux32 port map (A(29),A(28),A(27),A(26),A(25),A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0','0',sel, B(29));
Um30: mux32 port map (A(30),A(29),A(28),A(27),A(26),A(25),A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),'0',sel, B(30));
Um31: mux32 port map (A(31),A(30),A(29),A(28),A(27),A(26),A(25),A(24),A(23),A(22),A(21),A(20),A(19),A(18),A(17),A(16),A(15),A(14),A(13),A(12),A(11),A(10),A(9),A(8),A(7),A(6),A(5),A(4),A(3),A(2),A(1),A(0),sel, B(31));
end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- deslD
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity deslD is
  port(A	: in reg32;
       sel  : in  reg5;
       B    : out reg32);
end deslD;

architecture estrut of deslD is

  component mux32 is
    port(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19,
    	   in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31: in  bit;
         sel  : in  reg5;
         Z    : out bit);
  end component mux32;

begin

Um0: mux32 port map (A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),sel, B(0));
Um1: mux32 port map (A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0',sel, B(1));
Um2: mux32 port map (A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0',sel, B(2));
Um3: mux32 port map (A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0',sel, B(3));
Um4: mux32 port map (A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0',sel, B(4));
Um5: mux32 port map (A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0',sel, B(5));
Um6: mux32 port map (A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0',sel, B(6));
Um7: mux32 port map (A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0',sel, B(7));
Um8: mux32 port map (A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0',sel, B(8));
Um9: mux32 port map (A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0',sel, B(9));
Um10: mux32 port map (A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0',sel, B(10));
Um11: mux32 port map (A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0',sel, B(11));
Um12: mux32 port map (A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0',sel, B(12));
Um13: mux32 port map (A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(13));
Um14: mux32 port map (A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(14));
Um15: mux32 port map (A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(15));
Um16: mux32 port map (A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(16));
Um17: mux32 port map (A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(17));
Um18: mux32 port map (A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(18));
Um19: mux32 port map (A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(19));
Um20: mux32 port map (A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(20));
Um21: mux32 port map (A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(21));
Um22: mux32 port map (A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(22));
Um23: mux32 port map (A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(23));
Um24: mux32 port map (A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(24));
Um25: mux32 port map (A(25),A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(25));
Um26: mux32 port map (A(26),A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(26));
Um27: mux32 port map (A(27),A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(27));
Um28: mux32 port map (A(28),A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(28));
Um29: mux32 port map (A(29),A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(29));
Um30: mux32 port map (A(30),A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(30));
Um31: mux32 port map (A(31),'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',sel, B(31));
end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++




-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- multiplica por 1 A(15..0)*B(i) => S(16..0)
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE; use IEEE.std_logic_1164.all; use work.p_wires.all;

entity m_p_1 is
  port(A,B : in  reg32;                 -- entradas A,B
       S : in bit;                      -- bit por multiplicar
       R : out reg33);                  -- produto parcial
end m_p_1;

architecture funcional of m_p_1 is

component adderCadeia32 is
  port(inpA, inpB : in reg32;
       outC : out reg32;
       vem  : in bit;
       vai  : out bit
       );
end component adderCadeia32;

  signal somaAB : reg33;

begin

  U_soma: adderCadeia32 port map(A, B , somaAB(31 downto 0), '0', somaAB(32));

  R <= somaAB when S = '1' else ('0' & B);

end funcional;
-- -------------------------------------------------------------------


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- multiplicador combinacional
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE; use IEEE.std_logic_1164.all; use IEEE.numeric_std.all;
use work.p_wires.all;

entity mult32x32 is
  port(A, B : in  reg32;   -- entradas A,B
       prod : out reg64);  -- produto
end mult32x32;

-- ======================================================================
-- especificação funcional para um multiplicador de 32 bits
-- ======================================================================
--architecture funcional of mult32x32 is
--begin
--  prod <= INT2BV32( BV2INT16(A) * BV2INT16(B) );
--end funcional;
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- ------------------------------------------------------------------
-- descomente as linhas com --x para acrescentar o código do multiplicador
-- ------------------------------------------------------------------

 architecture estrutural of mult32x32 is

   component m_p_1 is port(A,B : in  reg32;   -- reg16
                           S   : in  bit;
                           R   : out reg33);  -- reg17
   end component m_p_1;

   signal p01,p02,p03,p04,p05,p06,p07,p08,p09,p10,p11,p12,p13,p14,p15,p16: reg33;
   signal p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32: reg33;

 begin

    U_00: m_p_1 port map ( A, x"00000000", B(0), p01);
    U_01: m_p_1 port map ( A, p01(32 downto 1), B(1), p02);
    U_02: m_p_1 port map ( A, p02(32 downto 1), B(2), p03);
    U_03: m_p_1 port map ( A, p03(32 downto 1), B(3), p04);
    U_04: m_p_1 port map ( A, p04(32 downto 1), B(4), p05);
    U_05: m_p_1 port map ( A, p05(32 downto 1), B(5), p06);
    U_06: m_p_1 port map ( A, p06(32 downto 1), B(6), p07);
    U_07: m_p_1 port map ( A, p07(32 downto 1), B(7), p08);
    U_08: m_p_1 port map ( A, p08(32 downto 1), B(8), p09);
    U_09: m_p_1 port map ( A, p09(32 downto 1), B(9), p10);
    U_10: m_p_1 port map ( A, p10(32 downto 1), B(10), p11);
    U_11: m_p_1 port map ( A, p11(32 downto 1), B(11), p12);
    U_12: m_p_1 port map ( A, p12(32 downto 1), B(12), p13);
    U_13: m_p_1 port map ( A, p13(32 downto 1), B(13), p14);
    U_14: m_p_1 port map ( A, p14(32 downto 1), B(14), p15);
    U_15: m_p_1 port map ( A, p15(32 downto 1), B(15), p16);
    U_16: m_p_1 port map ( A, p16(32 downto 1), B(16), p17);
    U_17: m_p_1 port map ( A, p17(32 downto 1), B(17), p18);
    U_18: m_p_1 port map ( A, p18(32 downto 1), B(18), p19);
    U_19: m_p_1 port map ( A, p19(32 downto 1), B(19), p20);
    U_20: m_p_1 port map ( A, p20(32 downto 1), B(20), p21);
    U_21: m_p_1 port map ( A, p21(32 downto 1), B(21), p22);
    U_22: m_p_1 port map ( A, p22(32 downto 1), B(22), p23);
    U_23: m_p_1 port map ( A, p23(32 downto 1), B(23), p24);
    U_24: m_p_1 port map ( A, p24(32 downto 1), B(24), p25);
    U_25: m_p_1 port map ( A, p25(32 downto 1), B(25), p26);
    U_26: m_p_1 port map ( A, p26(32 downto 1), B(26), p27);
    U_27: m_p_1 port map ( A, p27(32 downto 1), B(27), p28);
    U_28: m_p_1 port map ( A, p28(32 downto 1), B(28), p29);
    U_29: m_p_1 port map ( A, p29(32 downto 1), B(29), p30);
    U_30: m_p_1 port map ( A, p30(32 downto 1), B(30), p31);
    U_31: m_p_1 port map ( A, p31(32 downto 1), B(31), p32);

    prod <= p32 & p31(0) & p30(0) & p29(0) & p28(0)
          & p27(0) & p26(0) & p25(0) & p24(0) & p23(0)
          & p22(0) & p21(0) & p20(0) & p19(0) & p18(0)
          & p17(0) & p16(0) & p15(0) & p14(0) & p13(0)
          & p12(0) & p11(0)
    			& p10(0) & p09(0) & p08(0) & p07(0) & p06(0)
    			& p05(0) & p04(0) & p03(0) & p02(0) & p01(0);

 end estrutural;
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++




-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux4
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux4 is
  port(A,B,C,D : in  bit;               -- quatro entradas de dados
       S0,S1   : in  bit;               -- dois sinais de selecao
       Z       : out bit);              -- saida
end mux4;

architecture estrut of mux4 is

  component mux2 is
    port(A,B : in  bit; S : in  bit; Z : out bit);
  end component mux2;

  signal p,q : bit;                   -- sinais internos
begin

  Um0: mux2 port map (A, B, S0, p);
  Um1: mux2 port map (C, D, S0, q);
  Um2: mux2 port map (p, q, S1, Z);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux8
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux8 is
  port(A, B, C, D, E, F, G, H : in  bit;
       sel  : in  reg3;
       Z    : out bit);
end mux8;

architecture estrut of mux8 is

  component mux2 is
    port(A,B : in  bit; S : in  bit; Z : out bit);
  end component mux2;

  component mux4 is
    port(A,B,C,D : in  bit; S0,S1 : in  bit; Z : out bit);
  end component mux4;

  signal x, y : bit;

begin

  Um0: mux4 port map (A, B, C, D, sel(0), sel(1), x);
  Um1: mux4 port map (E, F, G, H, sel(0), sel(1), y);
  Um2: mux2 port map (x, y, sel(2), Z);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux16
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux16 is
  port(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P : in  bit;
       sel  : in  reg4;
       Z    : out bit);
end mux16;

architecture estrut of mux16 is

  component mux2 is
    port(A,B : in  bit; S : in  bit; Z : out bit);
  end component mux2;

  component mux8 is
    port(A,B,C,D,E,F,G,H : in  bit; sel : in  reg3; Z : out bit);
  end component mux8;

  signal x, y : bit;

begin

  Um0: mux8 port map (A, B, C, D, E, F, G, H, sel(2 downto 0), x);
  Um1: mux8 port map (I, J, K, L, M, N, O, P, sel(2 downto 0), y);
  Um2: mux2 port map (x, y, sel(3), Z);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux32
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux32 is
  port(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19,
  	   in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31: in  bit;
       sel  : in  reg5;
       Z    : out bit);
end mux32;

architecture estrut of mux32 is

  component mux2 is
    port( A,B : in  bit;
          S : in  bit;
          Z : out bit);
  end component mux2;

  component mux16 is
    port(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P : in  bit;
         sel  : in  reg4;
         Z    : out bit);
  end component mux16;

  signal x, y : bit;

begin

  Um0: mux16 port map (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, sel(3 downto 0), x);
  Um1: mux16 port map (in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, sel(3 downto 0), y);
  Um2: mux2 port map (x, y, sel(4), Z);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++




-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- inversor 32bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity inv32 is
  generic (prop : time := t_inv);
  port(A : in reg32;
       S : out reg32);
end inv32;

architecture comport of inv32 is
begin
    S <= (not A) after prop;
end architecture comport;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- or 32bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity or32 is
  --generic (prop : time := t_inv);
  port(A, B : in reg32;
       S : out reg32);
end or32;

architecture comport of or32 is
begin
    S <= (A or B);-- after prop;
end architecture comport;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- xor 32bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity xor32 is
  --generic (prop : time := t_inv);
  port(A, B : in reg32;
       S : out reg32);
end xor32;

architecture comport of xor32 is
begin
    S <= (A xor B);-- after prop;
end architecture comport;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- and 32bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity and32 is
  --generic (prop : time := t_inv);
  port(A, B : in reg32;
       S : out reg32);
end and32;

architecture comport of and32 is
begin
    S <= (A and B); -- after prop;
end architecture comport;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++







-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- demux2(a,s,z,w)
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity demux2 is
  port(A   : in  bit;
       S   : in  bit;
       Z,W : out bit);
end demux2;

architecture estrut of demux2 is

	component and2 is
      generic (prop : time := t_and2);
      port(A, B : in  bit;  -- entradas A,B
           S    : out bit); -- saida C
    end component and2;

  component inv is
    port(A : in bit;
         S : out bit);
  end component inv;

  signal n : bit;

begin

  n0: and2 port map (A, S, W);
  n1: inv port map (S, n);
  n4: and2  port map (A, n, Z);

end architecture estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity demux4 is
  port(A       : in  bit;
       S   : in  reg2;
       X,Y,Z,W : out bit);
end demux4;

architecture estrut of demux4 is
  component demux2 is
    port(A, S : in  bit; Z, W : out bit);
  end component demux2;

  signal p, q : bit;
begin
  -- implemente com demux2
  Ud0: demux2 port map(a, S(1), p, q);
  Ud1: demux2 port map(p, S(0), x, y);
  Ud2: demux2 port map(q, S(0), z, w);


end architecture estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- demux8(a,s0,s1,s2,p,q,r,s,t,u,v,w)
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity demux8 is
  port(A               : in  bit;
       sel        : in  reg3;
       P,Q,R,S,T,U,V,W : out bit);
end demux8;

architecture estrut of demux8 is
  component demux2 is
    port(A, S : in  bit; Z, W : out bit);
  end component demux2;

  component demux4 is
    port(A:in bit; S : in  reg2; X, Y, Z, W : out bit);
  end component demux4;

  signal i, j : bit;
begin
  -- implemente com demux4
  Ud0: demux2 port map(a, sel(2), i, j);
  Ud1: demux4 port map(i, sel(1 downto 0), p, q, r, s);
  Ud2: demux4 port map(j, sel(1 downto 0), t, u, v, w);

end architecture estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- demux 16
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity demux16 is
  port(A               : in  bit;
       sel        : in  reg4;
       K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z : out bit);
end demux16;

architecture estrut of demux16 is
  component demux8 is
    port(A               : in  bit;
         sel        : in  reg3;
         P,Q,R,S,T,U,V,W : out bit);
  end component demux8;

  component demux2 is
    port(A, S : in  bit; Z, W : out bit);
  end component demux2;

  signal i,j : bit;
  begin

    Ud0: demux2 port map(a, sel(3), i, j);
    Ud1: demux8 port map(i, sel(2 downto 0), K,L,M,N,O,P,Q,R);
    Ud2: demux8 port map(j, sel(2 downto 0), S,T,U,V,W,X,Y,Z);

  end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity demux32 is
  port(A    : in bit;
  	   sel  : in  reg5;
  	   out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19,
  	   out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31: out  bit);
end demux32;

architecture estrut of demux32 is

	component demux16 is
	  port(A               : in  bit;
	       sel        : in  reg4;
	       K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z : out bit);
	end component demux16;

    component demux2 is
      port(A, S : in  bit; Z, W : out bit);
    end component demux2;

  signal x, y : bit;

begin

  Ud2: demux2 port map (A, sel(4), x, y);
  Ud0: demux16 port map (x ,sel(3 downto 0), out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15);
  Ud1: demux16 port map (y , sel(3 downto 0), out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++




-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- demux2 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity demux2vet32 is
    port(A: in reg32;
         S : in bit;
         Z, W: out reg32);
end demux2vet32;

architecture estrut of demux2vet32 is

    component demux2 is
        port(A : in  bit;
             S   : in  bit;
             Z, W  : out bit);
    end component demux2;



begin
    Udemux0: demux2 port map ( A(0),  S, Z(0), W(0));
    Udemux1: demux2 port map ( A(1),  S, Z(1), W(1));
    Udemux2: demux2 port map ( A(2),  S, Z(2), W(2));
    Udemux3: demux2 port map ( A(3),  S, Z(3), W(3));
    Udemux4: demux2 port map ( A(4),  S, Z(4), W(4));
    Udemux5: demux2 port map ( A(5),  S, Z(5), W(5));
    Udemux6: demux2 port map ( A(6),  S, Z(6), W(6));
    Udemux7: demux2 port map ( A(7),  S, Z(7), W(7));
    Udemux8: demux2 port map ( A(8),  S, Z(8), W(8));
    Udemux9: demux2 port map ( A(9),  S, Z(9), W(9));
    Udemux10: demux2 port map ( A(10), S, Z(10), W(10));
    Udemux11: demux2 port map ( A(11), S, Z(11), W(11));
    Udemux12: demux2 port map ( A(12), S, Z(12), W(12));
    Udemux13: demux2 port map ( A(13), S, Z(13), W(13));
    Udemux14: demux2 port map ( A(14), S, Z(14), W(14));
    Udemux15: demux2 port map ( A(15), S, Z(15), W(15));
    Udemux16: demux2 port map ( A(16), S, Z(16), W(16));
    Udemux17: demux2 port map ( A(17), S, Z(17), W(17));
    Udemux18: demux2 port map ( A(18), S, Z(18), W(18));
    Udemux19: demux2 port map ( A(19), S, Z(19), W(19));
    Udemux20: demux2 port map ( A(20), S, Z(20), W(20));
    Udemux21: demux2 port map ( A(21), S, Z(21), W(21));
    Udemux22: demux2 port map ( A(22), S, Z(22), W(22));
    Udemux23: demux2 port map ( A(23), S, Z(23), W(23));
    Udemux24: demux2 port map ( A(24), S, Z(24), W(24));
    Udemux25: demux2 port map ( A(25), S, Z(25), W(25));
    Udemux26: demux2 port map ( A(26), S, Z(26), W(26));
    Udemux27: demux2 port map ( A(27), S, Z(27), W(27));
    Udemux28: demux2 port map ( A(28), S, Z(28), W(28));
    Udemux29: demux2 port map ( A(29), S, Z(29), W(29));
    Udemux30: demux2 port map ( A(30), S, Z(30), W(30));
    Udemux31: demux2 port map ( A(31), S, Z(31), W(31));



end architecture estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- demux4 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity demux4vet32 is
    port(A: in reg32;
         S : in reg2;
         Z, W, Y, X: out reg32);
end demux4vet32;

architecture estrut of demux4vet32 is

    component demux2vet32 is
        port(A : in  reg32;
             S   : in  bit;
             Z, W  : out reg32);
    end component demux2vet32;

	signal p, q: reg32;
begin

  Udemux0: demux2vet32 port map (A, S(1), p, q);
  Udemux1: demux2vet32 port map (p, S(0), Z, W);
  Udemux2: demux2vet32 port map (q, S(0), Y, X);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- demux8 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity demux8vet32 is
    port(A: in reg32;
         S : in reg3;
         Z, W, Y, X, H, I, J, K: out reg32);
end demux8vet32;

architecture estrut of demux8vet32 is

	component demux2vet32 is
        port(A : in  reg32;
             S   : in  bit;
             Z, W  : out reg32);
    end component demux2vet32;

	component demux4vet32 is
        port(A : in  reg32;
             S   : in  reg2;
             Z, W, Y, X : out reg32);
    end component demux4vet32;

	signal p, q: reg32;
begin

  Udemux0: demux2vet32 port map (A, S(2), p, q);
  Udemux1: demux4vet32 port map (p, S(1 downto 0), Z, W, Y, X);
  Udemux2: demux4vet32 port map (q, S(1 downto 0), H, I, J, Q);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- demux16 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity demux16vet32 is
    port(A: in reg32;
         S : in reg4;
         Z, W, Y, X, H, I, J, K, L, M, N, O, T, U, V, D: out reg32);
end demux16vet32;

architecture estrut of demux16vet32 is

	component demux2vet32 is
        port(A : in  reg32;
             S   : in  bit;
             Z, W  : out reg32);
    end component demux2vet32;

	component demux8vet32 is
	    port(A: in reg32;
	         S : in reg3;
	         Z, W, Y, X, H, I, J, K: out reg32);
	end component demux8vet32;

	signal p, q: reg32;
begin

  Udemux0: demux2vet32 port map (A, S(3), p, q);
  Udemux1: demux8vet32 port map (p, S(2 downto 0), Z, W, Y, X, H, I, J, K);
  Udemux2: demux8vet32 port map (q, S(2 downto 0), L, M, N, O, T, U, V, D);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- registrador 16 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_WIRES.all;

entity registrador16 is
  port(rel, rst, ld: in  bit;
        D:           in  reg16;
        Q:           out reg16);
end registrador16;

architecture funcional of registrador16 is
  signal value: reg16;
begin

  process(rel, rst, ld)
  begin
    if rst = '0' then
      value <= (others => '0');
    elsif ld = '1' and rising_edge(rel) then
      value <= D;
    end if;
  end process;

  Q <= value after t_FFD;
end funcional;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux2 16 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux2vet16 is
    port(A, B : in reg16;
         S : in bit;
         C : out reg16);
end mux2vet16;

architecture estrut of mux2vet16 is

    component mux2 is
        port(A,B : in  bit;
             S   : in  bit;
             Z   : out bit);
    end component mux2;

begin
    Umux0: mux2 port map ( A(0), B(0), S, C(0));
    Umux1: mux2 port map ( A(1), B(1), S, C(1));
    Umux2: mux2 port map ( A(2), B(2), S, C(2));
    Umux3: mux2 port map ( A(3), B(3), S, C(3));
    Umux4: mux2 port map ( A(4), B(4), S, C(4));
    Umux5: mux2 port map ( A(5), B(5), S, C(5));
    Umux6: mux2 port map ( A(6), B(6), S, C(6));
    Umux7: mux2 port map ( A(7), B(7), S, C(7));
    Umux8: mux2 port map ( A(8), B(8), S, C(8));
    Umux9: mux2 port map ( A(9), B(9), S, C(9));
    Umux10: mux2 port map ( A(10), B(10), S, C(10));
    Umux11: mux2 port map ( A(11), B(11), S, C(11));
    Umux12: mux2 port map ( A(12), B(12), S, C(12));
    Umux13: mux2 port map ( A(13), B(13), S, C(13));
    Umux14: mux2 port map ( A(14), B(14), S, C(14));
    Umux15: mux2 port map ( A(15), B(15), S, C(15));

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux2 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux2vet32 is
    port(A, B : in reg32;
         S : in bit;
         C : out reg32);
end mux2vet32;

architecture estrut of mux2vet32 is

    component mux2 is
        port(A,B : in  bit;
             S   : in  bit;
             Z   : out bit);
    end component mux2;



begin
    Umux0: mux2 port map ( A(0), B(0), S, C(0));
    Umux1: mux2 port map ( A(1), B(1), S, C(1));
    Umux2: mux2 port map ( A(2), B(2), S, C(2));
    Umux3: mux2 port map ( A(3), B(3), S, C(3));
    Umux4: mux2 port map ( A(4), B(4), S, C(4));
    Umux5: mux2 port map ( A(5), B(5), S, C(5));
    Umux6: mux2 port map ( A(6), B(6), S, C(6));
    Umux7: mux2 port map ( A(7), B(7), S, C(7));
    Umux8: mux2 port map ( A(8), B(8), S, C(8));
    Umux9: mux2 port map ( A(9), B(9), S, C(9));
    Umux10: mux2 port map ( A(10), B(10), S, C(10));
    Umux11: mux2 port map ( A(11), B(11), S, C(11));
    Umux12: mux2 port map ( A(12), B(12), S, C(12));
    Umux13: mux2 port map ( A(13), B(13), S, C(13));
    Umux14: mux2 port map ( A(14), B(14), S, C(14));
    Umux15: mux2 port map ( A(15), B(15), S, C(15));
    Umux16: mux2 port map ( A(16), B(16), S, C(16));
    Umux17: mux2 port map ( A(17), B(17), S, C(17));
    Umux18: mux2 port map ( A(18), B(18), S, C(18));
    Umux19: mux2 port map ( A(19), B(19), S, C(19));
    Umux20: mux2 port map ( A(20), B(20), S, C(20));
    Umux21: mux2 port map ( A(21), B(21), S, C(21));
    Umux22: mux2 port map ( A(22), B(22), S, C(22));
    Umux23: mux2 port map ( A(23), B(23), S, C(23));
    Umux24: mux2 port map ( A(24), B(24), S, C(24));
    Umux25: mux2 port map ( A(25), B(25), S, C(25));
    Umux26: mux2 port map ( A(26), B(26), S, C(26));
    Umux27: mux2 port map ( A(27), B(27), S, C(27));
    Umux28: mux2 port map ( A(28), B(28), S, C(28));
    Umux29: mux2 port map ( A(29), B(29), S, C(29));
    Umux30: mux2 port map ( A(30), B(30), S, C(30));
    Umux31: mux2 port map ( A(31), B(31), S, C(31));



end architecture estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux4 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux4vet32 is
  port(A,B,C,D : in  reg32;               -- quatro entradas de dados
       S0,S1   : in  bit;               -- dois sinais de selecao
       Z       : out reg32);              -- saida
end mux4vet32;

architecture estrut of mux4vet32 is

  component mux2vet32 is
    port(A,B : in  reg32; S : in  bit; C : out reg32);
  end component mux2vet32;

  signal p,q : reg32;                   -- sinais internos
begin

  Um0: mux2vet32 port map (A, B, S0, p);
  Um1: mux2vet32 port map (C, D, S0, q);
  Um2: mux2vet32 port map (p, q, S1, Z);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux8 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux8vet32 is
  port(A, B, C, D, E, F, G, H : in  reg32;
       sel  : in  reg3;
       Z    : out reg32);
end mux8vet32;

architecture estrut of mux8vet32 is

  component mux2vet32 is
    port(A,B : in  reg32; S : in  bit; C : out reg32);
  end component mux2vet32;

  component mux4vet32 is
    port(A,B,C,D : in  reg32; S0,S1 : in  bit; Z : out reg32);
  end component mux4vet32;

  signal x, y : reg32;

begin

  Um0: mux4vet32 port map (A, B, C, D, sel(0), sel(1), x);
  Um1: mux4vet32 port map (E, F, G, H, sel(0), sel(1), y);
  Um2: mux2vet32 port map (x, y, sel(2), Z);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux16 32 bits
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

use work.p_wires.all;

entity mux16vet32 is
  port(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P : in  reg32;
       sel  : in  reg4;
       Z    : out reg32);
end mux16vet32;

architecture estrut of mux16vet32 is

  component mux2vet32 is
    port(A,B : in  reg32; S : in  bit; C : out reg32);
  end component mux2vet32;

  component mux8vet32 is
    port(A,B,C,D,E,F,G,H : in  reg32; sel : in  reg3; Z : out reg32);
  end component mux8vet32;

  signal x, y : reg32;

begin

  Um0: mux8vet32 port map (A, B, C, D, E, F, G, H, sel(2 downto 0), x);
  Um1: mux8vet32 port map (I, J, K, L, M, N, O, P, sel(2 downto 0), y);
  Um2: mux2vet32 port map (x, y, sel(3), Z);

end architecture estrut;

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- somador completo de um bit, modelo estrutural
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE; use IEEE.std_logic_1164.all; use work.p_wires.all;

entity addBit is
  port(bitA, bitB, vem : in bit;    -- entradas A,B,vem-um
       soma, vai       : out bit);  -- saida C,vai-um
end addBit;

architecture estrutural of addBit is
  component and2 is generic (prop:time);
                      port (A,B: in bit; S: out bit);
  end component and2;

  component or3 is generic (prop:time);
                      port (A,B,C: in bit; S: out bit);
  end component or3;

  component xor3 is generic (prop:time);
                      port (A,B,C: in bit; S: out bit);
  end component xor3;

  signal a1,a2,a3: bit;
begin
  U_xor:  xor3 generic map ( t_xor3 ) port map ( bitA, bitB, vem, soma );

  U_and1: and2 generic map ( t_and2 ) port map ( bitA, bitB, a1 );
  U_and2: and2 generic map ( t_and2 ) port map ( bitA, vem,  a2 );
  U_and3: and2 generic map ( t_and2 ) port map ( vem,  bitB, a3 );
  U_or:   or3  generic map ( t_or3  ) port map ( a1, a2, a3, vai );

end estrutural;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- somador de 16 bits, sem adiantamento de vai-um
-- Secao 1.6+8.1.2 de RH
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE; use IEEE.std_logic_1164.all; use work.p_wires.all;

entity adderCadeia is
  port(inpA, inpB : in reg16;
       outC : out reg16;
       vem  : in bit;
       vai  : out bit
       );
end adderCadeia;

architecture adderCadeia of adderCadeia is
  component addBit port(bitA, bitB, vem : in bit;
                        soma, vai       : out bit);
  end component addBit;

  signal v : reg16;                     -- cadeia de vai-um
  signal r : reg16;                     -- resultado parcial
begin

  -- entrada vem deve estar ligada em '0' para somar, em '1' para subtrair
  U_b0: addBit port map ( inpA(0), inpB(0), vem,  r(0), v(0) );
  U_b1: addBit port map ( inpA(1), inpB(1), v(0), r(1), v(1) );
  U_b2: addBit port map ( inpA(2), inpB(2), v(1), r(2), v(2) );
  U_b3: addBit port map ( inpA(3), inpB(3), v(2), r(3), v(3) );
  U_b4: addBit port map ( inpA(4), inpB(4), v(3), r(4), v(4) );
  U_b5: addBit port map ( inpA(5), inpB(5), v(4), r(5), v(5) );
  U_b6: addBit port map ( inpA(6), inpB(6), v(5), r(6), v(6) );
  U_b7: addBit port map ( inpA(7), inpB(7), v(6), r(7), v(7) );
  U_b8: addBit port map ( inpA(8), inpB(8), v(7), r(8), v(8) );
  U_b9: addBit port map ( inpA(9), inpB(9), v(8), r(9), v(9) );
  U_ba: addBit port map ( inpA(10),inpB(10),v(9), r(10),v(10) );
  U_bb: addBit port map ( inpA(11),inpB(11),v(10),r(11),v(11) );
  U_bc: addBit port map ( inpA(12),inpB(12),v(11),r(12),v(12) );
  U_bd: addBit port map ( inpA(13),inpB(13),v(12),r(13),v(13) );
  U_be: addBit port map ( inpA(14),inpB(14),v(13),r(14),v(14) );
  U_bf: addBit port map ( inpA(15),inpB(15),v(14),r(15),v(15) );

  vai <= v(15);
  outC <= r;

end adderCadeia;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- somador de 32 bits, sem adiantamento de vai-um
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE; use IEEE.std_logic_1164.all; use work.p_wires.all;

entity adderCadeia32 is
  port(inpA, inpB : in reg32;
       outC : out reg32;
       vem  : in bit;
       vai  : out bit
       );
end adderCadeia32;

architecture estrut of adderCadeia32 is
  component addBit port(bitA, bitB, vem : in bit;
                        soma, vai       : out bit);
  end component addBit;

  signal v : reg32;                     -- cadeia de vai-um
  signal r : reg32;                     -- resultado parcial
begin

  -- entrada vem deve estar ligada em '0' para somar, em '1' para subtrair
  U_b00: addBit port map ( inpA(0), inpB(0), vem,  r(0), v(0) );
  U_b01: addBit port map ( inpA(1), inpB(1), v(0), r(1), v(1) );
  U_b02: addBit port map ( inpA(2), inpB(2), v(1), r(2), v(2) );
  U_b03: addBit port map ( inpA(3), inpB(3), v(2), r(3), v(3) );
  U_b04: addBit port map ( inpA(4), inpB(4), v(3), r(4), v(4) );
  U_b05: addBit port map ( inpA(5), inpB(5), v(4), r(5), v(5) );
  U_b06: addBit port map ( inpA(6), inpB(6), v(5), r(6), v(6) );
  U_b07: addBit port map ( inpA(7), inpB(7), v(6), r(7), v(7) );
  U_b08: addBit port map ( inpA(8), inpB(8), v(7), r(8), v(8) );
  U_b09: addBit port map ( inpA(9), inpB(9), v(8), r(9), v(9) );
  U_b0a: addBit port map ( inpA(10),inpB(10),v(9), r(10),v(10) );
  U_b0b: addBit port map ( inpA(11),inpB(11),v(10),r(11),v(11) );
  U_b0c: addBit port map ( inpA(12),inpB(12),v(11),r(12),v(12) );
  U_b0d: addBit port map ( inpA(13),inpB(13),v(12),r(13),v(13) );
  U_b0e: addBit port map ( inpA(14),inpB(14),v(13),r(14),v(14) );
  U_b0f: addBit port map ( inpA(15),inpB(15),v(14),r(15),v(15) );
  U_b10: addBit port map ( inpA(16),inpB(16),v(15),r(16),v(16) );
  U_b11: addBit port map ( inpA(17),inpB(17),v(16),r(17),v(17) );
  U_b12: addBit port map ( inpA(18),inpB(18),v(17),r(18),v(18) );
  U_b13: addBit port map ( inpA(19),inpB(19),v(18),r(19),v(19) );
  U_b14: addBit port map ( inpA(20),inpB(20),v(19),r(20),v(20) );
  U_b15: addBit port map ( inpA(21),inpB(21),v(20),r(21),v(21) );
  U_b16: addBit port map ( inpA(22),inpB(22),v(21),r(22),v(22) );
  U_b17: addBit port map ( inpA(23),inpB(23),v(22),r(23),v(23) );
  U_b18: addBit port map ( inpA(24),inpB(24),v(23),r(24),v(24) );
  U_b19: addBit port map ( inpA(25),inpB(25),v(24),r(25),v(25) );
  U_b1a: addBit port map ( inpA(26),inpB(26),v(25),r(26),v(26) );
  U_b1b: addBit port map ( inpA(27),inpB(27),v(26),r(27),v(27) );
  U_b1c: addBit port map ( inpA(28),inpB(28),v(27),r(28),v(28) );
  U_b1d: addBit port map ( inpA(29),inpB(29),v(28),r(29),v(29) );
  U_b1e: addBit port map ( inpA(30),inpB(30),v(29),r(30),v(30) );
  U_b1f: addBit port map ( inpA(31),inpB(31),v(30),r(31),v(31) );

  vai <= v(31);
  outC <= r;

end estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- inversor
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity inv is
  generic (prop : time := t_inv);
  port(A : in bit;
       S : out bit);
end inv;

architecture comport of inv is
begin
    S <= (not A) after prop;
end architecture comport;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- porta AND de 2 entradas
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity and2 is
  generic (prop : time := t_and2);
  port(A, B : in  bit;  -- entradas A,B
       S    : out bit); -- saida C
end and2;

architecture and2 of and2 is
begin
    S <= A and B after prop;
end and2;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- porta OR de 2 entradas
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity or2 is
  generic (prop : time := t_or2);
  port(A,B : in bit;
       S   : out bit);
end or2;

architecture comport of or2 is
begin
  S <= reject t_rej inertial (A or B) after prop;
end architecture comport;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- porta OR de 3 entradas
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity or3 is
  generic (prop : time := t_or3);
  port(A, B, C : in  bit;  -- entradas A,B,C
       S       : out bit); -- saida S
end or3;

architecture or3 of or3 is
begin
    S <= A or B or C after prop;
end or3;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- porta XOR de 2 entradas
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity xor2 is
  port(A,B : in bit;
       S   : out bit);
end xor2;

architecture comport of xor2 is
begin
  S <= reject t_rej inertial (A xor B) after t_xor2;
end architecture comport;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- porta XOR de 3 entradas
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity xor3 is
  generic (prop : time := t_xor3);
  port(A, B, C : in  bit;   -- entradas A,B,C
       S       : out bit);  -- saida S
end xor3;

architecture xor3 of xor3 is
begin
    S <= A xor B xor C after prop;
end xor3;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- mux2(a,b,s,z)
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_wires.all;

entity mux2 is
  port(A,B : in  bit;
       S   : in  bit;
       Z   : out bit);
end mux2;

architecture estrut of mux2 is
  component inv is
    generic (prop : time);
    port(A : in bit; S : out bit);
  end component inv;
  component and2 is
    generic (prop : time);
    port(A,B : in bit; S : out bit);
  end component and2;
  component or2 is
    generic (prop : time);
    port(A,B : in bit; S : out bit);
  end component or2;
  signal negs,f0,f1 : bit;
 begin

  Ui:  inv  generic map (t_inv)  port map(s,negs);
  Ua0: and2 generic map (t_and2) port map(a,negs,f0);
  Ua1: and2 generic map (t_and2) port map(b,s,f1);
  Uor: or2  generic map (t_or2)  port map(f0,f1,z);

end architecture estrut;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- N-bit register, synchronous load active in '0', asynch reset
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library IEEE;
use work.p_WIRES.all;

entity registerN is
  generic (NUM_BITS: integer := 16;
           INIT_VAL: bit_vector);
  port(clk, rst, ld: in  bit;
       D:            in  bit_vector(NUM_BITS-1 downto 0);
       Q:            out bit_vector(NUM_BITS-1 downto 0));
end registerN;

architecture functional of registerN is
begin
  process(clk, rst, ld)
    variable state: bit_vector(NUM_BITS-1 downto 0);
  begin
    if rst = '0' then
      state := INIT_VAL;
    elsif rising_edge(clk) then
      if ld = '0' then
        state := D;
      end if;
    end if;
    Q <= state;
  end process;

end functional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- contador de 32 bits, reset=0 assincrono, load=1, enable=1 sincrono
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library ieee; use ieee.std_logic_1164.all; use ieee.numeric_std.all;
use work.p_WIRES.all;

entity count32up is
  port(rel, rst, ld, en: in  bit;
        D:               in  reg32;
        Q:               out reg32);
end count32up;

architecture funcional of count32up is
  signal count: reg32;
begin

  process(rel, rst, ld)
    variable num : integer;
  begin
    if rst = '0' then
      count <= x"00000000";
    elsif ld = '1' then
      count <= D;
    elsif en = '1' and rising_edge(rel) then
      num := BV2INT(count) + 1;
      count <= INT2BV32(num);
    end if;
  end process;

  Q <= count after t_FFD;
end funcional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- contador de 32 bits, reset=0 assincrono, load=1, enable=1 sincrono
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library ieee; use ieee.std_logic_1164.all; use ieee.numeric_std.all;
use work.p_WIRES.all;

entity count32dwn is
  port(rel, rst, ld, en: in  bit;
        D:               in  reg32;
        Q:               out reg32);
end count32dwn;

architecture funcional of count32dwn is
  signal count: reg32;
begin

  process(rel, rst, ld)
    variable num : integer;
  begin
    if rst = '0' then
      count <= x"00000000";
    elsif ld = '1' then
      count <= D;
    elsif en = '1' and rising_edge(rel) then
      num := BV2INT(count) - 1;
      count <= INT2BV32(num);
    end if;
  end process;

  Q <= count after t_FFD;
end funcional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- registrador de 32 bits, reset=0 assincrono, load=1 sincrono
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_WIRES.all;

entity registrador32 is
  port(rel, rst, ld: in  bit;
        D:           in  reg32;
        Q:           out reg32);
end registrador32;

architecture funcional of registrador32 is
  signal value: reg32;
begin

  process(rel, rst, ld)
  begin
    if rst = '0' then
      value <= x"00000000";
    elsif ld = '1' and rising_edge(rel) then
      value <= D;
    end if;
  end process;

  Q <= value after t_FFD;
end funcional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- registrador de 20 bits, reset=0 assincrono, load=1 sincrono
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_WIRES.all;

entity registrador20 is
  port(rel, rst, ld: in  bit;
        D:           in  reg20;
        Q:           out reg20);
end registrador20;

architecture funcional of registrador20 is
  signal value: reg20;
begin

  process(rel, rst, ld)
  begin
    if rst = '0' then
      value <= (others => '0');
    elsif ld = '1' and rising_edge(rel) then
      value <= D;
    end if;
  end process;

  Q <= value after t_FFD;
end funcional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- flip-flop tipo D com set,reset=0 assincronos
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_WIRES.all;
entity FFD is
  port(rel, rst, set : in bit;
        D : in  bit;
        Q : out bit);
end FFD;

architecture funcional of FFD is
  signal estado : bit := '0';
begin

  process(rel, rst, set)
  begin
    if rst = '0' then
      estado <= '0';
    elsif set = '0' then
      estado <= '1';
    elsif rising_edge(rel) then
      estado <= D;
    end if;
  end process;

  Q <= estado after t_FFD;

end funcional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- flip-flop tipo D com set,reset=0 assincronos, saidas Q e /Q
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
use work.p_WIRES.all;
entity FFDQQ is
  port(rel, rst, set : in bit;
        D    : in  bit;
        Q, N : out bit);
end FFDQQ;

architecture funcional of FFDQQ is
  signal estado : bit := '0';
begin

  process(rel, rst, set)
  begin
    if rst = '0' then
      estado <= '0';
    elsif set = '0' then
      estado <= '1';
    elsif rising_edge(rel) then
      estado <= D;
    end if;
  end process;

  Q <= estado after t_FFD;
  N <= not estado after t_FFD;

end funcional;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
