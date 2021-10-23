(defun remove-first-three (word from-this)
  (remove word from-this :count 3))

(defun remove-last-three (word from-this)
  (remove word from-this :count 3 :from-end t)) ;; it's like name arguements.

(print (remove-first-three 'a '(B A N A N A - P A N D A)))
(print (remove-last-three 'a '(B A N A N A - P A N D A)))
