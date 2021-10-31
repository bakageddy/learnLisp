(defun sum-numbers (list-of-things)
  (cond ((null list-of-things) 0)
        ((numberp (first list-of-things))
         (+ (first list-of-things) (sum-numbers (rest list-of-things))))
        (t (sum-numbers (rest list-of-things)))))

(print (sum-numbers '(3 BEARS 3 BOWLS AND 1 GIRL)))
