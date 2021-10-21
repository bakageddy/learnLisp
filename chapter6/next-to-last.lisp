(defun next-to-last (from-this-list)
  (cadr (reverse from-this-list)))

(defun another-next-to-last (from-this-list)
  (nth (- (length from-this-list) 2) from-this-list))

(setq of-this-list '(10 20 30))
(print (next-to-last of-this-list))
(print (another-next-to-last of-this-list))
