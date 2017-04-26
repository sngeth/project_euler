module Main where

pgen (p:xs) = p:pgen [x | x <- xs, x `mod` p > 0 ]
nPrime x = x `take` pgen [2..]

main = print $ last $ nPrime 10001
