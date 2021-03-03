
dic_10 :: [(Int, [Char])]
dic_10 = [(0,"zero"), (1,"um"), (2,"dois"), (3, "tres"), (4, "quatro"), (5, "cinco"),(6, "seis"),(7, "sete"),(8, "oito"), (9,"nove")]

findElement :: [(Int, String)] -> Int -> String  
findElement ((n, s):xs) n' 
    | n == n' = s
    | otherwise = findElement xs n'

numToStr :: [Int] -> [String]
numToStr = map (findElement dic_10)


main :: IO ()
main = do
    print $ numToStr [1,2,3]