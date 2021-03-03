import Data.List

intersection :: Eq a => [a] -> [a] -> [a]
intersection [] _      = []
intersection _ []      = []
intersection (x:xs) ys = if x `elem` ys
                 then x : intersection xs (delete x ys)
                 else intersection xs ys

intersection' :: Eq a => [a] -> [a] -> [a]
intersection' xs ys = [ k | k <- xs, k `elem` ys ]

intersection'' :: Eq a => [a] -> [a] -> [a]
intersection'' xs ys = filter (`elem` ys) xs


intersection''' :: Eq a => [a] -> [a] -> [a]
intersection''' xs ys = [x | x <- xs, y <- ys, x == y]

main :: IO ()
main = do
    print $ intersection [3,6,5,7] [9,7,5,1,3]
    print $ intersection' [3,6,5,7] [9,7,5,1,3]
    print $ intersection'' [3,6,5,7] [9,7,5,1,3]
    print $ intersection''' [3,6,5,7] [9,7,5,1,3]