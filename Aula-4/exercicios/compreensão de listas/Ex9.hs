module Ex9 where
    
    escalarProduct :: Num a => [a] -> [a] -> a
    escalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys] 

    main :: IO ()
    main = do
        print $ escalarProduct [1,2,3,4] [1,2,3,4]