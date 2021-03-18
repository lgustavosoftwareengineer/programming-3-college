-- com pattern matching
somadorAux :: Int -> [IO Int]
somadorAux 0 = []
somadorAux n = (readLn :: IO Int) : somadorAux (n-1)

-- com guardas
somadorAux' :: Int -> [IO Int]
somadorAux' n 
    | n <= 0 = []
    | otherwise  = (readLn :: IO Int) : somadorAux' (n-1)

-- com if
somadorAux'' :: Int -> [IO Int]
somadorAux'' n = 
    if n <= 0 
        then []
    else 
        (readLn :: IO Int) : somadorAux'' (n-1)

-- com compreensão de listas
-- [FAZER]

somador :: IO ()
somador = do
    putStr "Quantos números? "
    end <- readLn :: IO Int

    list <- sequence (somadorAux' end)

    putStrLn $ "O total é " ++ show (sum list)

main :: IO ()
main = do
    somador