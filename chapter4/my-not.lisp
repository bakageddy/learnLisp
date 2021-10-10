(defun my-not (input)
  (if (eq input t)
    nil
    t))

(print (my-not nil))
(print (my-not t))
