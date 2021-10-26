(defun search-odd (x)
  (cond ((null x) nil)
        ((oddp (car x)) (car x))
        (t (search-odd (cdr x)))))

(defun search-odd-using-if (x)
  (if (null x)
    nil
    (if (oddp (car x))
      (car x)
      (search-odd (cdr x)))))

(print (search-odd '(10 20 30 1)))
(print (search-odd-using-if '(10 20 30 1)))
