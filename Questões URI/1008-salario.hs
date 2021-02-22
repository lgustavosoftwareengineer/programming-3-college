import Text.Printf

finalSalary x y = x * y

main :: IO ()
main = do
       userNumber <- readLn :: IO Int
       hours <- readLn :: IO Double
       salaryPerHour <- readLn :: IO Double
       printf "NUMBER = %d\n" userNumber
       printf "SALARY = U$ %.2f\n" $ finalSalary hours salaryPerHour