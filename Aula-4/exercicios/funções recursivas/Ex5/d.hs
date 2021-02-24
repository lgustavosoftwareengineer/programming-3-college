module Ex5D where
    (!!!) :: [a] -> Int -> a
    (!!!) (x:xs) 0 = x 
    (!!!) (x:xs) e = (!!!) xs (e-1)

    main :: IO ()
    main = do
        print $ (!!!) [1,2,3] 1