module Main where
    import Ex1
    import Ex2
    import Ex3

    main :: IO ()
    main = do
        print ex1
        -- Output: 338350

        print $ grid 1 2
        -- Output: [(0,0),(0,1),(0,2),(1,0),(1,1),(1,2)]
        
        print $ quadrado 2
        -- Output: [(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]
