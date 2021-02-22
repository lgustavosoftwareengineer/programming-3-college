
module Main where
    import Question02
    import Question01

    soma2 :: Num a => a -> a -> a
    soma2 x y = x + y

    main :: IO ()

    main = do
        print (double 2)
        print sayFirstType
