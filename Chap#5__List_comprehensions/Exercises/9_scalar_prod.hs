-- Exercise#9
-- The scalar product of two lists of integers xs and ys of length n is given by the sum of the products of corresponding integers:
--              (n-1) Sigma where i = 0 (xsi * ysi)
-- In a similar manner to chisqr, show how a list comprehension can be used to define function scalarproduct :: [Int] -> [Int] -> Int that returns the scalar product of two lists. For example:
--              scalarproduct [1,2,3] [4,5,6]
--              32
-- Exercise on page#58: 5.7.9 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum[x*y | (x, i) <- zip xs [0..], (y, j) <- zip ys [0..],  i == j]