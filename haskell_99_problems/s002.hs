import Data.List

--P11
-- Define an encoding as a tuple
encodeModified :: Eq a => [a] -> [(Int, a)]  
encodeModified xs = [(length x, head x) | x <- (group xs)]

--P12
decodeModified :: [(Int, a)] -> [a]
decodeModified [] = []
decodeModified xs = take (fst expand) (repeat $ snd expand) ++ decodeModified (tail xs)
    where
        expand = head xs

--P13 is effectively the same as P11

--P14
duplicate :: [a] -> [a]
duplicate [] = []
duplicate xs = head xs : head xs : (duplicate (tail xs))

--P15
repli :: [a] -> Int -> [a]
repli xs n = concatMap (replicate n) xs

--P16
dropEvery :: [a] -> Int -> [a]
dropEvery xs every = p15helper xs every 1

p15helper :: [a] -> Int -> Int -> [a]
p15helper [] _ _ = []
p15helper xs every count
    --If it's an element to remove, then return the 
    --tail, thereby removing the element
    | mod count every == 0 = p15helper (tail xs) every (count + 1)
    | otherwise            = head xs : p15helper (tail xs) every (count + 1)

--P17
split :: [a] -> Int -> ([a], [a])
split xs knife = splitAt knife xs

--P18
slice :: [a] -> Int -> Int -> [a]
slice xs start stop = take (stop+1 - start) (drop (start-1) xs)

--P19
rotate :: [a] -> Int -> [a]
rotate xs r = end ++ begin
    where 
        begin = take r xs
        end   = drop r xs

--P20
removeAt :: [a] -> Int -> [a]
removeAt xs k = take (k-1) xs ++ drop (k) xs