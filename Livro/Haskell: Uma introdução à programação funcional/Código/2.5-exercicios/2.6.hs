isPalindrome :: String  -> Bool
isPalindrome xs = reverse xs == xs

main :: IO ()
main = print $ isPalindrome "xs"