-- Exercise#5
-- And Conditions -- 2. 
-- Do the same for the following alternative definition, and note the difference in the number of conditional expressions that are required:
--      True && b = b
--      False && _ = False
--      Hint: use two nested conditional expressions.
-- Exercise on page#45: 4.8.4 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.


a && b = if a then b else if not a then False else False
