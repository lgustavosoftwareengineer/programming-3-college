module MapFilter where
    
    somaQuadPares :: [Int] -> Int
    somaQuadPares ns = sum (map (^2) (filter even ns))

    -- or com composição

    somaQuadPares' :: [Int] -> Int
    somaQuadPares' = sum . map (^2) . filter even

    main :: IO ()
    main = do
        print $ somaQuadPares [1..10]
        print $ somaQuadPares' [1..10]