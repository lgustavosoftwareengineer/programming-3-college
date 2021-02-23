module Ex7 where
    import Text.Printf
    compare' :: (Eq a, Eq b) => [(a, b)] -> [(a, b)] -> Bool
    compare' x y = x == y

    prove1 :: [(Int, Int)]
    prove1 = [(x, y) | x <- [1, 2], y <- [3, 4]]

    prove2 :: [(Int, Int)]
    prove2 = [(1, y) | y <- [3, 4]] ++ [(2, y) | y <- [3,4]]

    main :: IO ()
    main = do
        print $ compare' prove1 prove2