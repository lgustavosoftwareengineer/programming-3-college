module Ex8A where
    sum' :: Num a => [a] -> a
    sum' [] = 0
    sum' (x:xs) = x + sum' xs

    main :: IO ()
    main = do
        print (sum [1,2,3,4,2])
