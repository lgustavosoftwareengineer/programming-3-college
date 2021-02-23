
module Ex3 where
    import Text.Printf
    import Ex2

    quadrado :: Int -> [(Int,Int)]
    quadrado a = [(x, y) | (x, y) <- grid a a, x /= y]