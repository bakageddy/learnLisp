(defun my-subst (original replace tree)
  (cond ((null tree) nil)
        ((eq tree original) replace)
        ((atom tree) tree)
        (t (cons (my-subst original replace (car tree))
                 (my-subst original replace (cdr tree))))))

(print (my-subst '10 '13 '(1 2 3 ((10)) 10)))
