module Ex7 where
    -- merge
    merge :: Ord a => [a] -> [a] -> [a]
    merge [] ys = ys
    merge xs [] = xs
    merge (x:xs) (y:ys) 
        | x < y = x:merge xs (y:ys)
        | otherwise = y:merge (x:xs) ys
    
    -- metades
    metades :: [a] -> ([a],[a])
    metades xs = (take lhx xs, drop lhx xs)
            where lhx = length xs `div` 2

    -- merge sort
    mergesort :: Ord a => [a] -> [a]
    mergesort []  = []
    mergesort [x] = [x]
    mergesort xs = merge (mergesort left) (mergesort right)
                where (left,right) = metades xs
    
    main :: IO ()
    main = do 
        print $ mergesort [1,4,5,8,6]
