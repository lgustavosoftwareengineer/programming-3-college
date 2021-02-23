module Ex3 where    
    mdc :: (Num a, Num  a, Eq a, Ord a) => a -> a -> a
    mdc x y
        | x == y = x
        | x < y = mdc (y-x) x 
        | otherwise = mdc (x-y) y

    main :: IO ()
    main = do
        print $ mdc 6 27