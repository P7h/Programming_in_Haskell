-- Exercise#5
-- Using the recursive definitions given in this chapter, show how length [1,2,3], drop 3 [1,2,3,4,5], and init [1,2,3] are evaluated.
-- Exercise on page#71: 6.8.5 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.


-- Length of a list
-- length1 [1..4]
length1 :: Num a => [a] -> a
length1 []   = 0
length1 (_:xs) = 1 + length1 xs


-- Drop n elements from a list
-- drop1 3 [5..10]
drop1 :: Int -> [a] -> [a]
drop1 _ [] = []
drop1 0 xs = xs
drop1 n (_:xs) = drop1 (n-1) xs


-- init of a list
-- init1 [11,14..30]
-- init1 "PrashanthB"
init1 :: [a] -> [a]
init1 [] = []
init1 [_] = []
init1 (x:xs) = x : init1 xs
