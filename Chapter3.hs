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
        ("Alejandro", "Huerta"),
        ("Alejandra", "Escallada"),
        ("Arnulfo", "Huerta"),
        ("Lilia", "Hernandez"), 
        ("Mauro", "Galindo")]

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


-- addressLetter name location = nameText ++ "-" ++ location
--  where nameText = (fst name)++ " " ++ (snd name)

sOfficename name = if lastName < "L"
    then nameText
      ++ " - PO Box 1234 - San Francisco, CA, 94111"
    else nameText 
      ++ " - PO Box 1010 - San Fracisco, CA, 94109"
  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName

nyOffice name = nameText ++ ": PO Box 789 -  New York, NY, 10013"
  where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
  where nameText = (snd name)

getLocationFunction location = case location of 
  "ny" -> nyOffice
  "sf" -> sOfficename
  "reno" -> renoOffice
  _ -> (\name -> (fst name) ++ " " ++ (snd name))

addressLetter name location = locationFunction name 
  where locationFunction = getLocationFunction location 

-- Ejecicios   
-- Anything that can be compared in Haskell (for example, [Char], which you use for the names in your name tuples) can be compared with a function called compare. The compare function returns GT, LT, or EQ. Rewrite compareLastNames by using compare.
-- Define a new location function for Washington, DC and add it to getLocation-Function. In the DC function, everyone’s names must be followed by Esq.
