(defun fibonacci (n)
  (cond ((eq n 0) 1)
        ((eq n 1) 1)
        (t (+ (fibonacci (1- n))
              (fibonacci (- n 2))))))

(print (fibonacci 5))

;; Very short infinite recursive func

;; (defun id ()
;;   (id))

;; (print (id))
