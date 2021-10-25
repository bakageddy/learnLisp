(defun throw-dice ()
  (let ((one-throw (throw-die))
        (two-throw (throw-die)))
    (print (list one-throw two-throw))))

(defun throw-die ()
  (1+ (random 6)))

(throw-dice)
