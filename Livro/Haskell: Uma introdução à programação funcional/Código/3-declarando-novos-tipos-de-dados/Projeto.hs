module Projeto where
    data Cargo = Estagiario | Programador | 
        Coordenador | Gerente deriving Show

    data Pessoa = Pessoa 
                    {cargo :: Cargo, nome :: String} 
                        deriving Show

    verSalario :: Pessoa -> Double
    verSalario (Pessoa Estagiario _) = 1500
    verSalario (Pessoa Programador _) = 5750.15
    verSalario (Pessoa Coordenador _) = 8000
    verSalario (Pessoa Gerente _) = 10807.20

    verFolha :: Pessoa -> String
    verFolha p = "{nome: \"" ++ (nome p) ++
                    "\", cargo: \"" ++ show (cargo p) ++
                    "\", salario: " ++ show (verSalario p) 
                        ++ "}"

    promover :: Pessoa -> Pessoa
    promover (Pessoa Estagiario n) = Pessoa Programador n
    promover (Pessoa Programador n) = Pessoa Coordenador n
    promover (Pessoa Coordenador n) = Pessoa Gerente n
    promover (Pessoa _ n) = Pessoa Gerente n

    qualOCargo :: Pessoa -> Cargo
    qualOCargo Pessoa {cargo = c, nome = n} = c 

    main :: IO ()
    main = do
        print $ Pessoa {cargo = Programador, nome = "Luiz"}    
        let luiz = Pessoa Programador "Luiz"
        
        print $ verFolha luiz