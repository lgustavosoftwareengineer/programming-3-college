
insert :: [Int] -> Int -> Int -> [Int]
insert xs i x = take i xs ++ [x] ++ drop i xs

main :: IO ()
main = do
    print $ insert [1,3,4,1,3,2] 4 9
    --  [1,3,4,1,9,3,2]
