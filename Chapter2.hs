--Borrame
main::IO()
main = putStrLn "Hola mundo" 

sumSquareOrSquareSum::Int -> Int -> Int
sumSquareOrSquareSum x y = if sumSquare > squareSum
     then sumSquare
     else squareSum
  where sumSquare = x^2 + y^2
        squareSum = (x + y)^2

body::Int -> Int -> Int
body sumSquare squareSum = if sumSquare > squareSum
   then sumSquare
   else squareSum

msumSquareOpt::Int -> Int -> Int
msumSquareOpt x y = (\sumSquare squareSum -> 
  if sumSquare > squareSum
  then sumSquare
  else squareSum) (x^2 + y^2) ((x+y)^2)

-- Rewrite the following function to use lambda function in place of where: 
-- doubleDouble x = dubs*2
--   where dubs = x*2
doubleDouble x = (\dubs -> dubs * 2) x*2

-- let squareSum
square x y = let sumSquare = (x^2 + y^2)   -- variables defined first
                 squareSum = (x + y)^2
            in 
            if sumSquare > squareSum       -- Body of let expression
            then sumSquare
            else squareSum

overwrite x = let x = 2
            in 
            let x = 3
            in
            let x = 4
            in 
            x
            
lambdaOverwrite x = (\x -> (
                    \x  ->
                    (\x -> x)4
                    )3
                  )2

counterError x = let x = x + 1
            in 
              let x = x + 1
              in
              x
              
counterLambda x = (\x -> (\x -> x + 1)x + 1) x
