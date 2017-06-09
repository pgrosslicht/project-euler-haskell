module ProjectEuler.Problem003 (solution003) where

--The prime factors of 13195 are 5, 7, 13 and 29.
--What is the largest prime factor of the number 600851475143 ?
import Util

solution003 :: Integer
solution003 = last (primeFactors 600851475143)