(defun square-list (list-of-elements)
  (if (null list-of-elements)
    nil
    (cons (square (first list-of-elements))
          (square-list (rest list-of-elements)))))

(defun square (x)
  (* x x))

(print (square-list '(3 4 5 6)))
