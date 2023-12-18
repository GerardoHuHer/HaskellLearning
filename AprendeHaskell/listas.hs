lista::[Int]
lista = [1,2,3,4,5,6]
-- Se puede concatenar con ++ "[1,2]++[3,4] = [1,2,3,4]" pero ten cuidado porque para esto tiene que recorrer toda la lista y si es muy grande puede tardar
-- En caso de querer concatenar algo al principio se puede hacer con :, ejemplo [1,2,3] 1:[2,3, 4] = [1, 2, 3, 4]
-- Para buscar con índices hacemos lista!! 4
--Funciones básicas de las listas
--head devuelve el primer valor de la lista
headPrueba = head lista 
--tail toma todo menos el primer elemento de la lista
tailPrueba = tail lista 
--last toma el último elemento de la lista
lastPrueba = last lista 
--init toma toda la lista salvo el último elemento
initPrueba = init lista
--length nos da el tamaño de una lista 
lengthPrueba = length lista
--null nos devuelve True si está vacía y False si no 
nullPrueba = null lista
--reverse pone la lista al revés 
reversePrueba = reverse lista
--take va a recibir un número y una lista y va a devolver esa cantidad de valores de la lista
takePrueba = take 5 lista 
--drop funciona como take solo que los quita 
dropPrueba = drop 4 lista 
--maximum y minimum devuelven el valor más grande o más chico 
maximumPrueba = maximum lista
minimumPrueba = minimum lista 
--sum suma todos los elementos de la lista 
sumPrueba = sum lista 
--product devuelve la multiplicación de todos los elementos de la lista
 --productPrueba = product lista
--elem nos dice si un elemento está en la lista o no
elemPrueba = elem 4 lista 
-- Rangos
lista1al20 = [1..20]
lista20al1 = [20, 19..1]
-- Funciones de listas infinitas 
listainfinita = take 13 [13, 26..]
-- Cycle: crea una repetición de la lista infinitamente por lo que hay que limitarla 
cycleprueba = take 10 (cycle lista)
--repeat toma un elemento y lo repite infinitamente 
repeatPrueba = take 10 (repeat "c")
pares2al10 = [x*2 | x <- [1..10], x*2 >= 12]
numeros1al1007mod30 = [x|x <- [50..100], mod x 7 == 3]

