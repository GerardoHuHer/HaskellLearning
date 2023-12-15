doubleMe::Float -> Float
doubleMe x = x + x

doubleUs::Float -> Float -> Float 
doubleUs x y = x*2 + y*2

doubleUsOpt::Float->Float->Float
doubleUsOpt x y = doubleMe x + doubleMe y

doubleSmallNumber n = if validacion
    then n
    else doubleMe n
  where validacion = n > 100 
