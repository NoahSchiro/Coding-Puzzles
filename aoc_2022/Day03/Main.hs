import System.IO

parse :: String -> [(String, String)]
parse input = [(take (half x) x, drop (half x) x) | x <- lines input]
    where half x = div (length x) 2

priority :: Char -> Int
priority x
    | x == 'a' = 1
    | x == 'b' = 2
    | x == 'c' = 3
    | x == 'd' = 4
    | x == 'e' = 5
    | x == 'f' = 6
    | x == 'g' = 7
    | x == 'h' = 8
    | x == 'i' = 9
    | x == 'j' = 10 
    | x == 'k' = 11
    | x == 'l' = 12
    | x == 'm' = 13
    | x == 'n' = 14
    | x == 'o' = 15
    | x == 'p' = 16
    | x == 'q' = 17
    | x == 'r' = 18
    | x == 's' = 19
    | x == 't' = 20
    | x == 'u' = 21
    | x == 'v' = 22
    | x == 'w' = 23
    | x == 'x' = 24
    | x == 'y' = 25
    | x == 'z' = 26
    | x == 'A' = 27
    | x == 'B' = 28
    | x == 'C' = 29
    | x == 'D' = 30
    | x == 'E' = 31
    | x == 'F' = 32
    | x == 'G' = 33
    | x == 'H' = 34
    | x == 'I' = 35
    | x == 'J' = 36
    | x == 'K' = 37
    | x == 'L' = 38
    | x == 'M' = 39
    | x == 'N' = 40
    | x == 'O' = 41
    | x == 'P' = 42
    | x == 'Q' = 43
    | x == 'R' = 44
    | x == 'S' = 45
    | x == 'T' = 46
    | x == 'U' = 47
    | x == 'V' = 48
    | x == 'W' = 49
    | x == 'X' = 50
    | x == 'Y' = 51
    | x == 'Z' = 52

solve :: [(String, String)] -> Int
solve input = sum $ map (priority) $ map (solve1) input
    where
    solve1 :: (String, String) -> Char
    solve1 (xs,ys) = head [x | x <- xs, y <- ys, x == y]

main :: IO ()
main = do
    fd <- openFile "input.txt" ReadMode
    contents <- hGetContents fd
    print (solve (parse contents))