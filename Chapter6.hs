-- Rules for recursion:
-- 1) Identify the end goal(s)
{-Generally, recursive processes come to an end. What does this end look like? For a list,
the end of the process is the empty list; for washing dishes, it’s an empty sink. After you
recognize that something is a recursive process, the first step to solving it is figuring out
when you know you’re finished. Sometimes there’s more than one goal. A telemarketer
might have to call 100 people or make 5 sales before calling it a day. In this case, the goal
is either 100 people have been called, or 5 sales have been made
-}
-- 2) Determine what happens when a goal is reached
{-
For each goal you establish in rule 1, you need to figure out what the result will be. In
the case of washing dishes, the result is that you’re finished washing the dishes. With
functions, you need to return a value, so you have to determine what value should be
returned at the end state. A typical problem programmers face is trying to think of the
goal state in terms of being the end of a long recursive process. This is usually unneces-
sary and overly complicated. Often the answer is obvious when you ask the question,
“What happens if I call my function on the goal state value?” For example, the end state
of the Fibonacci sequence is to arrive at 1; by definition, fib 1 = 1. A more mundane
example is determining the number of books you have by counting the number on each
shelf. The goal state is to have no more shelves to count; the number of books on no
shelves is 0.
-}
-- 3) List all alternate possibilities
{-
If you aren’t at your goal state, what do you have? This sounds like it can be a lot of
work, but most of the time you have only one or two alternatives to being in the goal
state. If you don’t have an empty list, you have a list with something in it. If the sink isn’t
empty, you have a sink with dishes. For the telemarketer making calls, if you still
haven’t called 100 people or made 5 sales, you have two possibilities. You can call and
make a sale, or call and not make a sale.
-}
-- 4) Determine your "rinse and repeat" process
{-
This rule is nearly identical to rule 2, except you have to repeat your process. Don’t over-
think or try to unwind the recursion. For a list, you might take the element and look at
the tail. For washing dishes, you wash a dish, put it up to dry, and look in the sink again.
The telemarketer either makes the call, records the sale, and repeats, or records that the
call was made (no sale) and repeats.
-}
-- 5) Ensure that each alternative moves you toward your goal
{-This is a big one! For every process you list in rule 4, you need to ask yourself, “Does
this move me closer to the goal?” If you keep taking the tail of a list, you’ll get the empty
list. If you keep removing dishes from the sink, you’ll have an empty sink. Recording
either sales or calls will eventually cause the counts for each to reach their goal. But sup-
pose you want to flip a coin until you get heads. The goal is getting a head: if you get
heads, you stop. The alternate is getting tails: if you get tails, you flip again. But flipping
again doesn’t ensure that you’ll ever get heads. Statistically, you should arrive there, so
in practice this would be fine, but this is a potentially dangerous function to run (imag-
ine if instead of a coin, you used something with a small chance of success).-}
myGCD::Int -> Int -> Int
myGCD a b = if remainder == 0
    then b
    else myGCD b remainder
  where remainder = a `mod` b

sayAmount n = case n of
  1 -> "one"
  2 -> "two"
  n -> "a bunch"
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

myTail :: [a] -> [a]
myTail [] = []
myTail (_:xs) = xs 

myGCDOpt :: Int -> Int -> Int
myGCDOpt num 1 = num
myGCDOPt a b
    | remainder == 0 = b
    | otherwise = myGCDOpt b remainder
  where
    remainder = a `mod` b
