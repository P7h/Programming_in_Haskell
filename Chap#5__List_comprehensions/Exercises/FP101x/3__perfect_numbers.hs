-- Exercise#3
-- A positive integer is perfect if it equals the sum of its factors, excluding the number itself. Choose the correct definition of the function perfects :: Int -> [Int] that returns the list of all perfect numbers up to a given limit.
-- Note: factors is not a library function but is defined in the lecture.
--        > perfects 500
--          [6, 28, 496]
-- Prashanth Babu V V :: 07th Oct, 2016.

-- perfects 500
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], isPerfect x]
    where isPerfect num = sum (init (factors num)) == num

-- Does not work.
-- TODO need to investigate further after reading thru Pattern Matching.
display :: [Int] -> String
display (x:xs) | null xs = ""
               | otherwise = (show x) ++ "\t" ++ (display xs)
