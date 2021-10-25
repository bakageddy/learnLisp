(defun my-intersection (set1 set2)
  (remove-if-not #'(lambda (x)
                     (if (member x set2)
                       t
                       nil))
                 set1))

(print (my-intersection '(1 2 3 4 5)
                        '(1 2 3)))
