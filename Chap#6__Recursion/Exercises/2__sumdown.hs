-- Exercise#2
-- Define a recursive function sumdown :: Int -> Int that reutrns the sum of the non-negative integrers from a given value down to zero. For example, sumdown 3 should return the result 3+2+1+0 = 6.
-- Exercise on page#71: 6.8.2 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.

-- sumdown 3
sumdown :: Int -> Int
sumdown 1 = 1
sumdown n = n + sumdown (n-1)