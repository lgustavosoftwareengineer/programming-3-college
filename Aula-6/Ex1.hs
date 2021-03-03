import Data.List

maior :: (Ord a, Num a, Enum a) => [a] -> (a, a)
maior xs = foldr (\(x,y) acc -> if (x == maximum xs) then (x,y) else acc) (0,head xs) (zip xs [0..])

maior' :: Ord a => [a] -> (a, Int)
maior' xs = maximum $ zip xs [0..]

main :: IO ()
main = do
    print $ maior [1,2,3]
    print $ maior' [1,2,3]