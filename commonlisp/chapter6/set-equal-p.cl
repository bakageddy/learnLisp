(defun set-equal-p (set1 set2)
  (and (eq (length set1)
           (length set2))
       (subsetp set1 set2)
       (subsetp set2 set1)))

; (print (set-equal-p '(RED BLUE GREEN) '(GREEN BLUE RED YELLOW)))

(defun proper-subset-p (set1 set2)
  "Checks if the first input is a proper-subset of the second set"
  (and (not (set-equal-p set1 set2))
       (subsetp set1 set2)))

; (print (proper-subset-p '(1 2 3 5) '(1 2 3 4)))
; (print (proper-subset-p '(1 2 3) '(1 2 3 4)))
