(setf states
  '((sleeping . eating)
    (eating . waiting)
    (waiting . programming)
    (programming . debugging)
    (debugging . sleeping)))

(defun nerdus (state)
  (cdr (assoc state states)))

; (print (nerdus 'sleeping))
; (print (nerdus 'playing-guitar))

(defun sleepless-nerd (state)
  (or (and (equal state 'debugging) 'eating)
      (nerdus state)))

; (print (sleepless-nerd 'debugging))
; (print (sleepless-nerd 'eating))

(defun nerd-on-caffeine (state)
  (nerdus (nerdus state)))

(print (nerd-on-caffeine 'eating))
