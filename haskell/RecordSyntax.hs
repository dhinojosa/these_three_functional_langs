
data Person = Person {firstName :: String,
                      lastName  :: String,
                      age :: Int}

main = do 
         let person = Person "Haskell" "Curry" 55
         print . firstName $ person
         putStrLn . show . lastName $ person
         putStrLn . show . age $ person
