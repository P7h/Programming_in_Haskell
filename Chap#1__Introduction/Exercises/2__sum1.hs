-- Exercise#2
-- Product of a list of numbers.
-- Show that sum[x] = x for any number x.
-- Exercise on page#13: 1.7.2 -- PIH, Second Edition.
-- Prashanth Babu V V :: 01st Oct, 2016.
sum1 :: Num a => [a] -> a
sum1 []     = 0
sum1 (x:xs) = x + sum1 xs
