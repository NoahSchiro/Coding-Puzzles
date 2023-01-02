import System.IO


main :: IO ()
main = do
    fd <- openFile "input.txt" ReadMode
    contents <- hGetContents fd
    print "parse contents"