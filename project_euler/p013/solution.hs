{--
Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

(see data.txt)
--}

module Main where

import System.IO

parse :: String -> [Integer]
parse input = map (read) (lines input)


main :: IO ()
main = do
    fd <- openFile "data.txt" ReadMode
    contents <- hGetContents fd
    print (sum (parse contents))
