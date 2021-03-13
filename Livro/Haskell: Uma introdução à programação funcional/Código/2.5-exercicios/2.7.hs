coordinatesProduct :: Int -> (Int, Int, Int, Int)
coordinatesProduct x = (2*x, 3*x, 4*x, 5*x)

main :: IO ()
main = print $ coordinatesProduct 2