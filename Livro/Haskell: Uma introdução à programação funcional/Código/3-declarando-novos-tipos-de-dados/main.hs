data Dia = Segunda | Terca | Quarta | 
    Quinta | Sexta | Sabado | Domingo

agenda :: Dia -> String
agenda Domingo = "TV..."
agenda Sabado = "Lavar roupa"
agenda _ = "Trabalho e faculdade"


main :: IO ()
main = do
    print $ agenda Sexta

