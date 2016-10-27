-- Exercise#4
-- Or table. 
-- In a similiar way to && in section 4.4, show how the disjunction operator || can be defined in four different ways using pattern matching.
-- Exercise on page#45: 4.8.4 -- PIH, Second Edition.
-- Prashanth Babu V V :: 02nd Oct, 2016.


False || False = False
_ || _ = True

False || b = b
_ || _ = True

False || False = False
False || True = True
True || False = True
True || True = True

a || b  | (a == b) = a
        | otherwise True