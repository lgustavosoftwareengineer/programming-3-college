module Foldl where 
   
    {-
        Diferença entre foldl e foldr é que o foldl funciona como se em vez de interar a lista normalmente
        (da esquerda pra direita) ela vai interando e realizando a operação desejada com um 
        item que está à esquerda. Por exemplo:
    -} 
    -- Se utilizando da lógica do foldr
    sumFoldrExample :: Num a => [a] -> a
    sumFoldrExample [] = 0
    sumFoldrExample (x:xs) = sumFoldrExample xs + x
    -- Na prática:
        -- sumFoldrExample [1,2,3]
        -- sumFoldrExample [1,2,3] = sumFoldrExample [2,3] + 1
        -- sumFoldrExample [2,3] = sumFoldrExample [3] + 3
        -- sumFoldrExample [3] = sumFoldrExample [] + 6
        -- sumFoldrExample [] = 0 + 6

    -- Se utilizando da lógica do foldl
    sumFoldlExample :: Num a => [a] -> a
    sumFoldlExample = sumFoldlExample' 0
                    where
                        sumFoldlExample' i [] = i
                        sumFoldlExample' i (x:xs) = sumFoldlExample' (i+x) xs
     -- Na prática:
        -- sumFoldlExample 0 [1,2,3]
        -- sumFoldlExample 0 [1,2,3] = sumFoldlExample (0 + 1) [2,3]
        -- sumFoldlExample 1 [2,3] = sumFoldlExample (1 + 2) [3]
        -- sumFoldlExample 3 [3] = sumFoldlExample (3 + 3) []
        -- sumFoldlExample 6 [] = 6

    sumWithFoldl :: Num a => [a] -> a
    sumWithFoldl = foldl (+) 0

    length' :: [a] -> Int
    length' = foldl (\n _ -> n + 1) 0


    main :: IO ()
    main = do
        print $ sumFoldrExample [1,2,3]
        print $ sumFoldlExample [1,2,3]
        print $ sumFoldlExample [1,2,3]