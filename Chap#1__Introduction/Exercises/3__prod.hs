-- Exercise#3
-- Product of a list of numbers.
-- Define a function product that produces the product of a list of numbers, and show using your definition that product [2,3,4] == 24.
-- Exercise on page#13: 1.7.3 -- PIH, Second Edition.
-- Prashanth Babu V V :: 01st Oct, 2016.

prod :: Num a => [a] -> a
prod []     = 1
prod (x:xs) = x * prod xs
