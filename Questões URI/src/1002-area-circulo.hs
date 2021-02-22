import Text.Printf

pi' = 3.14159

number m = read m :: Double

area r = pi' * r ^ 2

main :: IO ()
main = do
       r <- getLine
       putStrLn ("A=" ++ printf "%.4f" (area (number r)))