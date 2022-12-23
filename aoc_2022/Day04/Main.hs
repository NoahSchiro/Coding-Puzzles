import System.IO

parse :: String -> [((Int, Int), (Int, Int))]
parse input = map (\(x,y) -> (splitOnDash x, splitOnDash y)) $ map (\x -> (firstHalf x, secondHalf x)) $ lines input
    where

        splitOnDash :: String -> (Int, Int)
        splitOnDash input = (read $ takeWhile ('-'/=) input, read $ tail $ dropWhile ('-'/=) input)

        secondHalf :: String -> String
        secondHalf s = tail $ dropWhile (','/=) s

        firstHalf :: String -> String
        firstHalf = takeWhile (','/=) 
        
        split :: [String]
        split = lines input

solve :: ((Int, Int), (Int, Int)) -> Int
solve ((a,b),(c,d))
    | a >= c && a <= d && b >= c && b <= d = 1
    | c >= a && c <= b && d >= a && d <= b = 1
    | otherwise                            = 0

solvep2 :: ((Int, Int), (Int, Int)) -> Int
solvep2 ((a,b),(c,d))
    | a >= c && a <= d || b >= c && b <= d = 1
    | c >= a && c <= b || d >= a && d <= b = 1
    | otherwise                            = 0

main :: IO ()
main = do
    fd <- openFile "input.txt" ReadMode
    contents <- hGetContents fd
    print $ sum $ map (solvep2) (parse contents)