head' :: [a] -> a
head' = last . reverse
main :: IO ()
main = print $ head' [1,2,3]