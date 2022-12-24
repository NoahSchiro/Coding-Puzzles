import System.IO
import Data.List

solve :: String ->    --Input String 
         Int ->       --Index in the string
         [Char] ->    --Last characters we have seen so far
         Int          --Returns the index where message begins
solve str index seen
    | not $ check seen = index
    | otherwise  = solve (tail str) (index + 1) (head str : init seen) 
    where
        check seen = or $ map (\x -> (length x) > 1) $ group $ sort seen


main :: IO ()
main = do
    fd <- openFile "input.txt" ReadMode
    contents <- hGetContents fd
    print $ (solve (drop 14 contents) 14 (reverse $ take 14 contents))