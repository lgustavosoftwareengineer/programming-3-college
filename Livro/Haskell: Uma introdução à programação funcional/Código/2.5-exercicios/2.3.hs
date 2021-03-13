reverse' :: [String] -> [String]
reverse' [] = []
reverse' (x:xs) =  reverse' xs ++ [x]
-- reverse [1,2,3] = reverse [2,3] ++ [1]
-- reverse [2,3] = reverse [3] ++ [2] ++ [1]
-- reverse [3] = reverse [] ++ [3] ++ [2] ++ [1]
-- reverse [] = [] ++ [3] ++ [2] ++ [1]

reverse'' :: [String] -> [String]
reverse'' [a] = [a]
reverse'' (x:xs) =  reverse' xs ++ [x]
-- reverse [1,2,3] = reverse [2,3] ++ [1]
-- reverse [2,3] = reverse [3] ++ [2] ++ [1]
-- reverse [3] = [3] ++ [2] ++ [1]

main :: IO()
main = print $ reverse' ["1","2","3"]