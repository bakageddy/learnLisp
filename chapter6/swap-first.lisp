(defun swap-first-and-last (list-of-words)
  (let ((one (list (car list-of-words)))
        (two (car (last list-of-words)))
        (my-list (reverse (cdr (reverse (cdr list-of-words))))))
    (append (cons two my-list) one)))

(print (swap-first-and-last '(you cant buy love)))
