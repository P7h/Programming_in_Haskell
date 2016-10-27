-- Exercise#6
-- Without looking at the definitions from the standard prelude, define the following library functions on lists using recursion.
-- a. Decide if all logical values in a list are False.
--      and :: [Bool] -> Bool
-- b. Concatenate a list of lists.
--      concat :: [[a]] -> a
-- c. Produce a list with n identical elements.
--      replicate :: Int -> a -> [a]
-- d. Select the nth element of a list.
--      (!!) :: [a] -> Int -> a
-- e. Decide if a value is an element of a list
--      elem :: Eq a => a -> [a] -> Bool
-- Note: most of these functions are defined in the prelude using other library functions rather than using explicit recursion, and are generic functions rather than being specific to the type of lists.
-- Exercise on page#72: 6.8.6 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.

import Prelude hiding ((!!))


-- a. Decide if all logical values in a list are True.
myand1 :: [Bool] -> Bool
myand1 (x:xs) | length (x:xs) == 0      = True
              | length (x:xs) == 1 && x = True
              | not x                   = False
              | x                       = myand1 xs

myand2 :: [Bool] -> Bool
myand2 []        = True
myand2 (False:_) = False
myand2 (True:xs) = myand2 xs

myand3 :: [Bool] -> Bool
myand3 []        = True
myand3 (x:xs)   | b         = myand3 bs
                | otherwise = False


-- b. Concatenate a list of lists.
myconcat :: [[a]] -> a
-- myconcat (xs : xss) | length (xs:xss) == 0 = []
--                   | otherwise            = xs ++ myconcat xss
myconcat [] = []
myconcat (xs : xss) = xs ++ myconcat xss


-- c. Produce a list with n identical elements.
-- myreplicate :: Int -> a -> [a]
-- myreplicate n x = [x | _ <- [1..n]]
myreplicate :: Int -> a -> [a]
-- myreplicate 1 x = [x]
-- myreplicate n x = x : myreplicate (n-1) x
myreplicate n x | n == 0    = []
                | otherwise = x : myreplicate (n-1) x


-- d. Select the nth element of a list.
(!!) :: [a] -> Int -> a
-- (x:_) !! 0  = x
-- (_:xs) !! n = xs !! (n-1)
(x:xs) !! n | n == 0    = x
            | otherwise = xs !! (n-1)


-- e. Decide if a value is an element of a list
myelem :: Eq a => a -> [a] -> Bool
myelem _ []                     = False
myelem a (x:xs)  | x == a       = True
                 | otherwise    = myelem a xs
