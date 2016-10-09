module Main where

import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    a <- getLine
    b <- getLine
    print $ a

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret
