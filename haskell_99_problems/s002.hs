import System.Random
import Data.List
import Data.Ord(comparing)

--P21
insertAt :: a -> [a] -> Int -> [a]
insertAt insert xs pos = (take (pos-1) xs) ++ (insert : (drop (pos-1) xs))

--P22
range :: Int -> Int -> [Int]
range start stop = [start..stop]

--P23
rndSelect :: RandomGen g => g -> [a] -> Int -> [a]
rndSelect gen xs n = take n [ xs !! x | x <- randomRs (0, (length xs) - 1) gen]

--P24
--Draws n rangon numbers from the set 1..M
lottery :: RandomGen g => g -> Int -> Int -> [Int]
lottery gen n m = rndSelect gen [1..m] n

--P25
rndPerm :: RandomGen g => g -> [a] -> [a]
rndPerm gen lst = perm !! fst (randomR (0, (length perm)-1) gen)
    where perm = permutations lst

--P26
combinations :: Int -> [a] -> [[a]]
combinations 0 _  = [[]]
combinations n xs = [y:ys | y:xs' <- tails xs
                          , ys    <- combinations (n-1) xs']

--P27
--I don't want to do this problem

--P28
lengthSort :: [[a]] -> [[a]]
lengthSort = sortBy (comparing length)
