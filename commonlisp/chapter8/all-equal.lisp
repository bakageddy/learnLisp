(defun all-equal (list-of-ele)
  (cond ((null (second list-of-ele)) t)
        ((eq (first list-of-ele) (second list-of-ele))
            (all-equal (rest list-of-ele)))
        (t nil)))

(print (all-equal '(1 1 1 1)))
(print (all-equal '(2 1 1 1)))
