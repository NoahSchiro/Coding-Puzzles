import Data.List(group)

--P31
isPrime :: Int -> Bool
isPrime num = foldl (&&) True [num `mod` x /= 0 | x <- [2..limit]]
    where limit = ceiling $ sqrt $ fromIntegral num

--P32
myGCD :: Int -> Int -> Int
myGCD a b
    | a == b    = a
    | a > b     = myGCD (a-b) b
    | otherwise = myGCD  a   (b-a)

--P33
coprime :: Int -> Int -> Bool
coprime a b = (myGCD a b) == 1

--P34
--Euler's totient function phi(m) is defined
--as the number of positive integers that are
--coprime to some number m
totient :: Int -> Int
totient m = length [x | x <- [1..m], coprime x m]

--P35
primeFactors :: Int -> [Int]
primeFactors num = map (head) $ group $ helper num 2 --This bit just removes duplicate entries
    where 
    helper num divisor
        | num `mod` divisor == 0 = divisor : helper (div num divisor) divisor
        | isPrime num            = [num]
        | otherwise              = helper num (divisor + 1)

--P36
primeFactorsList :: Int -> [(Int, Int)]
primeFactorsList num = [(head x, length x) | x <- group (helper num 2)]
    where 
    helper num divisor
        | num `mod` divisor == 0 = divisor : helper (div num divisor) divisor
        | isPrime num            = [num]
        | otherwise              = helper num (divisor + 1)

--P37
totientImproved :: Int -> Int
totientImproved m = product [f (fst x) (snd x) | x <- xs]
    where 
    xs = primeFactorsList m
    f a b = (a-1) * (a ^ (b-1)) :: Int

--P39
primeR :: Int -> Int -> [Int]
primeR begin end = [x | x <- [begin..end]
                      , isPrime x]

--P40
goldbach :: Int -> (Int, Int)
goldbach num = helper num (list) (reverse list)
    where
    list = primeR 2 num
    helper num p pr
        | (head p) + (head pr) == num = (head p, head pr)
        | (head p) + (head pr) >  num = helper num p (tail pr)
        | (head p) + (head pr) <  num = helper num (tail p) pr
        | otherwise = (0, 0)

--P41
goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList start stop = [goldbach x | x <- [start..stop]
                                      , x `mod` 2 == 0]
