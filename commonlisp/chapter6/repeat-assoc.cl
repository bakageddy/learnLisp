(setf *atlas*
  '((pennsylvania . (pittsburgh johnstown))
    (new-jersey . (newark princeton trenton))
    (ohio . (columbus))))

(defun get-cities (table-of-cities state)
  (cdr (assoc state table-of-cities)))

(print (get-cities *atlas* 'pennsylvania))
(print (get-cities *atlas* 'new-jersey))
