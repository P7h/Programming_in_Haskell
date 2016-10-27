-- Exercise#7
-- Show how the list comprehension [(x,y) | x <- [1,2], y <- [3,4]] with two generators can be re-expressed using two comprehensions with single generators. Hint: nest one comprehension within the other and make use of the library function concat :: [[a]] -> [a].
-- Exercise on page#57: 5.7.7 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

concat [[(x,y) | y <- [3,4]] | x <- [1,2]] == [(x,y) | x <- [1,2], y <- [3,4]]
-- [(1,3),(1,4),(2,3),(2,4)]


-- The following gives the same output but order is different.
concat [[(x,y) | x <- [1,2]] | y <- [3,4]]
-- [(1,3),(2,3),(1,4),(2,4)]