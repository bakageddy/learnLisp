(defun my-remove (element list-of-things)
  (cond ((null list-of-things) nil)
        ((eq element (first list-of-things))
         (my-remove element (rest list-of-things)))
        (t (cons (first list-of-things)
                 (my-remove element (rest list-of-things))))))

(print (my-remove 10 '(1 2 3 4 10 10)))
