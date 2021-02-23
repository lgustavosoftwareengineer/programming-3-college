module Ex5 where
    pitag :: Int -> [(Int, Int, Int)]
    pitag n = [(a, b, c) | a <- [0..n], b <- [0..n], c <- [0..n], (a^2 + b^2) == c^2, a /= 0, b /= 0, c /= 0]

    main :: IO ()
    main = do 
        print (pitag 10)