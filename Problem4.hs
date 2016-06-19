import Test.QuickCheck
{-

A palindromic number reads the same both ways. The largest palindrome made from the product of
two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

-}


reverseInt :: Int -> String
reverseInt x = reverse(show x)

isPalindrome x = show x == reverseInt x


prop_reverseint :: Int -> Bool
prop_reverseint x = show (abs x) == reverse(reverseInt (abs x))
