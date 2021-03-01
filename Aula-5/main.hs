module Main where
    soma :: Int -> Int -> Int
    soma x y = x + y

    somaLambda :: Int -> Int -> Int
    somaLambda = \x -> (\y -> x + y)

    {- Funções de alta ordem e primeira classe:
        Formalmente uma função que recebe outra como função chamamos ela de função de alta ordem, em contraste
        quando falamos de funções que podem ser tratadas como valor na linguagem chamamos de funções de primeira classe
    -}
    duasVezes :: (a -> a) -> a -> a
    duasVezes f x = f (f x)
    
    duasVezesLista :: Num b => [b] -> [b]
    duasVezesLista xs = map (\x -> x*2) xs

    {- Exemplos de funções de alta ordem: map, filter, foldr, foldl e etc...
    -}

    sum' :: Num a => [a] -> a
    sum' [] = 0
    sum' xs = (head xs) + sum' (tail xs)  

    main :: IO ()
    main = do
        print $ duasVezes (+2) 3
        print $ duasVezesLista [1..10]
        print $ sum' [1,2,3]

