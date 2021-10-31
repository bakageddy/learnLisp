;; TODO: Fixme

(defun my-set-diff (set1 set2)
  (cond ((null set1) nil)
        ((null set2) nil)
        ((member (first set2) set1)
          (my-set-diff (rest set2) set1))
        (t (cons (first set1)
                 (my-set-diff (rest set2) set1)))))

(print (my-set-diff '(10 20 30) '(10)))
