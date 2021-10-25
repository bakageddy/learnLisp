(defun cycle (x)
  (cond ((= x 99) 1)
        (t (1+ x))))

(print (cycle 98))
(print (cycle 99))
