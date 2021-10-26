(defun all-odd-p (list-of-numbers)
  (cond ((not (numberp (first list-of-numbers))) t) ;; if it's not a number, skip.
        ((null list-of-numbers) t)
        ((oddp (first list-of-numbers)) 
            (and t (all-odd-p (rest list-of-numbers))))
        (t nil)))

(print (all-odd-p '(1 2 3)))
(print (all-odd-p '(1 3 3)))
