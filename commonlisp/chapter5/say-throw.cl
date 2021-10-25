(defun say-throw (a-throw)
  (cond ((eq (sum a-throw) 2) 'snake-eyes)
        ((eq (sum a-throw) 12) 'box-cars)
        (t (sum a-throw))))

(defun sum (list-of-items)
  (reduce #'+ list-of-items))

(print (say-throw '(3 4)))
(print (say-throw '(6 6)))
(print (say-throw '(1 1)))
