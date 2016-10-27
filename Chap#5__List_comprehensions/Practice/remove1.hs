

remove1 :: Int -> [a] -> [a]
remove1 n xs = take n xs ++ drop n xs

remove2 :: Int -> [a] -> [a]
remove2 n xs = drop n xs ++ take n xs

remove3 :: Int -> [a] -> [a]
remove3 n xs = take (n+1) xs ++ drop n xs

remove4 :: Int -> [a] -> [a]
remove4 n xs = take n xs ++ drop (n+1) xs


remove1 0 xs
remove2 0 xs
remove3 0 xs
remove4 0 xs