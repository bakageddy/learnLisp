(defun rotate-left (list-of-items)
  (let ((first-element (first list-of-items))
        (rest-of-them (rest list-of-items)))
    (append rest-of-them (list first-element))))

(defun rotate-right (list-of-items)
  (let ((last-element (car (last list-of-items)))
        (rest-of-them (rest (reverse list-of-items))))
    (cons last-element (reverse rest-of-them))))

(print (rotate-left '(a b c d e)))
(print (rotate-right '(a b c d e)))
