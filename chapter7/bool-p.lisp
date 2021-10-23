(print (mapcar #'(lambda (x) (if (or (eq x t)
                                     (eq x nil))
                               t
                               nil))
               '(t nil 1)))

