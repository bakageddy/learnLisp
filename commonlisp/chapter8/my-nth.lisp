(defun my-nth (index list-of-elements)
  (cond ((and (not (zerop index))
           (null list-of-elements)) nil)
        ((not index) (car list-of-elements))
        (t (my-nth (1- index)
                   (cdr list-of-elements)))))

(print (my-nth 1000 '(a b c)))
