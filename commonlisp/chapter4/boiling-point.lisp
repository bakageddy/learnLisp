(defun boiling-point (scale value)
  (or (and (>= value 100) (eq scale 'C))
      (and (>= value 212) (eq scale 'F))
      nil))

(print (boiling-point 'F 100))
(print (boiling-point 'C 100))
