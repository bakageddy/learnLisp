(defun my-member (list element)
  (cond ((null list) nil)
        ((eq (first list) element) list)
        (t (my-member (rest list) element))))

(print (my-member '(1 2 3 4 5) '2))
(print (my-member '(1 2 3 4 5) '100))
