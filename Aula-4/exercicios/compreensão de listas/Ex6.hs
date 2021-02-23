module Ex6 where
    fatores :: Int -> [Int]
    fatores n = [x | x <- [1 .. n], n `mod` x == 0]

    perfeitos n = [ x | x <- [1 .. n], x == sum (tail (reverse (fatores x)))]

    main = do
        print $ perfeitos 500