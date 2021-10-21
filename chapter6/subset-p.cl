(defun my-subset-p (x y)
  (if (eq '() (set-difference x y))
    t
    nil))

(print (my-subset-p '(a i) '(a e i o u)))
(print (my-subset-p '(a x) '(a e i o u)))
