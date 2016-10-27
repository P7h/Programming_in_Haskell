-- Exercise#3
-- Define the exponentiation operator ^ for non-negative integers using the same pattern of recursion as the multiplication operator *, and show how the expression 2 ^ 3 is evaluated using your definition.
-- Exercise on page#71: 6.8.3 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.

-- 2 ^ 3
import Prelude hiding ((^))

(^) :: Int -> Int -> Int
a ^ 0   = 1
a ^ b   = a * (a ^ (b-1))