

(def my-list [1 2 3 4 5])
(println (reduce + my-list)) ;; fold left equivalent
(println (reduce #(+ %1 %2) my-list))
