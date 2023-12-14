main::IO()
main = print "Hola mundo"

suma:: Int -> Int -> Int
suma a b = a + b

milista::[Int]
milista = [1,2,3,4,5]

double::Int -> Int
double a = 2*a

valorabs::Int -> Int
valorabs x = if 0 <= x
            then x
            else (-1) * x
            
sumaTotal::Int -> Int
sumaTotal x = if x == 0 
            then 0
            else x + sumaTotal (x - 1)

sumaTotalOpt::Int -> Int -> Int
sumaTotalOpt x y = if val
            then y
            else sumaTotalOpt (x - 1) (x + y)
     where val = x == 0
 
factorialOpt::Int -> Int -> Int
factorialOpt x y = if val
            then y
            else factorialOpt (x - 1) (x*y)
    where val = x == 1

