(defun find-nested (list-of-list)
 (car (find-if #'(lambda (x) (not (null x))) list-of-list)))

(print (find-nested '(() (1 2 3))))
