(defun count-cons (tree-me)
  (cond ((atom tree-me) 0)
        (t (+ 1 (count-cons (car tree-me))
              (count-cons (cdr tree-me))))))

(print (count-cons '(((foo)))))
