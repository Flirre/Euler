{-

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

-}

-- mod [2..n-1] if any Trues, then it's not Prime.
--isPrime 1 = [False]
--isPrime 2 = [True]
isPrime n = map (n `mod` ) [2..n-1] -- plocka ut alla nollor och kolla efter tom lista [x | x <- [], htdt]
