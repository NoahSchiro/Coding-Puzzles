-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

module Main where

findDivisors :: Int -> Int
findDivisors n = foldl1 lcm [1..n]

main = print (findDivisors 20)