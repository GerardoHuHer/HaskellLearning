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
<<<<<<< HEAD
=======

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

-- Ejercicios
-- 1) Implemente your own version of reverse, which reverse a list
myReverse :: [a] -> [a] -> [a]
myReverse lista [] = lista
myReverse lista (x:xs) = myReverse (x:lista) (xs) 

reversa :: [a] -> [a]
reversa = myReverse [] 

{-
Calculating Fibonacci numbers is perhaps the single most common example of a 
recursive function. The most straightforward definition is as follows:
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
Like the Ackermann function, this implementation quickly explodes due to the mutually recursive calls. But unlike the Ackermann function, there’s a much more efficient 
way to compute the nth Fibonacci number. Write a function, fastFib, that can compute 
the 1,000th Fibonacci number nearly instantly. Hint: fastFib takes three arguments: n1, n2, 
and counter. To calculate the 1,000th Fibonacci number, you call fastFib 1 1 1000 and for 
the 5th, you call fastFib 1 1 5.
-}

fastFib :: Int -> Int -> Int -> Int
fastFib ant pos 0 = ant
fastFib ant pos n = fastFib pos nuevo modif
    where 
        nuevo = ant + pos
        modif = n - 1

fib :: Int -> Int 
fib = fastFib 0 1 

fibonacci :: Int -> Int
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)
>>>>>>> 3dbae3a025f98f1f3443ba80ceac7cfd32f7c4fb
