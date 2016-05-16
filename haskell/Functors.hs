class Functor' fun where
   fmap' :: (a -> b) -> fun a -> fun b

instance Functor' [] where
   fmap' f x = map f x

instance Functor' Maybe where
   fmap' f (Just x) = Just(f x)
   fmap' f Nothing  = Nothing

main = do
         let list = [1,2,3,4,5]
         putStrLn . show $ fmap (3+) list
         let answer = Just 42
         putStrLn . show $ fmap (3*) answer
