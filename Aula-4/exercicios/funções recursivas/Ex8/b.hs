module Ex8B where
    take' :: (Ord t, Num t) => t -> [a] -> [a]
    take' n _  
        | n <= 0 = []  
    take' _ [x] = [x]
    -- 1 : take' 1 [2,3,4]
    -- 
    take' n (x:xs) = x : take' (n-1) xs

    main :: IO ()
    main = do
        print $ take' 2 [1,2,3,4]