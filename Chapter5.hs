-- This topic (list) is covered from page 69 to
teams::[String]
teams = ["red", "yellow", "orange", "blue", "purple"]
list::[Int]
list = [1,2,3]
list2::[[Int]]
list2 = [[1,2],[3,4]]
stringlist::[Char]
stringlist = ['h', 'e', 'l', 'l', 'o']
num::[Int]
num = [1,2,3,4]
num2::[Int]
num2 = [0] ++ num
-- Quickly generate ranges of data
alphabet::[Char]
alphabet = ['a'..'z']
-- Common functions on list
-- !! is de index operator 
letter = alphabet !! 5
-- Prefix notation (!!) [1,2,3] 0 output: 1
paExample = (!!) "dog"
-- Try paExample 2 in terminal an the output will be 'g'
-- Length function
lengthList = [1..30]
reverseList = reverse lengthList
isPalindrome::String -> Bool
isPalindrome word = word == reverse word
-- Elem function takes a value and a list checks whether the value is in the list:
result =  13 `elem` [0, 13 .. 100]
respond phrase = if valor
    then "wow!"
    else "uh.. okay"
  where valor = '!' `elem` phrase
-- Take and drop
takeList = take 5 [2,4 .. 100]
takeLast = take 1 (reverse [1..100])

zipList = zip list list2
--cylce 
ones n = take n (cycle [1])
assingToGroups n aList = zip groups aList
    where groups = cycle [1..n]

myRepeat times = (cycle [times])

subseq start end list = drop start' $ take end' list
    where 
        start' = max 0 start 
        end' = min (length list) end

inFirstHalf elem list = if list !! elem <= mitad 
        then True 
        else False
    where 
        mitad = length(list) `div` 2
