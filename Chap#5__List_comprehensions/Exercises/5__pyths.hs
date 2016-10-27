-- Exercise#5
-- A triple (x, y, z) of positive integers is Pythagorean if x^2+y^2=z^2. Using a list comprehension with threee generators, define a function  pyths :: Int -> [(Int, Int, Int)] that returns the list of all such triples whose components are at most a given limit. For example:
--      > pyths 10
--        [(3, 4, 5), (4, 3, 5), (6, 8, 10), (8, 6, 10)]
-- Exercise on page#57: 5.7.5 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.

-- pyths 10
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x,y,z) | x <- [1..n],
                     y <- [1..n],
                     z <- [1..n],
                     x^2 + y^2 == z^2]



-- To remove the occurences of (3, 4, 5) and also (4, 3, 5), get the sequence only once.
-- So, spruced up the guards.
-- pyths1 10
-- [(3, 4, 5), (6, 8, 10)]
pyths1 :: Int -> [(Int, Int, Int)]
pyths1 n = [(x,y,z) | x <- [1..n],
                     y <- [x..n],
                     z <- [y..n],
                     x^2 + y^2 == z^2]
