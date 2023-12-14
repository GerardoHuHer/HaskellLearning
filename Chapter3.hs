import Data.List

main::IO()
main = print "Hola mundo"

--ifEvenInc n = if even n
--  then n + 1
--  else n
--
--ifEvenDouble n = if even n 
--  then n * 2
--  else n
--
--ifEvenSquare n = if even n
--  then n ^ 2
--  else n 

-- Tenemos el mismo comportamiento en las tres funciones es por eso que podemos hacer una cuarta funcion que englobe a las tres pasando una función y un número como parámetros.
ifEven myfunction x = if even x
  then myfunction x
  else x 

inc n = n + 1
double n = n * 2
square n = n ^ 2
cube n = n ^ 3
negative n = n * (-1)

ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n
ifEvenCube n = ifEven cube n
ifEvenNegative n = ifEven negative n
ifEvenLambdaCube n = ifEven (\x -> x ^ 3) n


author = ("Gerardo", "Huerta")
-- fst , snd
names = [("Gerardo", "Huerta"),
        ("Carlos", "Huerta"), 
        ("Alejandro", "Huerta")]

compareLastName name1 name2 = if lastName1 > lastName2
    then GT
    else if lastName1 < lastName2
      then LT
      else compareFirstName name1 name2 
  where lastName1 = snd name1
        lastName2 = snd name2

compareFirstName name1 name2 = if firstName1 > firstName2
    then GT
    else if firstName1 < firstName2
      then LT 
      else EQ
  where firstName1 = fst name1
        firstName2 = fst name2
