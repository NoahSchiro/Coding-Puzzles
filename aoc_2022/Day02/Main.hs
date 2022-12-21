import System.IO

parse :: String -> [(Char, Char)]
parse input = [(first x, second x) | x <- lines input]
    where first x  = head x
          second x = head $ reverse x

outcome :: (Char, Char) -> Int
outcome (x, y)
    | x == 'A' && y == 'X' = 3 + 1
    | x == 'A' && y == 'Y' = 6 + 2
    | x == 'A' && y == 'Z' = 0 + 3
    | x == 'B' && y == 'X' = 0 + 1
    | x == 'B' && y == 'Y' = 3 + 2
    | x == 'B' && y == 'Z' = 6 + 3
    | x == 'C' && y == 'X' = 6 + 1
    | x == 'C' && y == 'Y' = 0 + 2
    | x == 'C' && y == 'Z' = 3 + 3

outcomep2 :: (Char, Char) -> Int
outcomep2 (x, y)
    | x == 'A' && y == 'X' = 0 + 3
    | x == 'A' && y == 'Y' = 3 + 1
    | x == 'A' && y == 'Z' = 6 + 2
    | x == 'B' && y == 'X' = 0 + 1
    | x == 'B' && y == 'Y' = 3 + 2
    | x == 'B' && y == 'Z' = 6 + 3
    | x == 'C' && y == 'X' = 0 + 2
    | x == 'C' && y == 'Y' = 3 + 3
    | x == 'C' && y == 'Z' = 6 + 1


main :: IO ()
main = do
    fd <- openFile "input.txt" ReadMode
    contents <- hGetContents fd
    let clean = parse contents
    print (sum $ map (outcomep2) clean)