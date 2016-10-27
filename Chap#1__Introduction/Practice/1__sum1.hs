-- Sum of numbers
-- Program on page#9
-- PIH, Second Edition
-- Prashanth Babu V V :: 01st Oct, 2016.
sum1 :: Num a => [a] -> a
sum1 []     = 0
sum1 (x:xs) = x + sum1 xs
