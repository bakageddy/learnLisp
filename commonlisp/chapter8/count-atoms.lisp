(defun count-atoms (tree)
  (cond ((null tree) 0)
        ((atom tree) 1)
        (t (+ (count-atoms (car tree))
              (count-atoms (cdr tree))))))

(print (count-atoms '(1 2 3 (1 2 (1 2)))))
