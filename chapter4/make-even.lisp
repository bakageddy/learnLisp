(defun make-even (x)
  (if (evenp x)
    x
    (1+ x)))

(print (make-even 10))
(print (make-even 11))
