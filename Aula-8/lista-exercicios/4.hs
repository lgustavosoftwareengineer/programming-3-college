import System.IO (hSetEcho, stdin)

obterChar:: IO Char
obterChar = do
    getChar

obterLinha' :: IO String
obterLinha' =
    obterChar >>= \c ->
        if c == '\n'
        then return []
        else obterLinha' >>= \rest ->
             return (c : rest)

obterLinha'' :: IO String
obterLinha'' =
    do
        c <- obterChar
        if c == '\n'
        then return []
        else do
            rest <- obterLinha''
            return (c : rest)

main :: IO ()
main = do
    x <- obterLinha'
    print x

