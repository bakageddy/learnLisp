(defun more-than-half-p (x y)
  (> x (half y)))

(defun half (y)
  (/ y 2))

(print (more-than-half-p 10 12))
