import Data.List

intersection :: Eq a => [a] -> [a] -> [a]
intersection [] _      = []
intersection _ []      = []
intersection (x:xs) ys = if x `elem` ys
                 then x : intersection xs (delete x ys)
                 else intersection xs ys

main :: IO ()
main = do
    print $ intersection [3,6,5,7] [9,7,5,1,3]
