;; Please don't do this.

(defun laugh (n)
  (cond ((zerop n) nil)
        (t (cons 'ha (laugh (1- n))))))

(print (laugh 10))
