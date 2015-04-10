-- Cooper Lebrun <cooperlebrun@gmail.com>

import Data.List.Split -- provides splitOn, used in toDigits

double :: Integer -> Integer
double n = n * 2

toDigits :: Int -> [Int]
toDigits n
  | n < 1     = []
  | otherwise = map (read::String->Int) (tail (splitOn "" (show n))) -- can be generalized to Num?

toDigitsRev :: Int -> [Int]
toDigitsRev n = reverse (toDigits n)

main = undefined
