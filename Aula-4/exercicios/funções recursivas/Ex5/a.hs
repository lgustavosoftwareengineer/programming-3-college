module Ex5A where
    and' :: [Bool] -> Bool
    and' [] = True
    and' (x:xs) = x && and' xs
    main :: IO ()
    main = do
        print $ and' [True, True, True]
