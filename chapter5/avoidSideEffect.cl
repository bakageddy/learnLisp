;; Avoiding side effects.

(defun bruh ()
  (let ((coin-toss (random 101)))
    (cond ((> coin-toss 50) 'heads)
          ((< coin-toss 50) 'tails)
          ((eq coin-toss 50) 'edge))))

(print (bruh))
