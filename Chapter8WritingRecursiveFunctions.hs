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
conjeturaCola :: Int -> [Int] -> [Int]
conjeturaCola 1 lista = reverse (1:lista)
conjeturaCola num lista 
        | even num = conjeturaCola (div num 2) (num:lista)
        | odd num = conjeturaCola (3 *num + 1) (num:lista)
