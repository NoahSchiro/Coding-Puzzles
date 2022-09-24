-- A palindromic number reads the same both ways. The 
-- largest palindrome made from the product of two 
-- 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product 
-- of two 3-digit numbers.

module Main where

isPalindrome :: Int -> Bool 
isPalindrome ls = (reverse $ show ls) == (show ls)

getMax :: Int -> Int -> Int
getMax bound1 bound2 = foldl1 max [a * b | 
                                   a <- [bound1..bound2], 
                                   b <- [bound1..bound2], 
                                   isPalindrome(a * b)]

main = do print (getMax 100 999)