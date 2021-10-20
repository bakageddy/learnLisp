(defun local-function (x)
  (setf *a-variable* x)
  (let ((another-variable x))
    (format t "~d~%" (eq another-variable *a-variable*))
    (print "Finished Local Scope")
    (format t "~%"))
  (format t "~d~%" (eq another-variable *a-variable*))) ;; Doesn't exist, raises a error.

(local-function 10)
