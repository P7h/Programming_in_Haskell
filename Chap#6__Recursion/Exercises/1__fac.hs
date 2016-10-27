-- Exercise#1
-- How does the recursive version of the factorial function behave if applied to a negative argument, such as (-1)? Modify the definition to prohibit negative arguments by adding a guard to the recursive case.
-- Exercise on page#71: 6.8.1 -- PIH, Second Edition.
-- Prashanth Babu V V :: 22nd Oct, 2016.

-- Factorial [tail recursion]
-- factorial 5
-- factorial (-1)
factorial :: Integer -> Integer
factorial n = tailrecFact n 1

tailrecFact :: Integer -> Integer -> Integer
tailrecFact n acc   | n == 1    = acc
                    | n > 1     = tailrecFact (n-1) (acc * n)