import Test.QuickCheck

{-

A palindromic number reads the same both ways. The largest palindrome made from the product of
two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

-}


reverseInt :: Integer -> String
reverseInt x = reverse(show x)

isPalindrome x = show x == reverseInt x


prop_reverseint :: Integer -> Bool
prop_reverseint x = show (abs x) == reverse(reverseInt (abs x))

--threeDigitProducts :: [Int]
--threeDigitProducts = [100..999] * [100..999]
mul :: Integer -> [Integer] -> [Integer]
mul _ [] = []
mul x (y:ys) = (x*y) : mul x ys

--muls :: [Integer] -> [Integer] -> [Integer]
muls _ [] = []
--muls [x] [y] = [x*y]
muls (x:xs) (y) = (mul x y) : (muls xs y)
