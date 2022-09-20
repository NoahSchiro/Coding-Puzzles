-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000. 

module Main where

-- Reads as the sum of numbers between one and a 1000 that are dividible by 3 and 5
list :: Int
list = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

main = do print list