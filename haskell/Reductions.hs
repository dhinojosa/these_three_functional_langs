
main = do
         let list = [1,2,3,4,5]
         putStrLn . show $ foldl (\total next -> total + next) 0 list
         putStrLn . show $ foldr (\next total-> total + next)  0 list
