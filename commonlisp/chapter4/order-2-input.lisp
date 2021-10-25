(defun ordered (x y)
  (if (> x y)
    (list x y)
    (list y x)))

(print (ordered 2 4))
(print (ordered 3 2))
