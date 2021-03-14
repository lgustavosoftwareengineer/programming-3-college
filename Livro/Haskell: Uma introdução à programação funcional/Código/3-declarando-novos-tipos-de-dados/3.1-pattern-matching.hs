f :: (Int, Int) -> Int

f (0, 0) = 0
f (0, 1) = 1
f (1, 0) = 1
f (x, 0) = x
f (0, y) = y
f (x, y) = x+y

g :: (Int, Int) -> Int
g (7,7) = 7
g (_,_) = 0

h :: [Int] -> Int 
h [] = 0
h (_:[]) = 1
h (_:x:[]) = 2+x
h (x:y:z:[]) = 2+x+y+z
h (x:_:_:w:[]) = 4+x+w
h (x:xs) = x -- (x:xs) quer dizer um ou mais elementos. Se fosse (x:y:xs) dois ou mais elementos


main :: IO ()
main = do
    putStrLn "f --> "
    print $ f (0, 0)
    print $ f (1, 0)
    print $ f (2, 3)

    putStrLn "g --> "
    print $ g (7, 7)
    print $ g (8, 1)

    putStrLn "h --> "
    print $ h [10,2,3,4,5]
    