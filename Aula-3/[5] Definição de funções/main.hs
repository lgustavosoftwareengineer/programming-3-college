module Main where
    -- Expressões diretas
    dobro :: Int -> Int
    dobro x = 2 * x

    -- Expressões condicionais
    newSignum :: Int -> Int
    newSignum n = if n < 0 then -1 else
        if n == 0 then 0 else 1

    {- IMPORTANTE:
        Diferente da maioria das linguagens, blocos condicionais em Haskell exigem sempre o else
    -}

    -- Expressões com guardas
    newSignumWithGuards :: Int -> Int 
    newSignumWithGuards n | n < 0 = -1
                          | n == 0 = 0
                          | otherwise  = 1


    -- Casamento Lógico (Eu digo qual será o retorno dependendo de qual o parâmetro)
    feliz :: Bool -> Bool
    feliz False = False
    feliz _ = True                          
    main :: IO ()
    main = do 
        print (feliz False )

    
