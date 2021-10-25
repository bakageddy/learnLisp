(defun replace-with-we (list-of-words)
  (subst 'we 'i list-of-words))

(print (replace-with-we '(if i learn lisp i will be pleased)))
