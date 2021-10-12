(defun square-me (x)
  (or (and (oddp x) (> x 0) (* x x))
      (and (oddp x) (< x 0) (* 2 x))
      (/ x 2.0)))

(print (square-me 10))
(print (square-me 11))
(print (square-me -11))
