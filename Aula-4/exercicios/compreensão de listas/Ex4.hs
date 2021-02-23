module Ex4 where
    import Text.Printf (printf)
    replicate' :: Int -> a -> [a]
    replicate' n v = [v | x <- [0..n-1]]

    main :: IO ()
    main = do
        print (replicate' 3 True)