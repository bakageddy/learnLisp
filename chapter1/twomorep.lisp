(defun add2 (x)
  (+ x 2))

(defun two-more-p (x y)
  (= x (add2 y)))

(defun sub2 (x)
  (- x 2))

(defun two-more-p-2 (x y)
  (= (sub2 x) y))

(print (two-more-p 12 10))
