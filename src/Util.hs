{-# LANGUAGE OverloadedStrings #-}

module Util where

import Formatting
import Formatting.Clock
import System.Clock

primes = 2 : filter (null . tail . primeFactors) [3,5..]

primeFactors n = factor n primes
  where
    factor n (p:ps)
      | p*p > n        = [n]
      | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
      | otherwise      =     factor n ps

time :: a -> IO a
time x = do
    start <- getTime Monotonic
    end <- x `seq` getTime Monotonic
    Formatting.fprint (timeSpecs Formatting.% "\n") start end
    return x