module Ex8C where
    last' :: [a] -> [a]
    last' [x] = [x]
    last' (x:xs) = last' xs 

    main :: IO ()
    main = do
        print $ last' [1,2]