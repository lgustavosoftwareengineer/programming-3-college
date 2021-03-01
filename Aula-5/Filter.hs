module Filter where
    filter' :: (a -> Bool) -> [a] -> [a]
    filter' f x = [x | x <- x, f x]

    main :: IO ()
    main = do
        print $ filter' even [1..10]
        print $ filter' ( > 5) [1..10]
        print $ filter' ( /= ' ') "abc def ghi"
        