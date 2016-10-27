-- Exercise#1
-- Split a list. 
-- Using library functions, define a function halve :: [a] -> ([a], [a]) that splis an even-lengthed list into two halves. For example: 
--      > halve [1, 2, 3, 4, 5, 6]
--      ([1, 2, 3], [4, 5, 6])
-- Exercise on page#45: 4.8.1 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.


-- xs = [1, 2, 3, 4, 5, 6]

halve :: Num a => [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs 


halve1 :: Num a => [a] -> ([a], [a])
halve1 xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)

halve2 :: Num a => [a] -> ([a], [a])
halve2 xs = (take n xs, drop n xs)
            where 
                n = length xs `div` 2