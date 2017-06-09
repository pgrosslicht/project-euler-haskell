module TestProblems (testProblems) where

import ProjectEuler.Problem001
import ProjectEuler.Problem002
import ProjectEuler.Problem003
import ProjectEuler.Problem010
import ProjectEuler.Problem011
import ProjectEuler.Problem012
import ProjectEuler.Problem013
import ProjectEuler.Problem014
import ProjectEuler.Problem015
import ProjectEuler.Problem016
import Test.HUnit
import Util

testProblems :: Test
testProblems = "Problems" ~: fmap testProblem [
    (solution001, 233168),
    (solution002, 4613732),
    (solution003, 6857),
    (solution010, 142913828922),
    (solution011, 70600674),
    (solution012, 76576500),
    (solution013, 5537376230),
    (solution014, 837799),
    (solution015, 137846528820),
    (solution016, 1366)]

testProblem :: (Show a, Eq a) => (a, a) -> IO Assertion
testProblem (actual, expected) = return $ time actual >>= (@=? expected)