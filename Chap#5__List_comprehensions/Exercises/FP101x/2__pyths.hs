-- Exercise#2
-- A triple (x, y, z) of positive integers is pythagorean if x^2+y^2=z^2. Choose the correct implementation for the function pyths :: Int -> [(Int, Int, Int)] that returns the list of all pythagorean triples whose components are at most a given limit.
--      > pyths 10
--        [(3, 4, 5), (4, 3, 5), (6, 8, 10), (8, 6, 10)]
-- Prashanth Babu V V :: 07th Oct, 2016.

-- pyths 10
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n],
                     y <- [1..n],
                     z <- [1..n],
                     x^2 + y^2 == z^2]



-- There is no point to get (3, 4, 5) and also (4, 3, 5)
-- So, spruced up guards.
-- pyths1 10
-- [(3, 4, 5), (6, 8, 10)]
pyths1 :: Int -> [(Int, Int, Int)]
pyths1 n = [(x,y,z) | x <- [1..n],
                     y <- [x..n],
                     z <- [y..n],
                     x^2 + y^2 == z^2]
