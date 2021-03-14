data Pessoa = Fisica String Int | Jurifica String

teste :: Pessoa -> (String, String)
teste (Fisica x y) = ("O nome da pessoa e: "++x, "A idade e: " ++ show y )
teste (Jurifica x) = ("O nome da pessoa e: "++x, "Nao ha idade")

newtype Dado = Dado Int -- Funciona como uma espécie de apelido

dadoReturn :: Dado -> Dado
dadoReturn x = x

main :: IO ()
main = do
    print $ teste (Fisica "Luiz" 18)
    print $ teste (Jurifica "LuizTech")