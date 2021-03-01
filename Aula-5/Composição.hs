module Composição where
    
    f :: Num a => a -> a
    f x = x + 1
    g :: Num a => a -> a
    g x = x * 2

    main :: IO ()
    main = do 
        print $ (g . f) 2
        -- mesma coisa que:
        print $ g (f 2)