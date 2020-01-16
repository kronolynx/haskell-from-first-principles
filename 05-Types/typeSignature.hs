module TypeSignature where 

    -- write a type signature
    functionH :: [a] -> a
    functionH (x:_) = x

    functionC :: Ord a => a -> a -> Bool
    functionC x y = 
        if (x > y) then True else False
    
    functionS :: (a, b) -> b
    functionS (x, y) = y

    -- Write the function
    myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
    myFunc xToY yToZ _ (a, x) = (a, yToZ $ xToY x)

    i :: a -> a
    i a = a

    c :: a -> b -> a
    c a b = a

    c' :: a -> b -> b
    c' a b = b

    r :: [a] -> [a]
    r a = a

    co :: (b -> c) -> (a -> b) -> a -> c
    co bToC aToB a = bToC $ aToB a

    a' :: (a -> b) -> a -> b
    a' aToB a = aToB a 

    -- Fix it
    fstString :: [Char] -> [Char]
    fstString x = x ++ " in the rain"

    sndString :: [Char] -> [Char]
    sndString  x = x ++ " over the rainbow"

    sing = if (x > y) then fstString x else sndString y
        where x = "Singin"
              y = "Somewhere"