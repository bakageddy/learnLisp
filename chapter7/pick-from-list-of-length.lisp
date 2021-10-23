(defun pick-if (this-length from-this-list)
  (remove-if-not #'(lambda (x)
                     (if (equal (length x) this-length)
                       t nil))
                 from-this-list))

(print (pick-if 2 '((1 2) (1 2 3 4))))
