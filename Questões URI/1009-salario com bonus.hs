import Text.Printf

finalSalaryWithBonus x y = x + ((y*15)/100)

main :: IO ()
main = do
       userName <- getLine
       normalSalary <- readLn :: IO Double
       numOfSales <- readLn :: IO Double
       printf "TOTAL = R$ %.2f\n" $ finalSalaryWithBonus normalSalary numOfSales

