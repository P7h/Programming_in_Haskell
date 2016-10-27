-- Exercise#4
-- Last of a list of numbers. 
-- The library function last selects the last element of a non-empty list; for example last [1,2,3,4,5] == 5. Show how the function last could be defined in terms of the other library functions introduced in this chapter. Can you think of another possible definition?
-- Exercise on page#21: 2.7.4 -- PIH, Second Edition.
-- Prashanth Babu V V :: 01st Oct, 2016.

-- xs = [1, 2, 3, 4, 5]

last11 :: Num a => [a] -> a
last11 xs = head (reverse xs)

last12 :: Num a => [a] -> a
last12 xs = head (drop (length xs -1 ) xs)

last13 :: Num a => [a] -> a
last13 xs = xs !! (length xs -1)
