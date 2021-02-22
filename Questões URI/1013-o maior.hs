import Text.Printf

biggest a b = (a+b+abs(a-b))`div`2 

stringToInt :: String -> Int
stringToInt str = read str :: Int

main :: IO ()
main = do
       line <- getLine :: IO String
       let [a, b, c] = map stringToInt $ words line
       printf "%d eh o maior\n" (biggest a (biggest b c))