module Main where
    main :: IO ()

    foo :: Char -> Int -> (Int, String)
    foo x y = (y, x:[x])

    main = do
        let res = foo 'L' 2
        print res
        print ("Primeiro elemento da tupla:", fst res)
        print ("Segundo elemento da tupla:", snd res)