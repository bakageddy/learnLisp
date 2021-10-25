(defun throw-die ()
  (1+ (random 6)))

; (print (throw-die))

(defun throw-dice ()
  (list (throw-die) (throw-die)))

(print (throw-dice))
(print (throw-dice))

