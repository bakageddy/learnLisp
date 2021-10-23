(defun my-union (x y)
  (append x (remove-if
                #'(lambda (n)
                    (member n x))
                y)))

(print (my-union '(1 2 3 4) '(1 2 3 4 5)))
