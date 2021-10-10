(defun add-length (lol)
  (cons (length lol) lol))

(print (add-length '(a b c)))
(print (add-length (add-length '(a b c))))
