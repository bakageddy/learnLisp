(defun none-odd (list-of-elements)
  (every #'evenp list-of-elements))

(defun not-none-odd (list-of-elements)
  (not (none-odd list-of-elements)))

(print (none-odd '(10 12)))
