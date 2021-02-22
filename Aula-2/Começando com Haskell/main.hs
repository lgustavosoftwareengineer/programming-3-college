module Main where
    import Q3Erros
    import QLast
    import QInit
    
    main :: IO ()
    main = do
        print "1-Questao: "
        print n
        print "2-Questao: "
        print (myLast [1,2,3])
        print "3-Questao: "
        print (myInit [1,2,3,4])
