(defun greater-than-5-p (x)
  (if (> x 5)
    t
    nil))

(print (mapcar #'greater-than-5-p '(20340 -5 -6)))
