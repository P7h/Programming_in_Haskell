-- Exercise#5
-- Quicksort of numbers.
-- What would be the effect of replacing <= by < in the original definition of qsort? Hint: consider the example qsort1 [2,2,3,1,1].
-- Exercise on page#13: 1.7.5 -- PIH, Second Edition.
-- Prashanth Babu V V :: 01st Oct, 2016.

qsort1 :: Ord a => [a] -> [a]
qsort1 [] = []
qsort1 (x:xs) = qsort1 smaller ++ [x] ++ qsort1 larger
                where
                    smaller = [a | a <- xs, a < x]
                    larger = [b | b <- xs, b > x]

-- qsort1 [2,2,3,1,1] == [1,2,3]
