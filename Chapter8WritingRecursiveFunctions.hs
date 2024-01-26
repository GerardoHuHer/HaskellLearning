import Data.Char (toUpper)

myDrop 0 xs = xs
myDrop n ys = case ys of
    x:xs -> myDrop (x -1) xs
    [] -> []

    
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

-- Crea una función recursiva que implemente take
myTake :: Int -> [a] -> [a]
myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest
    where rest = myTake (n - 1) xs

-- Ejercicio de una conjetura de cola
conjeturaCollatz :: Int -> [Int] -> [Int]
conjeturaCollatz 1 lista = reverse (1:lista)
conjeturaCollatz num lista 
        | even num = conjeturaCollatz (div num 2) (num:lista)
        | odd num = conjeturaCollatz (3 *num + 1) (num:lista)

conjeturaCollatzOpt :: Int -> [Int]
conjeturaCollatzOpt 1 = 1:[]
conjeturaCollatzOpt num
        | even num = (num):conjeturaCollatzOpt (div num 2)  
        | odd num = (num):conjeturaCollatzOpt (3 * num + 1)

-- Crea una función que emule el funcionamiento de cycle
finiteCycle :: [a] -> [a]
finiteCycle (first:rest) = first:rest ++ [first]

myCycle :: [a] -> [a]
myCycle (x:xs) = x:myCycle (xs++[x])

-- Ackerman Function 
ackerman 0 n = n + 1
ackerman m 0 = ackerman (m - 1) 1 
ackerman m n = ackerman (m - 1) (ackerman m (n - 1))

collatz 1 = 1
collatz n = if even n
    then 1 + collatz (n `div` 2)
    else 1 + collatz (n*3 + 1)

mayus :: [Char] -> [Char]
mayus lista = map toUpper lista
