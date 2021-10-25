(define atom?
  (lambda (l)
    (and (not (pair? l))
         (not (null? l)))))

(define lat? (lambda (l)
               (cond ((null? l) #t)
                     ((atom? (car l)) (lat? (cdr l)))
                     (else #f))))

(print (lat? '(1 2 3)))
