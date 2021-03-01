module Foldr where
    sum' :: Num a => [a] -> a
    sum' [] = 0
    sum' (n:ns) = n + sum' ns

    sumWithFoldr :: Num a => [a] -> a
    {-
    A função de alta ordem foldr (abreviatura para fold right) encapsula
    este padrão de recursão definindo funções sobre listas, com um operador # e o valor v como argumentos.
    -}
    -- Você pode entender a função de primeira ordem foldr como:
        -- 1º parâmetro: uma função; 
        -- 2º parâmetro: condição de parada; 
        -- 3º parâmetro: lista que será sofrerá a ação da função 
    sumWithFoldr ns = foldr (+) 0 ns

    length' :: [a] -> Int
    length' = foldr (\_ n -> n + 1) 0

    reverse' :: [a] -> [a]
    reverse' [] = []
    reverse' (x:xs) = reverse' xs ++ [x]

    reverseWithFoldr :: [a] -> [a]
    reverseWithFoldr = foldr (\x xs -> xs ++ [x]) []

    productWithFoldr :: Num a => [a] -> a
    productWithFoldr ns = foldr (*) 1 ns 

    ou' :: [Bool] -> Bool 
    ou' = foldr (||) False

    main :: IO ()
    main = do
        print $ sum' [1..4]
        print $ sumWithFoldr [1..4]
        print $ length' "luiz"
        print $ reverse' "1234"
        print $ reverseWithFoldr "1234"
        print $ productWithFoldr [1,2,3]
        print $ ou' [False, False]
