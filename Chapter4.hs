ifEven myfunction x = if even x
  then myfunction x
    else x

inc::Int -> Int
inc n = n + 1

double::Int -> Int
double n = n * 2

square::Int -> Int
square n = n ^ 2

cube::Int -> Int
cube n = n ^ 3

negative::Int -> Int
negative n = n * (-1)

-- ifEvenInc n = ifEven inc n
ifEvenDouble = ifEven double
ifEvenSquare = ifEven square
ifEvenCube = ifEven cube
ifEvenNegative = ifEven negative
-- ifEvenLambdaCube = ifEven (\x -> x ^ 3)
ifEvenLambdaCube = ifEven (^ 3)

-- getIfEven f = (\x -> ifEven f x)
getIfEven = ifEven

ifEvenInc = getIfEven inc

getRequestURL host apikey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apikey
genHostRequestBuilder host  = (\apikey resource id -> getRequestURL host apikey resource id)
exampleBuilder = genHostRequestBuilder "https://example.com" "1337hAsk3ll"
genApiRequestBuilder hostBuilder apikey = (\resource id -> hostBuilder apikey resource id)
