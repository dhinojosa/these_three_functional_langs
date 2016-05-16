
(def add-three-1-arg (fn [x] (+ x 3)))

(defn add-three-1-arg-diff [x] (+ x 3))

(defn add-three-2-arg [x y] (+ x y 3))

;; New
(defn add-function-to-number [n f] (f n))

(println (add-three-1-arg 14))

(println (add-three-1-arg-diff 14))

(println (add-three-2-arg 40 90))

;New
(println (add-function-to-number 10 add-three-1-arg))

(println (add-function-to-number 30 (fn [x] (+ x 10))))

(println (add-function-to-number 30 #(+ % 10)))

(println (add-function-to-number 30 #(+ %1 10)))

(println (add-function-to-number 50 (partial add-three-2-arg 6)))

(def fg (comp (partial take 3) reverse))

(println (apply str (fg "Hello")))










