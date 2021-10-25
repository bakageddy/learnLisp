(defun between-this-range (x y list)
  (remove-if-not #'(lambda (a)
                     (if (and (> a x)
                              (< a y))
                       t
                       nil))
                 list))

(print (between-this-range 1 5 '(1 2 3 4 5 6)))
