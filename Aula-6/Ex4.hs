import Data.List
odd' :: [Int] -> [Int]
odd' xs = sort [x | x <- xs, x `mod` 2 /= 0]

main :: IO ()
main = do
    print $ odd' [3,6,4,8,1,9,7]