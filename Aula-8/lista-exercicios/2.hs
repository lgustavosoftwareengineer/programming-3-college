-- com pattern matching
somadorAux :: Int -> IO Int
somadorAux 0 = return 0
somadorAux n = do
    s <- somadorAux (n-1)
    x <- readLn :: IO Int
    return (s + x)


-- com if 
somadorAux' :: Int -> IO Int
somadorAux' n = do
    if n > 0 then do
        s <- somadorAux' (n-1)
        x <- readLn :: IO Int
        return (s + x)
    else 
        return 0


somador :: IO ()
somador = do
    putStr "Quantos números? "
    end <- readLn :: IO Int

    suma <- somadorAux end

    putStrLn $ "O total é " ++ show suma

main :: IO ()
main = do
    somador 