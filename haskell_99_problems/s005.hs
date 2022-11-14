
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
    in [Branch 'x' left right | i     <- [q .. q + r],
                                left  <- cbalTree i,
                                right <- cbalTree (n - i - 1)]

