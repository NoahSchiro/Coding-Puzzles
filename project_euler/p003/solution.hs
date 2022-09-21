-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

module Main where

primeFactor :: Int -> Int -> Int
primeFactor num divisor = 

   -- Base case is we reach a small number
   if num <= divisor then divisor else

   -- If it is divisible
   if ((mod num divisor) == 0) then
      
      primeFactor (div num divisor) divisor -- Divide and recurse

   else -- If it is not divisible then increment divisor 
      primeFactor num (divisor + 1)

main = do print (primeFactor 600851475143 2)