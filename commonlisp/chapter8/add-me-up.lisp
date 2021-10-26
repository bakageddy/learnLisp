;; add a list of numbers together

(defun add-me-up (list-of-numbers)
  (if (null list-of-numbers)
    0
    (+ (car list-of-numbers)
       (add-me-up (cdr list-of-numbers)))))

(print (add-me-up '(2 3 7)))
