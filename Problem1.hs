35sum ::  Int
35sum = isum [x | x <- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0]
  where isum [] = 0
        isum [x] = x
        isum (x:xs) = x + sum xs
