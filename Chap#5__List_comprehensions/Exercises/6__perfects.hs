-- Exercise#6
-- A positive integer is perfect if it equals the sum of all of its factors, excluding the number itself. Using a list comprehension and the function factors, define a function perfects :: Int -> [Int] that returns the list of all perfect numbers up to a given limit. For example:
--      > perfects 500
--        [6,28,496]
-- Exercise on page#57: 5.7.6 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

-- perfects 500
perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], x == sum (factors x)]

factors :: Int -> [Int]
factors n = [x | x <- [1..(n-1)], n `mod` x == 0]