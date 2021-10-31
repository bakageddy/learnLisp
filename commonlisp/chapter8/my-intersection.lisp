(defun my-intersection (set1 set2)
  (cond ((null set2) nil)
        ((null set1) nil)
        ((member (first set2) set1)
         (cons (first set2) (my-intersection set1 (rest set2))))
        (t (my-intersection set1 (rest set2)))))

(print (my-intersection '(1 2 3) '(1 2 3)))
(print (my-intersection '() '(1 2 3)))
