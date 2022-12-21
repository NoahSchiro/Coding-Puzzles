data Node = Node a
data Edge = Edge (Node a) (Node a)
data Graph = Graph [Node] [Edge]