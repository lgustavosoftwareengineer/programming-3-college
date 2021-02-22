module Main where

    a :: [Integer]
    a = [11 ^ x | x <- [0 .. 6]]
    
    b :: [Integer]
    b = [x | x <- [1 .. 40], x `mod` 4 /= 0]

    main :: IO ()
    main = do
        print b