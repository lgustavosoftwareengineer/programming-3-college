module Question02 where
    second :: [a] -> a
    second xs = head (tail xs)

    swap :: (a, b) -> (a, b)
    swap (x, y) = (x, y)


    pair :: a -> b -> (a, b)
    pair x y = (x, y)

    double :: Num a => a -> a
    double x = x * 2

    
    palindrome :: Eq a => [a] -> Bool 
    palindrome xs = reverse xs == xs

    twice :: (a -> a) -> a -> a
    twice f x = f (f x)
