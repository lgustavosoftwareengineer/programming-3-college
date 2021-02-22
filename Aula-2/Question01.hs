module Question01 where
    sayFirstType = "['a', 'b', 'c'] :: [Char]"
    saySecondType = "('a', 'b', 'c') :: (Char a, Char b, Char c) => (a, b, c)"
    sayThirdType = "[(False, '0'), (True, '1')] :: [(Bool, Char)]"
    sayFourthType = "([False, True], ['0', '1']) :: ([Bool], [Char])"
    sayFifthType = "[tail, init, reverse] :: [[a] => [a]]"
