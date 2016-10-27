-- Exercise#8
-- Luhn algorithm. 
-- The Luhn algorithm is used to check bank card numbers for simple errors such as mistyping a digit, and proceeds as follows:
--      * consider each digit as a separate number;
--      * moving left, double every other number from the second last;
--      * subtract 9 from each number that is now greater than 9;
--      * add all the resulting numbers together;
--      * if the total is divisible by 10, the card number is valid.
--      Define a function luhnDouble :: Int -> Int that doubles a digit and subtracts 9 if the result is greater than 9. For example:
--          > luhnDouble 3
--          6
--          > luhnDouble 6
--          3
--      Using luhnDouble and the integer remainder function mod, define a function luhn :: Int -> Int -> Int -> Int -> Bool that decides if a four-digit bank card number is valid. For example:
--          > luhn 1 7 8 4
--          True
--          > luhn 4 7 8 3
--          False
--      In the exercises for chapter 7 we will consider a more general version of this function that accepts card numbers of any length.
-- Exercise on page#46: 4.8.8 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.

luhnDouble :: Int -> Int
luhnDouble x = if (n > 9) then (n-9) else n
                where n = x * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = if (n `mod` 10 == 0) then True else False
                where n = (luhnDouble a + b + luhnDouble c + d)

luhn1 :: Int -> Int -> Int -> Int -> Bool
luhn1 a b c d   | ((luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0) = True
                | otherwise = False


-- Does not work. 
-- TODO need to investigate further after reading thru Pattern Matching.
luhn2 :: Int -> Int -> Int -> Int -> Bool
luhn2 a b c d   | (n `mod` 10 == 0) = True where n = (luhnDouble a + b + luhnDouble c + d)
                | otherwise = False 