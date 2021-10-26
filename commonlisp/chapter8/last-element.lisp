(defun last-element (list)
  (if (null (cdr list))
    (car list)
    (last-element (cdr list))))

(print (last-element '(1 2 3)))
