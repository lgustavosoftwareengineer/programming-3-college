module Main where

    isEven :: String -> Bool
    isEven x 
        | even(length x) = True
        | otherwise  = False
    main :: IO ()
    main = do
        print $ isEven "Hello"