
main = do
       let list = [1,2,3,4,5]
       putStrLn . show $ filter (\x -> x `mod` 2 == 0) list

