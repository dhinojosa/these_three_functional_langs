

addThree1Arg :: Int -> Int
addThree1Arg x = x + 3

addThree2Arg :: Int -> Int -> Int
addThree2Arg x y = x + y + 3

(~~) :: Int -> Int -> Int
x ~~ y = x * y + 14

main = do 
         putStrLn(show(addThree1Arg 4)) --Note: addThree1Arg(4)
         putStrLn(show(addThree2Arg 5 10))
         putStrLn(show(5 ~~ 10))
         putStrLn(show(16 `addThree2Arg` 5))
         putStrLn(show(12 `mod` 3))
