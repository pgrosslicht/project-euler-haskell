module ProjectEuler.Problem017 (solution017, numberToString) where
import Data.Char

solution017 :: Integer
solution017 = toInteger . length . concatMap numberToString $ [1..1000]

ones :: [String]
ones = ["one",   "two",  "three", "four",   "five",   "six",
        "seven", "eight", "nine", "ten",   "eleven", "twelve", "thirteen",
        "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

tens :: [String]
tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

numberToString :: Int -> String
numberToString x
  | x == 0 = []
  | x < 20 = ones !! (x - 1)
  | x >= 20 && x < 100 =
    tens !! (firstDigit x - 2) ++ numberToString (x - firstDigit x * 10)
  | x < 1000 && x `mod` 100 == 0 =
    ones !! (firstDigit x - 1) ++ "hundred"
  | x > 100 && x <= 999 =
    ones !! (firstDigit x - 1) ++ "hundredand" ++ numberToString (x - firstDigit x * 100)
  | x >= 1000 && x < 10000 && x `mod` 1000 == 0 =
    ones !! (firstDigit x - 1) ++ "thousand"
    where firstDigit = digitToInt . head . show
