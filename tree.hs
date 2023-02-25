import Data.Tree

tree = Node "A" [Node "B" [], Node "C" [Node "D" [], Node "E" []]]

    print tree
    putStrLn $ drawTree tree
    putStrLn $ drawForest $ subForest tree

    flatten tree
    levels tree
