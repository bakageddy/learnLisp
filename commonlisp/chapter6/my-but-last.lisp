(defun my-butlast (of-this-list)
  (reverse (rest (reverse of-this-list))))

(print (my-butlast '(ROSES ARE RED)))

;; Also palindrome

(defun is-this-palindrome? (this-list)
  (if (equalp (reverse this-list) this-list)
    T
    nil))

; (print (is-this-palindrome? '(A B C D C B A)))

(defun make-palindrome (from-this)
  (append from-this (reverse from-this)))

(print (make-palindrome '(YOU AND ME)))
