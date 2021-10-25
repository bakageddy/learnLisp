(defun range-between-10 (list-of-numbers k)
  (find-if #'(lambda (x)
               (if (and (>= x (- k 10))
                        (<= x (+ k 10)))
                 t
                 nil)) list-of-numbers))

(print (range-between-10 '(10 30 40) 50))
