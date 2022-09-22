-- A palindromic number reads the same both ways. The 
-- largest palindrome made from the product of two 
-- 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product 
-- of two 3-digit numbers.

module Main where

isPalindrome :: [Char] -> Bool 
isPalindrome ls = ((reverse ls) == ls)

-- Does the same thing as above but converts to string
palindromeNum :: Int -> Bool
palindromeNum num = isPalindrome (show num)

getMax :: Int -> Int -> Int
getMax bound1 bound2 = foldl1 max [a * b | a <- [bound1..bound2], b <- [bound1..bound2], palindromeNum(a * b)]

main = do print (getMax 100 999)