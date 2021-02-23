module Ex2 where
    soma :: Int -> Int
    soma 0 = 0
    soma n = n + soma (n-1)

    main :: IO ()
    main = do
        print $ soma 3