-- Exercise#1
-- The library function replicate :: Int -> a -> [a] produces a list of identical elements. Choose one possible implementation for this function. For example:
--      > replicate 3 True
--        [True, True, True]
-- Prashanth Babu V V :: 07th Oct, 2016.

-- replicate1 3 True

replicate1 :: Int -> a -> [a]
replicate1 n a = [a | _ <- [1..n]]


-- Does not work. 
-- TODO need to investigate further after reading thru Pattern Matching.
replicate1 :: Int -> a -> [a]
replicate1 n a | 0 _ = []
               | otherwise = a : (replicate1 (n-1) a)