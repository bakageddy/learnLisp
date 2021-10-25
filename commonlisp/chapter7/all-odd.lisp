(defun all-odd (list-of-elements)
  (every #'oddp list-of-elements))

(defun not-all-odd (list-of-elements)
  (not (all-odd list-of-elements)))

(print (all-odd '(1 3 5)))
