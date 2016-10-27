-- Exercise#1
-- Using a list comprehension, give an expression that calculates the sum 1^2+2^2+...100^2 of the first one hundred integer squares.
-- Exercise on page#57: 5.7.1 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

sumsqr :: Int -> Int
sumsqr n = sum [x^2 | x <- [1..n]]

sumsqr1 :: Int -> Int
sumsqr1 n | n == 1 = 1
          | otherwise = n^2 + sumsqr1 (n-1)