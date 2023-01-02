{--
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 
10 terms. Although it has not been proved yet (Collatz Problem), it is thought 
that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
--}
module Main where

-- InputNumber -> Accumulator -> Result (when it reaches 1)
countSeq :: Int -> (Int, Int) -> (Int, Int)
countSeq n (org, acc)
    | n == 1 = (org, acc)
    | odd  n = countSeq ((3*n)+1) (org, (acc+1))
    | even n = countSeq (div n 2) (org, (acc+1))

countSeqHelper :: Int -> (Int, Int)
countSeqHelper input = countSeq input (input, 1)

solve :: Int -> (Int, Int) -> Int
solve input best
    | input == 1         = fst best
    | count > (snd best) = solve (input-1) ((num, count))
    | otherwise          = solve (input-1) best
    where (num, count) = countSeqHelper input

main :: IO ()
main = do 
    print (solve 1000000 (-1,-1)) 