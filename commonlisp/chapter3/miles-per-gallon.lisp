(defun miles-per-gallon (initial-odometer-reading
                         final-odometer-reading
                         gallons-consumed)
  (/ (- final-odometer-reading initial-odometer-reading)
      gallons-consumed))

(print (miles-per-gallon 10 20 2))
