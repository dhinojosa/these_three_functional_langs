intMaybeMonad :: Maybe Int -> Maybe Int -> Maybe Int
intMaybeMonad ma mb = do 
                        a <- ma
                        b <- mb
                        return (a * b)
main = do 
         let m = Just 10
         let f2 = (\i -> Just (i + 10))
         putStrLn . show $ fmap f2 m
         putStrLn . show $ m >>= f2

         let x2 = Just 4
         let y2 = Just 5
         let f3 = x2 >>= (\x -> y2 >>= (\y -> return (x + y)))
         putStrLn . show $ f3
        
         putStrLn . show $ intMaybeMonad (Just 30) (Just 100)
