-- Exercise#8
-- Redefine the function positions using the function find.
-- Exercise on page#58: 5.7.8 -- PIH, Second Edition.
-- Prashanth Babu V V :: 20th Oct, 2016.

positions :: Eq a => a -> [a] -> [Int]
-- positions x xs = [i | (x', i) <- zip xs [0..], x == x']
positions x xs = find x (zip xs [0..])

find :: Eq a => a -> [(a,b)] -> [b]
find c xs = [y | (x, y) <- xs, c == x]
