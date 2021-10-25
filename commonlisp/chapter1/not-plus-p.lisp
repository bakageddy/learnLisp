(defun not-plus-p (x)
  (not (plus-p x)))

(defun plus-p (x)
  (> x 0))

(print (not-plus-p 10))
