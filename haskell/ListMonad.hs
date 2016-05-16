
intListMonad :: [Int] -> [Int] -> [Int]
intListMonad as bs = do
                    a <- as
                    b <- bs
                    return (a + b)
main = do 
         let x = [1,2,3,4,5]
         let f = (\i -> [i - 1, i, i + 1])
         putStrLn . show $ fmap f x
         putStrLn . show $ x >>= f

         let x2 = [1,2,3,4,5]
         let y2 = [8,9,10,11,12]
         let f3 = x2 >>= (\x -> y2 >>= (\y -> return(x + y)))
         putStrLn . show $ f3

         putStrLn . show $ intListMonad x2 y2
