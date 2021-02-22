import Text.Printf

outPut :: [Integer] -> String -> Integer -> String
outPut [] text _  = text
outPut (nt:nts) text rs =
  outPut nts (text ++ line) (rs `rem` nt)
  where line = printf "%d nota(s) de R$ %d,00\n" (rs `div` nt) nt

main :: IO ()
main = do reals <- readLn :: IO Integer
          putStr $ show reals ++ outPut [100, 50, 20, 10, 5, 2, 1] "\n" reals