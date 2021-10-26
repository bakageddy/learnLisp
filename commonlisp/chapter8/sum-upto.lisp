(defun sum-upto (n)
  (if (zerop n)
    0
    (+ n (sum-upto (1- n)))))

(print (sum-upto 5))
