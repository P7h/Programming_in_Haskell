-- Exercise#2
-- Suppose that a coordinate grid of size m x n is given by the list of all pairs (x,y) of integers such that 0 <= x <= m, 0 <= y <= n. Using a list comprehension, define a function grid :: Int -> Int -> [(Int, Int)] that returns a coordinate grid of a given size. For example:
--      > grid 1 2
--      [(0,0),(0,1),(0,2),(1,0),(1,1),(1,2)]
-- Exercise on page#57: 5.7.2 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

grid :: Int -> Int -> [(Int, Int)]
grid m n = [(x, y) | x <- [0..m],
                     y <- [0..n]]