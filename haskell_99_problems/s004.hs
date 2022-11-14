import Data.List
import Data.Ord

--P46 & P47 & P48
notl1 :: Bool -> Bool
notl1 True  = False
notl1 False = True

andl2 :: Bool -> Bool -> Bool
andl2 a b = a && b

orl2 :: Bool -> Bool -> Bool
orl2 a b = a || b

nandl2 :: Bool -> Bool -> Bool
nandl2 a b = notl1 $ andl2 a b

norl2 :: Bool -> Bool -> Bool
norl2 a b = notl1 $ orl2 a b

impll2 :: Bool -> Bool -> Bool
impll2 a b = (notl1 a) `orl2` b

equl2 :: Bool -> Bool -> Bool
equl2 a b = (a == b)

xorl2 a b = not (equl2 a b)

table :: (Bool -> Bool -> Bool) -> IO ()
table f = putStrLn $ concatMap (++ "\n" )
          [show a ++ " " ++ show b ++ " " ++ show (f a b)
          | a <- [True, False], b <- [True, False] ]

--P49
gray :: Int -> [String]
gray 0 = [""]
gray n = ['0': x | x <- prev] ++ ['1':x | x <- reverse prev]
    where prev = gray (n-1)


--P50
data HTree a = Leaf a | Branch (HTree a) (HTree a)
                deriving Show

huffman :: (Ord a, Ord w, Num w) => [(a,w)] -> [(a,[Char])]
huffman freq = sortBy (comparing fst) $ serialize $
        htree $ sortBy (comparing fst) $ [(w, Leaf x) | (x,w) <- freq]
  where htree [(_, t)] = t
        htree ((w1,t1):(w2,t2):wts) =
                htree $ insertBy (comparing fst) (w1 + w2, Branch t1 t2) wts
        serialize (Branch l r) =
                [(x, '0':code) | (x, code) <- serialize l] ++
                [(x, '1':code) | (x, code) <- serialize r]
        serialize (Leaf x) = [(x, "")]