-- https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems
import Data.Bool
import Data.Typeable
import Data.List

--P1 (i'm guessing I am not allowed to use last)
myLast :: [a] -> a
myLast xs = head $ reverse xs

--P2
myButLast :: [a] -> a
myButLast xs = head $ tail $ reverse xs

--P3
elementAt :: [a] -> Int -> a
elementAt xs index = xs !! (index - 1)

--P4
myLength :: [a] -> Int
myLength xs = length xs

--P5
myReverse :: [a] -> [a]
myReverse xs = reverse xs

--P6
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = ((reverse xs) == xs)

--P7 (non functional)
data NestedList a = Elem a | List [NestedList a]
myFlatten :: NestedList a -> [a]
myFlatten (Elem x) = [x]
myFlatten (List xs) = concatMap myFlatten xs 

--P8
compress :: Eq a => [a] -> [a]
compress xs = map head $ group xs

--P9
pack :: Eq a => [a] -> [[a]]
pack xs = group xs

--P10
encode :: Eq a => [a] -> [(Int, a)]
encode xs = [(length x, head x) | x <- group xs]