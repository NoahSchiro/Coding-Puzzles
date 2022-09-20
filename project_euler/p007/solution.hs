-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10001st prime number?

-- Primes will be a list of integers
primes :: [Integer]

-- The prime list is a list starting at 2 which has the siece applied to it
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]


main = do print (primes !! 10001)