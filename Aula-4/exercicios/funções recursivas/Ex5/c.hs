module Ex5C where
    replicate' :: Int -> a -> [a]
    replicate' 0 a = []
    replicate' n a = a : replicate' (n-1) a 
    main :: IO ()
    main = do
        print $ replicate' 2 "Ha"