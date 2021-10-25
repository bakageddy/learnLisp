(defun last-element (in-this-list)
  (car (last in-this-list)))

(defun another-last (in-this-list)
  (nth (1- (length in-this-list)) in-this-list))

(setq bruh '(10 20 30))

(print (last-element bruh))
(print (another-last bruh))
