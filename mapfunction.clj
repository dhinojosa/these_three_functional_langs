

(def my-list [1,2,3,4,5])

(println (map #(+ % 1) my-list))

(println (map #(+ % 1) nil)) ;;truthiness
