-- Não finalizada
repeat' :: Int -> [[Int]]
repeat' 0 = []
repeat' n = [1..n] : repeat' (n - 1)


main :: IO ()
main = do
    print $ repeat' 4