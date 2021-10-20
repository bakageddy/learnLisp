(defun craps (my-throw)
  (cond ((instant-win-p my-throw) 'WIN)
        ((instant-loss-p my-throw) 'LOSS)
        (t nil)))

(defun no-craps ()
  (let ((throw (throw-dice)))
    (cond ((eq (craps throw) 'WIN)
            (list 'THROW (first throw) 'AND (second throw) '-- (sum throw) 'YOU 'WIN))
          ((eq (craps throw) 'LOSS)
            (list 'THROW (first throw) 'AND (second throw) '-- 'SNAKEYES 'YOU 'LOSE))
          (t
            (list 'THROW (first throw) 'AND (second throw) '-- 'YOUR 'POINT 'IS (sum throw))))))

(defun throw-dice ()
  (let ((one (1+ (random 6)))
        (two (1+ (random 6))))
    (list one two)))

(defun instant-win-p (my-throw)
  (or (eq (sum my-throw) 7)
      (eq (sum my-throw) 11)))

(defun instant-loss-p (my-throw)
  (or (eq (sum my-throw) 2)
      (eq (sum my-throw) 3)
      (eq (sum my-throw) 12)))

(defun sum (list-of-items)
  (reduce #'+ list-of-items))

; (print (craps '(1 1)))
; (print (craps '(6 6)))
; (print (craps '(6 5)))

(print (no-craps))
(print (no-craps))
(print (no-craps))
(print (no-craps))
(print (no-craps))
(print (no-craps))
(print (no-craps))
