import System.Random

--P21
insertAt :: a -> [a] -> Int -> [a]
insertAt insert xs pos = (take (pos-1) xs) ++ (insert : (drop (pos-1) xs))

--P22
range :: Int -> Int -> [Int]
range start stop = [start..stop]

--P23
rndSelect :: [a] -> Int -> IO [a]
rndSelect xs n = do
    gen <- getStdGen
    return $ take n [ xs !! x | x <- randomRs (0, (length xs) - 1) gen]

--P24
lottery :: Int -> Int -> [Int]
lottery m n = do
    gen <- getStdGen
    return $ take n [[1..m] !! x | x <- randomRs(1, m) gen]