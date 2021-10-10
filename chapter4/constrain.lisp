(defun constrain (x max min)
  (cond ((> x max) max)
        ((< x min) min)
        (t x)))

(print (constrain 92 50 -50))
(print (constrain 3 50 -50))
