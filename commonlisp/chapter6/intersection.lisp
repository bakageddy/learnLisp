(defun foo (first-set second-set)
  (let ((int-of (intersection first-set second-set))
        (uni-of (union first-set second-set)))
    (remove-if-not #'(complement member) ;; I don't know what i am doing
(print (foo '(1 2 3 4) '(1 3 5)))
