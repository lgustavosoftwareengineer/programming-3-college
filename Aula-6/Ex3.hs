delete' :: [a] -> Int -> [a]
delete' xs i = take i xs ++ drop (i+1) xs

main :: IO ()
main = do
    print $ delete' [1,2,3] 1