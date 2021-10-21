;; Return the author from the given
;; Set of entries

(setf my-entries
      '((war-and-peace . leo-tolstoy)
        (the-c-programming-language . k-&-r)
        (common-lisp-symbolic-computation . david-s-touretzky)
        (sicp . god)))
(defun get-author (entries book-name)
  (cdr (assoc book-name entries)))

(print (get-author my-entries 'sicp))
