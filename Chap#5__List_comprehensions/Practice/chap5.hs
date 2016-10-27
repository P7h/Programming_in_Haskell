
concat1 :: [[a]] -> [a]
concat1 xss = [x | xs <- xss, x <- xs]

firsts :: [(a,b)] -> [a]
firsts ps = [x | (x,_) <- ps]

seconds :: [(a,b)] -> [b]
seconds ps = [y | (_,y) <- ps]

length1 :: [a] -> Int
length1 xs = sum [1 | _ <- xs]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = [1,n] == factors n

primestill :: Int -> [Int]
primestill n = [x | x <- [1..n], prime x]

find :: Eq a => a -> [(a,b)] -> [b]
find c xs = [y | (x, y) <- xs, c == x]

positions :: Eq a => a -> [a] -> [Int]
-- positions x xs = [i | (x', i) <- zip xs [0..], x == x']
positions x xs = find x (zip xs [0..])