(defun two-p (x)
  (zerop (sub2 x)))

(defun sub2 (x)
  (- x 2))


(print (two-p 2))
(print (two-p 1))
