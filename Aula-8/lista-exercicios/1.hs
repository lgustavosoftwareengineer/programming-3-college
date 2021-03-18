sequence' :: Monad m => [m a] -> m [a]
sequence' [] = return []
sequence' (ma:mas) = do
  a  <- ma
  as <- sequence' mas
  return (a:as)

putStr' :: String -> IO ()
putStr' xs = sequence_ [putChar x | x <- xs]

main :: IO ()
main = do
    str <- getLine 
    putStr' str
