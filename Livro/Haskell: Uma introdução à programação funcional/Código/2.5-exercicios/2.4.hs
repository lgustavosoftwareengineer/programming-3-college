sizeOf :: [String] -> [Int]
sizeOf xs = [length x | x <- xs]

main :: IO ()
main = print $ sizeOf ["Opa", "Op", "O"]