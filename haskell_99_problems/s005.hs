
--Tree data structure
data Tree a = Empty | 
              Branch a (Tree a) (Tree a) |
              Leaf a
    deriving (Show, Eq)

--Example tree
tree1 :: Tree Char
tree1 = Branch 'a' 
            (Branch 'b' 
                (Leaf 'd')
                (Leaf 'e'))
            (Branch 'c' 
                Empty
                (Branch 'f' 
                    (Leaf 'g')
                    Empty))

-- A binary tree consisting of a root node only
tree2 = Branch 'a' 
            Empty
            Empty

-- An empty binary tree
tree3 = Empty

-- A tree of integers
tree4 = Branch 1 
            (Branch 2 
                Empty 
                (Branch 4 
                    Empty
                    Empty))
            (Branch 2 
                Empty 
                Empty)

--P54A is sort of solved for us given the way that
--type classes work in Haskell.

--P55
cbalTree :: Int -> [Tree Char]
cbalTree 0 = [Empty]
cbalTree n = let (q, r) = (n - 1) `quotRem` 2
    in [Branch 'x' left right | i     <- [q..q+r],
                                left  <- cbalTree i,
                                right <- cbalTree (n - i - 1)]

--P56
mirrorl2 :: Tree a -> Tree a -> Bool
--Base cases
mirrorl2 (Empty)  (Empty) = True
mirrorl2 (Leaf _) (Leaf _) = True

--Recurse down case
mirrorl2 (Branch _ subA1 subA2) (Branch _ subB1 subB2) =
    (mirrorl2 subA1 subB2) && (mirrorl2 subA2 subB1)

--Generic case
mirrorl2 _ _ = False

--Just check if a root node is symmetric with itself
symmetricl1 :: Tree a -> Bool
symmetricl1 tree = mirrorl2 tree tree

--P57
add :: Ord a => a -> Tree a -> Tree a
add x Empty            = Branch x Empty Empty
add x t@(Branch y l r) = case compare x y of
                            LT -> Branch y (add x l) r
                            GT -> Branch y l (add x r)
                            EQ -> t

construct xs = foldl (flip add) Empty xs

--P58
symCbalTrees n = if n `mod` 2 == 0 then [] else 
    [ Branch 'x' t (reverseTree t) | t <- cbalTree (n `div` 2)]

reverseTree Empty = Empty
reverseTree (Branch x l r) = Branch x (reverseTree r) (reverseTree l)

--P59
--I have slightly modified this so that 
--it just produces a perfectly height balanced tree
hbalTree :: a -> Int -> Tree a
hbalTree val height 
    | height == 0 = Empty
    | height == 1 = Leaf val
    | height > 1  = Branch val (hbalTree val (height-1))
                               (hbalTree val (height-1))


--P60
hbalTreeNodes :: a -> Int -> Tree a
hbalTreeNodes val nCount 
    | nCount == 0 = Empty
    | nCount == 1 = Leaf val
    | nCount == 2 = Branch val (Leaf val) Empty
    | nCount == 3 = Branch val (Leaf val) (Leaf val)

    | mod nCount 2 /= 0 =
        Branch val (hbalTreeNodes val (div (nCount) 2))
                   (hbalTreeNodes val (div (nCount) 2))

    | otherwise        =
        Branch val (hbalTreeNodes val (div (nCount-2) 2))
                   (hbalTreeNodes val (div nCount 2))
