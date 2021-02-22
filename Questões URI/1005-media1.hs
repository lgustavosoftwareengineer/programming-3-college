import Text.Printf


convertFromStringToDouble m = read m :: Double

average x y = ((x*3.5) + (y*7.5)) / 11 

main :: IO ()
main = do
       a <- getLine
       b <- getLine
       putStrLn ("MEDIA = " ++ printf "%.5f" (average (convertFromStringToDouble a) (convertFromStringToDouble b)))