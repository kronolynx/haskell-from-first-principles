addOneIfOdd n = case odd n of
    True -> f n
    false -> n
    where f n = n + 1

addOneIfOdd' n = case odd n of
    True -> (\x -> x + 1) n
    false -> n

addFive x y = (if x > y then y else x) + 5

addFive' = \x -> \y -> ((if x > y then y else x) + 5)

mflip f = \x -> \y -> f y x

mflip' f x y = f y x