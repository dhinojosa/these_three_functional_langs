
data Person = Person String String Int

firstName :: Person -> String
firstName (Person fn _ _) = fn

lastName :: Person -> String
lastName (Person _ ln _) = ln

age :: Person -> Int
age (Person _ _ ag) = ag

main = do 
         let person = Person "Haskell" "Curry" 55
         print . firstName $ person
         putStrLn . show . lastName $ person
         putStrLn . show . age $ person
