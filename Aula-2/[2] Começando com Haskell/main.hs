module Main where
    -- Assim eu faço comentários de só uma linha
    a = b + c
        where {
            b = 1;
            c = 2
        }
    d = a * 2
    {-
        Assim eu faço comentários
        De várias linhas...
    -}
    main :: IO ()
    main = do
        print d
        