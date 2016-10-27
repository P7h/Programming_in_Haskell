-- Exercise#3
-- Using a list comprehension and the function grid above, define a function square :: Int -> [(Int, Int)] that returns a coordinate square of size n, excluding the digonal form (0,0) to (n,n). For example
--      > grid_ex_diagonal 2
--      [(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]
-- Exercise on page#57: 5.7.3 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

grid_ex_diagonal :: Int -> [(Int, Int)]
grid_ex_diagonal m = [(x, y) | x <- [0..m],
                     y <- [0..m], x /= y]