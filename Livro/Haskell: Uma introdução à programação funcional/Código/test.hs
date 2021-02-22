main :: IO ()

biggerThan :: Int -> Int -> Bool
biggerThan x y = x > y

-- testing the reverse
rever :: [Integer]
rever = reverse [1,2,3]

-- testing the (.)
dotCombination :: Char
dotCombination = (head . reverse) "HASKELL"

-- testing the !!
getTheElement :: Integer
getTheElement = [1,2,3,4] !! 3

-- testing the (:)
addedElement :: [Integer]
addedElement = 3 : [4,5,6]

-- testing length
lengthOfAddedElement :: Int
lengthOfAddedElement = length addedElement

main =
    print ("Getting the reverse: ", rever) >>
    print ("Getting the last element of a list of Chars (String) using (.): ", dotCombination) >>
    print ("Using the !! operator: ", getTheElement) >>
    print ("Adding element in the first position: ", addedElement) >>
    print ("The length of the addedElement is: ",lengthOfAddedElement)
