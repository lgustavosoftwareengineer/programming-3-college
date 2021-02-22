import Text.Printf


convertFromStringToDouble m = read m :: Double
convertFromStringToInteger m = read m :: Integer

average x y z = ((x*2) + (y*3) + (z*5)) / 10 

main :: IO ()
main = do
       a <- getLine
       b <- getLine
       c <- getLine
       putStrLn ("MEDIA = " ++ printf "%.1f" (average (convertFromStringToDouble a) (convertFromStringToDouble b) (convertFromStringToDouble c)))