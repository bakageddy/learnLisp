(defun not-one-p (x)
  (not (one-p x)))

(defun one-p (x)
  (= x 1))

(print (not-one-p 10))
