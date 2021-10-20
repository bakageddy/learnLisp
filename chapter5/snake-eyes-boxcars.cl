;; Checks if both of them are eq
;; then checks if one of them is 1 or 6

(defun snake-eyes-p (x)
  (and (eq (first x)
           (second x))
       (or (eq (first x) 1)
           (eq (first x) 6))))


(print (snake-eyes-p '(1 1)))
(print (snake-eyes-p '(5 1)))
(print (snake-eyes-p '(6 6)))
