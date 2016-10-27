-- Exercise#3
-- safetail. 
-- Consider a function safetail :: [a: -> [a] that behaves in the same way as tail except that it maps the empty list to itself rather than producing error. Using tail and the function null :: [a] -> Bool that decides if a list is empty or not, define safetail using:
--      a. a conditional expression;
--      b. guarded equations;
--      c. pattern matching.
-- Exercise on page#45: 4.8.3 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.


-- xs = [1, 2, 3, 4, 5, 6]

safetail :: Ord a => [a] -> [a]
safetail xs = if null xs then [] else tail xs 


safetail1 :: Ord a => [a] -> [a]
safetail1 xs | null xs = []
            | otherwise = tail xs

safetail2 :: Ord a => [a] -> [a]
safetail2 [] = []
safetail2 (_ : xs) = xs