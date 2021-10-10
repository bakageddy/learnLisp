(defun mid-add1 (x bruh)
  (list (first bruh) (+ x (second bruh)) (third bruh)))

(print (mid-add1 1 '(take 2 cookies)))
