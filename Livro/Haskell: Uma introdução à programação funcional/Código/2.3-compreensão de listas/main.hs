module Main where
    main :: IO()
    dobroLista :: [Int] -> [Int]
    {-
        [EXPRESSÃO(var) | var <- LISTA, FILTRO_1, FILTRO_2, ..., FILTRO_]
    -}
    dobroLista xs = [2*x | x <- xs]

    lista :: [Int]
    lista = [2*x+1 | x<-[1 .. 10], x /= 5]

    main = do
        print lista
        print (dobroLista [1,2,3]);