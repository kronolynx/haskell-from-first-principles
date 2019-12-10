module Print3Broken where

main :: IO()
main = do
  putStrLn greeting

  printSecond
  where greeting = "Yarrrr"
        printSecond = do putStrLn greeting
