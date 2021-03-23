(***) :: Int -> Int -> Int
n *** 0 = 1
n *** e = n * (n *** (e-1))

main :: IO ()
main = do
    print $ 2 *** 3