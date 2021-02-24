module Ex5E where
    elem' :: Eq a => a -> [a] -> Bool
    elem' _ [] = False
    elem' val (x:xs)
        | x == val = True 
        | otherwise  = elem' val xs
    main :: IO ()
    main = do
        print $ elem' 2 [1,2]