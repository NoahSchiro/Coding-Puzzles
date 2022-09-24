-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

module Main where

newPrimeFactor :: Int -> Int -> Int
newPrimeFactor num divisor
   | num <= divisor              = divisor
   | (mod num divisor) == 0      = primeFactor (div num divisor) divisor
   | otherwise                   = primeFactor num (divisor + 1)

main = do print (newPrimeFactor 600851475143 2)