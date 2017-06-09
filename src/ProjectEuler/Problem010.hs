module ProjectEuler.Problem010 (solution010) where

-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

isPrime :: Integer -> Bool
isPrime 1       = False
isPrime 2       = True
isPrime k
    | even k    = False
    | otherwise = null [ x | x <- [2..isqrt k], k `mod` x  == 0]

isqrt :: Integer -> Integer
isqrt = floor . sqrt . fromIntegral

solution010 :: Integer
solution010 = sum [x | x <- [1, 3..1999999] ++ [2], isPrime x]
