module ProjectEuler.Problem014 (solution014) where

-- The following iterative sequence is defined for the set of positive integers:
--
-- n → n/2 (n is even)
-- n → 3n + 1 (n is odd)
--
-- Using the rule above and starting with 13, we generate the following sequence:
--
-- 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
-- It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
--
-- Which starting number, under one million, produces the longest chain?
--
-- NOTE: Once the chain starts the terms are allowed to go above one million.


numOfCollatz :: Integer -> Integer
numOfCollatz 1 = 1
numOfCollatz n
    | even n = 1 + numOfCollatz (n `div` 2)
    | otherwise = 1 + numOfCollatz (3 * n + 1)

solution014 :: Integer
solution014 = (+ 1) . findIndexBy (>) $ map numOfCollatz [1..999999]

findIndexBy :: (Ord a) => (a -> a -> Bool) -> [a] -> Integer
findIndexBy _ [] = error "Util.findIndexBy: empty list"
findIndexBy comp (x:xs) = findIndexBy' xs x 1 0
    where
        findIndexBy' [] _ _ i = i
        findIndexBy' (y:ys) z yi zi = yi `seq` if comp y z
            then findIndexBy' ys y (yi + 1) yi
            else findIndexBy' ys z (yi + 1) zi
