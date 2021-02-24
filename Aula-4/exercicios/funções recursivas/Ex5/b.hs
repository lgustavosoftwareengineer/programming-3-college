module Ex5B where
    concat' :: [[a]] -> [a]
    concat' [] = []
    concat' (x:xs) = x ++ concat' xs
    main :: IO ()
    main = do
        print $ concat' [[1,2],[3,4,5],[6]]