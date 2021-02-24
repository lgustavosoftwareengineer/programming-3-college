module Ex6 where
    merge :: Ord a => [a] -> [a] -> [a]
    merge [] ys = ys
    merge xs [] = xs
    merge (x:xs) (y:ys) 
        | x < y = x:merge xs (y:ys)
        | otherwise = y:merge (x:xs) ys
    
    main :: IO ()
    main = do
        print $ merge [2,5,6] [1,3,4]