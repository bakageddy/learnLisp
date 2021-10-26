(defun my-nth (index list-of-ele)
  (cond ((zerop index) (first list-of-ele))
        ((null list-of-ele) 'index-out-of-range/null-list)
        (t (my-nth (1- index) (rest list-of-ele)))))

(print (my-nth 2 '(1 2 3)))
(print (my-nth 1 '(1 2 3)))
