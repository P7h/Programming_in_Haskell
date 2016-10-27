-- Exercise#2
-- Return third element in a list. 
-- Define a function third :: [a] -> a that returns the third element in a list that contains at leasty this many leements using:
--      a. head and tail;
--      b. list indexing !!;
--      c. pattern matching.
-- Exercise on page#45: 4.8.2 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.


-- xs = [1, 2, 3, 4, 5, 6]

third :: Ord a => [a] -> a
third xs = head (tail (tail xs)) 


third1 :: Ord a => [a] -> a
third1 xs = xs !! 2

third2 :: Ord a => [a] -> a
third2 (_ : _ : x : _) = x