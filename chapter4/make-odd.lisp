(defun make-odd (x)
  (cond ((not (oddp x)) (+ x 1))
        (t x)))

(print (make-odd 3))
(print (make-odd 4))
(print (make-odd -2))
