data Ponto = Ponto Double Double
-- ou (com record syntax)
data Ponto2 = Ponto2 {x_val, y_val :: Double}

distOrigin :: Ponto -> Double
distOrigin (Ponto x y) = sqrt (x**2 + y**2)

distOrigin2 :: Ponto2 -> Double
distOrigin2 Ponto2 {x_val = x, y_val = y} = sqrt (x**2 + y**2)

distOrigin3 :: Ponto2 -> Double
distOrigin3 p = sqrt (x_val p**2 + y_val p**2)



main :: IO ()
main = do
    (print . (show . distOrigin)) (Ponto 1.2 2) 
    (print . (show . distOrigin2)) (Ponto2 {x_val = 1.2, y_val = 2} ) 
    (print . (show . distOrigin3)) (Ponto2 {x_val = 1.5, y_val = 2}) 