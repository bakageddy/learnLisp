(defun how-compute (x y z)
  (cond ((eq (+ x y) z) 'ADD)
        ((eq (- x y) z) 'SUB)
        ((eq (* x y) z) 'MUL)
        ((eq (/ x y) z) 'DIV)
        (t '(beats me))))


(print (how-compute 3 4 6))
(print (how-compute 3 4 7))
