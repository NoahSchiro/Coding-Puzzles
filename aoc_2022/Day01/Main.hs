import System.IO
import Data.List(sort)

parse :: String -> [Int]
parse input = map func $ lines input
    where func input
            | input == "" = -1
            | otherwise   = read input

group :: [Int] -> [[Int]] -> [Int] -> [[Int]]
group input acc curr
    | input == []        = acc
    | head input == (-1) = group (tail input) (curr : acc) []
    | otherwise          = group (tail input) acc          (head input : curr) 

solve :: [[Int]] -> Int
solve input = maximum $ map (sum) input

solvep2 :: [[Int]] -> Int
solvep2 input = sum bestThree
    where bestThree = take 3 $ reverse $ sort $ map (sum) input

main :: IO()
main = do
    fd <- openFile "input.txt" ReadMode
    contents <- hGetContents fd
    let clean = group (parse contents) [] []
    print (solvep2 clean)
