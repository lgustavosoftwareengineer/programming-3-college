position :: Int -> [a] -> a
position n xs = head $ drop n xs

main :: IO ()
main = do print $ position 0 ['a', 'b', 'c', 'd']
