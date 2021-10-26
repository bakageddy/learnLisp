(defun add (x y)
  (if (zerop y)
    x
    (add (1+ x) (1- y))))

(print (add 10 12))
