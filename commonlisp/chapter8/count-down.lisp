(defun count-down (number)
  (if (zerop number) ;; Doesn't include zero
    nil
    (cons number (count-down (1- number)))))

(print (count-down 5))

(defun count-down-to-zero (number)
  (if (zerop number)
    '(0)
    (cons number (count-down-to-zero (1- number)))))

(print (count-down-to-zero 5))
