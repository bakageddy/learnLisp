(defun remove-this (element list)
  (if (listp list)
    (remove element list)
    nil))

(print (remove-this 'a '(b a n a n a)))
(print (remove-this 'a 'b))
