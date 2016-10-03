module Main where

import Control.Applicative
import Control.Monad
import System.IO
import Data.List
import Debug.Trace

main :: IO ()
main = do
    t_temp <- getLine
    let t = read $ t_temp :: Int
    output_temp <- solve t
    let output = output_temp
    print $ output

solve :: Int -> IO [String]
solve t
    | t <= 0 = return []
    | otherwise = do
        n_m_temp <- getLine
        let n_m = words n_m_temp
        let n = read $ n_m!!0 :: Int
        let m = read $ n_m!!1 :: Int
        matrix_temp <- getMultipleLines n
        let matrix = matrix_temp
        return matrix

getMultipleLines :: Int -> IO [String]
getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret
