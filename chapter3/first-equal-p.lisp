(defun firstp (x y)
  (eq x (car y)))

(print (firstp 'foo '(foo bar baz)))
