

main = return("Hello") >>= (\x ->
       return("World") >>= (\y ->
       return(x ++ y)))
