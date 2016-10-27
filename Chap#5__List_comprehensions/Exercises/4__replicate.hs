-- Exercise#4
-- In a similar way to the function length, show how the library function replicate :: Int -> a -> [a] that produces a list of identical elements can be defined using a list comprehension. For example:
--      > replicate 3 True
--      [True, True, True]
-- Exercise on page#57: 5.7.4 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

myreplicate :: Int -> a -> [a]
myreplicate n x = [x | _ <- [1..n]]