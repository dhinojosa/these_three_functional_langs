

addThree1Arg :: Int -> Int
addThree1Arg x = x + 3

addThree2Arg :: Int -> Int -> Int
addThree2Arg x y = x + y + 3

(~~) :: Int -> Int -> Int
x ~~ y = x * y + 14

addFunctionToNumber :: Int -> (Int -> Int) -> Int
addFunctionToNumber n f = f n

main = do 
         putStrLn(show(addThree1Arg 4)) --Note: addThree1Arg(4)
         putStrLn(show(addThree2Arg 5 10))
         putStrLn(show(5 ~~ 10))
         putStrLn(show(16 `addThree2Arg` 5))
         putStrLn(show(12 `mod` 3))
         putStrLn(show(addFunctionToNumber 10 addThree1Arg))
         putStrLn(show(addFunctionToNumber 12 (\d -> d + 20)))
         -- currying
         putStrLn(show(addFunctionToNumber 12 (addThree2Arg 4)))

         -- Function composition and function application
         putStrLn . show . take 3 . reverse $ "Hello"





