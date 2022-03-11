library IEEE;
use IEEE.std_logic_1164.all;

entity design5 is
    port(
        a   : in  std_logic;
        b   : in  std_logic;
        c   : in  std_logic;
        d   : in  std_logic;
        f_e : out std_logic
    );
end design5;

architecture behavioral of design5 is
begin

-- 7-segment display layout
-- Znazorneni 7segmentoveho displeje

--        f_A
--        --- 
--  f_F  |   |  f_B
--        ---    <- f_G
--  f_E  |   |  f_C
--        ---
--        f_D

--  A:      B:      C:      D:      E:      F:
--    ---             ---             ---     ---
--   |   |   |       |           |   |       |
--    ---     ---             ---     ---     ---
--   |   |   |   |   |       |   |   |       |
--            ---     ---     ---     ---

-- you can use the following operators:
-- ----------------------------------
-- | operator |   example           |
-- ----------------------------------
-- |    and   | a and b and c       |
-- |    or    | a or b or (c and d) |
-- |    not   | not a               |
-- ----------------------------------
-- There is no priority of operators. Be sure to use brackets!
-- example:
--   given: f(a, b, c) = a * #b * #c + a * b
--   in VHDL: f <= (a and (not b) and (not c)) or (a and b)

-- ve vyrazech pouzivejte nasledujici operatory:
-- ----------------------------------
-- | operator | priklad pouziti     |
-- ----------------------------------
-- |    and   | a and b and c       |
-- |    or    | a or b or (c and d) |
-- |    not   | not a               |
-- ----------------------------------
-- pouzivejte zavorky!
-- priklad:
--   zadani: f(a, b, c) = a * #b * #c + a * b
--   ve VHDL: f <= (a and (not b) and (not c)) or (a and b)

-- Add the respective excitation functions here.
-- The functions are negated here, because the display segments switch on with log. 0.
-- Example:
--  f_a <= (not(((not a) and b) or (b and (not c)) or ((not c) and d) or ((not b) and c and (not d))));

-- Doplnte predpripravene funkce pro buzeni dekoderu
-- Funkce jsou negovane, protoze jednotlive segmenty jsou aktivni v log. 0.
-- Napriklad:
--  f_a <= (not(((not a) and b) or (b and (not c)) or ((not c) and d) or ((not b) and c and (not d))));

    f_e <= (a and (not d)) or ((not b) and c and (not d)) or (a and (not b) and (not c));

end;
