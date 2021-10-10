;; Make a absolute function with cond macro

(defun my-abs (x)
  (cond ((> x 0) x)
        ((< x 0) (- 0 x))
        (t 0)))

(print (my-abs 10))
(print (my-abs 0))
(print (my-abs -10))
