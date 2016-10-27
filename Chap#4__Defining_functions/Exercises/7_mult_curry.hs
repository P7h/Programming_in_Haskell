-- Exercise#7
-- Curried function. 
-- Show how the meaning of the following curried function definition can be formalised in terms of lambda expressions:
--      mult :: Int -> Int -> Int -> Int
--      mult x y z = x * y * z
-- Exercise on page#46: 4.8.7 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.


mult = (\ x -> (\ y -> (\ z -> (x * y * z))))