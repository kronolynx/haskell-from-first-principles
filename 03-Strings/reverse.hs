module Reverse where
-- only works with "Curry is Awesome" as stated in the exercise
rvrs :: String -> String
rvrs x = drop 9 x ++ " " ++ (take 2 $ drop 6 x) ++ " " ++ take 5 x

main :: IO()
main = print $ rvrs "Curry is Awesome"
