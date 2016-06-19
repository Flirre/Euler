{-

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

-}

-- mod [2..n-1] if any Trues, then it's not Prime.

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n | (isPrime' n) == [] = True
          | otherwise = False
isPrime' n =  [x | x <- map (n `mod` ) [2..n-1], x == 0]

isPrimes :: [Int] -> [(Int,Bool)]
isPrimes [x] = [(x, isPrime x)]
isPrimes (x:xs) = (x, isPrime x):isPrimes xs

-- Inga nollor i listan == primtal.
--[x | x <- [0..n], (n `mod` x == 0) && (isPrime n == True)] - plocka ut primtalsfaktorer och sist i listan är störst.

getPrimeFactors n = [x | x <- [1..n-1], (n `mod` x == 0), (isPrime x == True)]
getBiggestPrimeFactor n = last (getPrimeFactors n)
