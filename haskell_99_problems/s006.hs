
--Tree data structure
data Tree a = Empty | 
              Leaf a |
              Branch a (Tree a) (Tree a)
    deriving (Show, Eq)

--Example tree
tree4 = Branch 1 
            (Branch 2 
                Empty 
                (Branch 4 
                    Empty 
                    Empty))
            (Branch 2 
                Empty 
                Empty) 

--P61
countLeaves :: Tree a -> Int
countLeaves (Empty)                = 0
countLeaves (Leaf _)               = 1
countLeaves (Branch _ Empty Empty) = 1
countLeaves (Branch _ t1 t2) = 
    (countLeaves t1) + (countLeaves t2)

--P61A
countLeavesList :: Tree a -> [a]
countLeavesList (Leaf a) = [a]
countLeavesList (Branch a Empty Empty) = [a]
countLeavesList (Branch a t1 t2) =
    ((countLeavesList t1) ++ (countLeavesList t2)) 
countLeavesList _ = []

--P62
internals :: Tree a -> [a]
internals (Leaf _) = []
internals (Branch _ Empty Empty) = []
internals (Branch a t1 t2) =
    a : ((internals t1) ++ (internals t2)) 
internals _ = []

--P62B
atLevel :: Tree a -> Int -> [a]
atLevel tree level = helper tree 0
    where
    helper (Leaf a) tlevel = if tlevel == level then [a] else []
    helper (Branch a t1 t2) tlevel
        | tlevel == level = [a]
        | otherwise = (helper t1 (tlevel+1)) ++ (helper t2 (tlevel+1))
    helper _ _ = []

--P63 we pretty much already did in an earlier problem

--P64
