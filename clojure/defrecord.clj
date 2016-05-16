
(defrecord Person [first-name last-name age])

(println (:first-name (Person. "Emilio" "Estevez" 50)))
