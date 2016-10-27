-- Exercise#2
-- Types of values. 
-- Definitions of the types. 
-- Write down definitions that have the following types; it does not matter what the definitions actually do as long as they are type corrrect.
-- Exercise on page#36: 3.11.2 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.

bools :: [Bool]                     -- [True, True, False]

nums :: [[Int]]                     -- [[1, 2], [3, 4, 5], [6], [7, 8, 9, 0]]

add :: Int -> Int ->  Int ->  Int   -- add x y z = x + y + z

copy :: a -> (a, a)                 -- copy a = (a, a)

apply :: (a -> b) -> a -> b         -- apply f x = x