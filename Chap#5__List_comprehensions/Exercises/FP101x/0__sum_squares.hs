-- Exercise#0
-- Which of these expressions calculates the sum: 1^2+2^2+...+100^2 of the first one hundred integer squares?.
-- Prashanth Babu V V :: 07th Oct, 2016.

-- sum100 100

sum100 :: Int -> Int
sum100 n = sum [x ^ 2 | x <- [1..n]]


sum1001 :: Int -> Int
sum1001 n = foldl (+) (0) [x ^ 2 | x <- [1..n]]
