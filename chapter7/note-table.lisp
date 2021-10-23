(setf note-table
  '((c          .   1)
    (c-sharp    .   2)
    (d          .   3)
    (d-sharp    .   4)
    (e          .   5)
    (f          .   6)
    (f-sharp    .   7)
    (g          .   8)
    (g-sharp    .   9)
    (a          .   10)
    (a-sharp    .   11)
    (b          .   12)))

(defun numbers (list-of-notes)
  (mapcar #'(lambda (x)
              (cdr (assoc x note-table)))
          list-of-notes))

; (print (numbers '(E D C D E E E)))

(defun notes (list-of-numbers)
  (mapcar #'(lambda (x)
              (car (rassoc x note-table)))
          list-of-numbers))

; (print (notes '(5 3 1 3 5 5 5)))

(defun raise (n list-of-numbers)
  (mapcar #'(lambda (x)
              (+ x n))
          list-of-numbers))

; (print (raise 5 '(5 3 1 3 5 5 5)))

(defun normalize (list-of-numbers)
  (mapcar #'(lambda (x)
              (mod x 12))
          list-of-numbers))

; (print (normalize '(6 10 13)))

(defun transpose (by song)
  (notes (normalize (raise by (numbers song)))))

(print (transpose 5 '(E D C D E E E)))



