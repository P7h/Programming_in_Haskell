-- Chapter#6 on Recursion -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.

factorial1 :: Int -> Int
factorial1 n = product [1..n]


-- Factorial
factorial2 :: Integer -> Integer
factorial2 n | n == 1    = 1
             | otherwise = (*) n (factorial2 (n-1))


-- Factorial [tail recursion]
factorial :: Integer -> Integer
factorial n = tailrecFact n 1

tailrecFact :: Integer -> Integer -> Integer
tailrecFact n acc   | n == 1    = acc
                    | otherwise = tailrecFact (n-1) (acc * n)


-- Reverse factorial
-- reverseFactorial :: Integer -> String
-- reverseFactorial m = case (revFact m 2) of
--   Just value -> show value ++ "!"
--   Nothing    -> "NONE"


-- Reverse factorial
reverseFactorial :: Integer -> Maybe Integer
reverseFactorial m = revFact m 2

revFact :: Integer -> Integer -> Maybe Integer
revFact m n | rem m n /= 0  = Nothing
            | factor == 1   = Just m
            | otherwise     = revFact factor (n+1)
            where factor    = div m n


-- Recursion on lists

-- Product of a list
-- product1 [1..4]
product1 :: Num a => [a] -> a
product1 []   = 1
product1 (x:xs) = x * product1 xs


-- Sum of a list
-- sum1 [1..4]
sum1 :: Num a => [a] -> a
sum1 []   = 0
sum1 (x:xs) = x + sum1 xs


-- Length of a list
-- length1 [1..4]
length1 :: Num a => [a] -> a
length1 []   = 0
length1 (_:xs) = 1 + length1 xs


-- Reverse a list
-- reverse1 [1..4]
reverse1 :: [a] -> [a]
reverse1 []   = []
reverse1 (x:xs) = reverse1 xs ++ [x]


-- Insert an item to a sorted list
-- insert 15 [10,13..20]
insert :: Ord a => a -> [a] -> [a]
insert x []   = [x]
insert x (y:ys) | x <= y = x : y : ys
                | otherwise = y : insert x ys


-- Insertion sort
-- insertsort [22, 15, 43, 17, 99, 99, 2]
insertsort :: Ord a => [a] -> [a]
insertsort []   = []
insertsort (y:ys) = insert y (insertsort ys)


-- Zip 2 lists
-- zip1 [1..4] [6..15]
zip1 :: [a] -> [b] -> [(a,b)]
zip1 [] _ = []
zip1 _ [] = []
zip1 (x:xs) (y:ys) = (x,y) : zip1 xs ys


-- Drop n elements from a list
-- drop1 3 [5..10]
drop1 :: Int -> [a] -> [a]
drop1 _ [] = []
drop1 0 xs = xs
drop1 n (_:xs) = drop1 (n-1) xs


-- Take n elements from a list
-- take1 3 [5..10]
take1 :: Int -> [a] -> [a]
take1 _ [] = []
take1 0 xs = []
take1 n (x:xs) = x : take1 (n-1) xs


-- Fibonacci numbers
fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

allfibs :: Int -> [Int]
allfibs 0 = []
allfibs n = fib n : allfibs (n-1)


-- Quick sort
-- qsort [22, 15, 43, 17, 99, 99, 2]
qsort :: Ord a => [a] -> [a]
qsort [] = []
-- qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller --reverse sorting the list
               where
                    smaller = [y | y <- xs, y < x]
                    larger = [z | z <- xs, z > x]


-- Even or Odd
even1 :: Int -> Bool
even1 0 = True
even1 n = odd1 (n-1)

odd1 :: Int -> Bool
odd1 0 = False
odd1 n = even1 (n-1)


-- Find all elements at the even indices in the list
-- evens [0..10]
evens :: [a] -> [a]
evens [] = []
evens (x:xs) = x : odds xs


-- Find all elements at the odd indices in the list
-- odds [0..10]
odds :: [a] -> [a]
odds [] = []
odds (_:xs) = evens xs


-- Find all evens in a list
-- evenlist  [11,14..30]
evenlist :: [Int] -> [Int]
evenlist xs = [x | x <- xs, even1 x]


-- Find all odds in a list
-- oddlist [11,14..30]
oddlist :: [Int] -> [Int]
oddlist xs = [x | x <- xs, odd1 x]


-- init of a list
-- init1 [11,14..30]
-- init1 "PrashanthB"
init1 :: [a] -> [a]
init1 [] = []
init1 [_] = []
init1 (x:xs) = x : init1 xs


-- tail of a list
-- tail1 [11,14..30]
-- tail1 "PrashanthB"
tail1 :: [a] -> [a]
tail1 (_:xs) = xs


-- head of a list
-- head1 [11,14..30]
-- head1 "PrashanthB"
head1 :: [a] -> a
head1 (x:_) = x


-- last of a list
-- last1 [11,14..30]
-- last1 "PrashanthB"
last1 :: [a] -> a
last1 [x] = x
last1 (_:xs) = last1 xs


-- Sum of squares of elements of a list
-- sumsqr [1..10]
sumsqr :: Num a => [a] -> a
sumsqr []     = 0
sumsqr (x:xs) = x^2 + sumsqr xs
