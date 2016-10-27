-- Exercise#5
-- Init of a list of numbers. 
-- The library function init removes the last element of a non-empty list; for example init [1,2,3,4,5] == [1,2,3,4]. Show how the function could similarly be defined in two different ways.
-- Exercise on page#21: 2.7.5 -- PIH, Second Edition.
-- Prashanth Babu V V :: 01st Oct, 2016.

-- xs = [1, 2, 3, 4, 5]

init11 :: Num a => [a] -> [a]
init11 xs = reverse (drop 1 (reverse xs))

init12 :: Num a => [a] -> [a]
init12 xs = reverse (tail (reverse xs))

init12 :: Num a => [a] -> [a]
init13 xs = take (length xs - 1) xs