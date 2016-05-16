(def my-list [1 2 3 4 5])
(println (filter #(= (mod % 2) 0) my-list))
