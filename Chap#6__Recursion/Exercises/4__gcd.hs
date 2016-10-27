-- Exercise#4
-- Define a recursive function euclid :: Int -> Int -> Int that implements Euclid's algorithm for calculating the greatest commond divisor of two non-negative integers: if the two numbers are equal, this number is the result; otherwise the smaller number is subtracted from the larger, and the same process is then repated. For example:
--      > euclid 6 27
--      3
-- Exercise on page#71: 6.8.4 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.

-- euclid 6 27
euclid :: Int -> Int -> Int
euclid a b  | a == b    = a
            | a > b     = euclid (a-b) b
            | otherwise = euclid a (b-a)