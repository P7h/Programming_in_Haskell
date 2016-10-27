-- Quicksort of numbers
-- Program on page#10 -- PIH, Second Edition
-- Prashanth Babu V V :: 01st Oct, 2016.
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                where
                    smaller = [a | a <- xs, a <= x]
                    larger = [b | b <- xs, b > x]
