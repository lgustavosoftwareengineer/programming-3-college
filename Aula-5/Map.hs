module Map where
    map' :: (a -> b) -> [a] -> [b]
    map' f xs = [f x | x <- xs]

    main :: IO ()
    main = do
        print $ map' (\x -> x+1) [1..5]
        -- or
        print $ map' f x
            where 
                f = \x -> x + 1
                x = [1..5]