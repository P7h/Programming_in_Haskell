-- Exercise#8
-- Using merge, define a function msort :: Ord a => [a] -> [a] that implements merge sort, in which the empty list and singleton lists are already sorted, and any other list is sorted by merging together the two lists that result from sorting the two halves of the list separately.
-- Hint: first define a function halve :: [a] -> ([a], [a]) that splits a list into two halves whose lenghts differ by at most one.
-- Exercise on page#72: 6.8.8 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.

merge :: Ord a => [a] -> [a] -> [a]
merge [] xs                    = xs
merge xs []                    = xs
merge (x:xs) (y:ys) | x < y    = x : merge xs (y:ys)
                    | x > y    = y : merge (x:xs) ys
                    | x == y   = x:y : merge xs ys


msort :: Ord a => [a] -> [a]
msort []    = []
msort [x]   = [x]
msort xs    = merge (msort ys) (msort zs)
                where (ys, zs) = halve xs


halve :: [a] -> ([a], [a])
halve xs = (take half xs, drop half xs)
            where half = length xs `div` 2