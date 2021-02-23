module Ex3 where    
    euclides :: Int -> Int -> Int
    euclides x y
        | x == y = x
        | x < y = euclides (y-x) x 
        | otherwise = euclides (x-y) y

    main :: IO ()
    main = do
        print $ euclides 6 27