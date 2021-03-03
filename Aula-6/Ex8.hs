palindrome :: Eq a => [a] -> Bool 
palindrome xs = xs == reverse xs


main :: IO ()
main = do 
    print $ palindrome [1,2,3,4,5]
    print $ palindrome [1,2,3,2,1]
    print $ palindrome [1,2,2,1]