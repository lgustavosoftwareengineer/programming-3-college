module Ex3 where    
    (^^^) :: (Eq p, Num p) => p -> p -> p
    (^^^) m 0 = 1
    (^^^) m n = m * (^^^) m (n-1)

    main :: IO ()
    main = do
        print $ 2 ^^^ 4