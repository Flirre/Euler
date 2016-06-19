import Test.QuickCheck

reverseInt :: Int -> String
reverseInt x = reverse(show x)

isPalindrome x = show x == reverseInt x


prop_reverseint :: Int -> Bool
prop_reverseint x = show (abs x) == reverse(reverseInt (abs x))
