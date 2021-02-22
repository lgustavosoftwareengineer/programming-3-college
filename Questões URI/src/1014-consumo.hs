import Text.Printf

consumption :: Fractional a => a -> a -> a
consumption x y = x / y

main :: IO ()
main = do
       range <- readLn  :: IO Double
       fuel <- readLn :: IO Double
       printf "%.3f km/l\n" $ consumption range fuel