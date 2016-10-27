-- Exercise#5
-- And Conditions. 
-- Without using any other library funbctions or operators, show how the meaning of the following pattern matching definition for logical conjunction && can be formalised using conditional expressions:
--      True && True = True
--      _ && _ = False
--      Hint: use two nested conditional expressions.
-- Exercise on page#45: 4.8.4 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.


a && b = if a then if b then True else False else False

if a then b else False

if b then a else False