data Pergunta = Sim | Nao deriving Show

{-
pergNum : recebe via parâmetro uma Pergunta . Retorna
0 para Nao e 1 para Sim .
-}
pergNum :: Pergunta -> Int
pergNum Sim = 1
pergNum Nao = 0

{-
(map) listPergs : recebe via parâmetro uma lista de
Perguntas , e retorna 0 s e 1 s correspondentes aos
constructores contidos na lista.
-}
listPergs' :: [Pergunta] -> [Int]
listPergs' = map pergNum

{-
(compreensão de lista) listPergs : recebe via parâmetro uma lista de
Perguntas , e retorna 0 s e 1 s correspondentes aos
constructores contidos na lista.
-}
listPergs :: [Pergunta] -> [Int]
listPergs xs = [pergNum x | x <- xs]

{-
and' : recebe duas Perguntas como parâmetro e retorna
a tabela verdade do and lógico, usando Sim como
verdadeiro e Nao como falso.
-}
and' :: Pergunta -> Pergunta -> Pergunta
and' Sim Sim = Sim
and' Sim Nao = Nao
and' Nao _ = Nao

{-
or' : idem ao anterior, porém deve ser usado o ou lógico.
-}
or' :: Pergunta -> Pergunta -> Pergunta
or' Sim _ = Sim
or' Nao Sim = Sim
or' Nao Nao = Nao
{-
not' : idem aos anteriores, porém usando o not lógico.
-}
not' :: Pergunta -> Pergunta
not' Sim = Nao
not' Nao = Sim

main :: IO ()
main = do
    print $ pergNum Sim
    print $ listPergs [Sim, Nao, Nao, Sim]
    print $ Sim `and'` Nao
    print $ Sim `or'` Nao
    print $ not' Sim
