module QInit where

    myInit :: [a] -> [a]
    myInit xs = 
        reverse (drop 1 (reverse xs)) 