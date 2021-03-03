-- Não finalizada
repeat' :: Int -> [[Int]]
repeat' 0 = []
repeat' n = map (\x -> n) [1..n] : repeat' (n - 1)


main :: IO ()
main = do
    print $ repeat' 4
    print $ concat $ repeat' 4