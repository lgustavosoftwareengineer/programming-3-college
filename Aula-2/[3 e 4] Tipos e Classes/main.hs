module Main where

    soma :: Int -> Int -> Int
    -- soma :: Num a => a -> a -> a
    soma x y = x + y

    multi :: Int -> (Int -> (Int -> Int))
    multi x y z = x * y * z

    main :: IO ()
    main = do
        print (soma 1 2)
