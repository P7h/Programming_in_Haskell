-- Exercise#3
-- Types of Functions. 
-- What are the types of the following functions?
-- Exercise on page#37: 3.11.3 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.

second xs = head (tail xs)          -- second :: [a] -> a

swap (x, y) = (y, x)                -- swap :: (a, b) = (b, a) -- PB wrong
                                    -- swap :: (t1, t) -> (t, t1)

pair x y = (x, y)                   -- pair :: (a, b) = (a, b) -- PB wrong
                                    -- pair :: t -> t1 -> (t, t1)

double x = x * 2                    -- double :: a -> a
                                    -- double :: Num a => a -> a

palindrome xs = reverse xs == xs    -- palindrome :: [a] -> Bool
                                    -- palindrome :: Eq a => [a] -> Bool

twice f x = f (f x)                 -- twice :: (x -> x) -> x -- PB wrong
                                    -- twice :: (t -> t) -> t -> t