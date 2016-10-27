-- Exercise#9
-- Using the five step process, construct the library functions that:
-- a. calculate the sum of a list of numbers.
-- b. take a given number of elements from the start of a list.
-- c. select the last element of a non-empty list.
-- Exercise on page#72: 6.8.9 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.


-- a. calculate the sum of a list of numbers.
sum1 :: Num a => [a] -> a
sum1 []     = 0
sum1 (x:xs) = x + sum1 xs

-- Sum of squares of elements of a list
-- sumsqr [1..10]
sumsqr :: Num a => [a] -> a
sumsqr []     = 0
sumsqr (x:xs) = x^2 + sumsqr xs


-- b. take a given number of elements from the start of a list.
-- Take n elements from a list
-- take1 3 [5..10]
take1 :: Int -> [a] -> [a]
take1 _ [] = []
take1 n (x:xs)  | n == 0    = []
                | otherwise = x : take1 (n-1) xs


-- c. select the last element of a non-empty list.
-- last of a list
-- last1 [11,14..30]
-- last1 "PrashanthB"
last1 :: [a] -> a
last1 [x] = x
last1 (_:xs) = last1 xs
