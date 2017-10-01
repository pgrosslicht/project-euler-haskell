module Main where

import qualified Data.Map as M
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
import ProjectEuler.Problem017
import System.Environment (getArgs)
import System.Exit (exitSuccess)
import Util

solutions :: M.Map Integer Integer
solutions = M.fromList [
    (1, solution001),
    (2, solution002),
    (3, solution003),
    (10, solution010),
    (11, solution011),
    (12, solution012),
    (13, solution013),
    (14, solution014),
    (15, solution015),
    (16, solution016),
    (17, solution017)]

solution :: Integer -> Maybe Integer
solution number = M.lookup number solutions

main :: IO ()
main = do
    args <- getArgs
    case args of
        ["--help"] -> usage >> exitSuccess
        ["-h"] -> usage >> exitSuccess
        [number] -> case solution (read number :: Integer) of
            Just result -> time result >>= print
            Nothing -> putStrLn "There is no solution yet for this problem"
        _ -> usage >> exitSuccess
    where
        usage = putStrLn "Usage: cabal run problem [number]"