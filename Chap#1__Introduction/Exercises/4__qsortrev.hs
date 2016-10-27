-- Exercise#4
-- Reverse sorted list of quicksort.
-- How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?
-- Exercise on page#13: 1.7.4 -- PIH, Second Edition.
-- Prashanth Babu V V :: 01st Oct, 2016.

qsortrev :: Ord a => [a] -> [a]
qsortrev [] = []
qsortrev (x:xs) = qsortrev larger ++ [x] ++ qsortrev smaller
                where
                    smaller = [a | a <- xs, a <= x]
                    larger = [b | b <- xs, b > x]
