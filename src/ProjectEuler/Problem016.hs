module ProjectEuler.Problem016 (solution016) where

import Data.Char

--2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

--What is the sum of the digits of the number 2^1000?

sumOfDigits :: Integer -> Integer
sumOfDigits = sum . map (toInteger . digitToInt) . show

solution016 :: Integer
solution016 = sumOfDigits (2^1000)