(setf *rooms*
  '((living-room (north . front-stairs)
                 (south . dining-room)
                 (east . kitchen))
    (upstairs-bedroom (west . library)
                      (south . front-stairs))
    (dining-room (north . living-room)
                 (east . pantry)
                 (west . downstairs-bedroom))
    (kitchen (west . living-room)
             (south . pantry))
    (pantry (north . kitchen)
            (west . dining-room))
    (downstairs-bedroom (north . back-stairs)
                        (east . dining-room))
    (back-stairs (south . downstairs-bedroom)
                 (north . library))
    (front-stairs (north . upstairs-bedroom)
                  (south . living-room))
    (library (east . upstairs-bedroom)
             (south . back-stairs))))

(setf *location* 'pantry)
(defun choices (rooms room-name)
  (cdr (assoc room-name rooms)))

; (print (choices *rooms* 'pantry))

(defun look (direction room-name rooms)
  (or (choices (choices rooms room-name) direction)
      nil))

; (print (look 'north 'pantry *rooms*))

(defun set-location (place)
  place)

(defun how-many-choices (location rooms)
  (length (choices rooms location)))

; (print (how-many-choices *location* *rooms*))

(defun up-stairs-p (location)
  (or (eq location 'library)
      (eq location 'upstairs-bedroom)))

(defun on-stairs-p (location)
  (or (eq location 'front-stairs)
      (eq location 'back-stairs)))

; (print (up-stairs-p 'library))
; (print (on-stairs-p 'library))

(defun where (location name)
  (let ((up-or-down (or (and (up-stairs-p location)
                             'upstairs)
                        'downstairs))
        (on-or-of (if (eq location 'front-stairs)
                    'front-stairs
                    nil)))
    (or (and (eq location 'front-stairs)
             (list name 'is 'on location))
        (and (eq location 'downstairs)
             (list name 'is 'on location))
        (and up-or-down
             (list name 'is up-or-down 'in 'the location)))))

; (print (where 'library 'robbie))
; (print (where 'kitchen 'robbie))
; (print (where 'front-stairs 'robbie))
; (print (where 'downstairs 'robbie))

(defun move (direction current-location)
  (if (look direction current-location *rooms*)
    (where direction 'ROBBIE)
    (list 'ouch! 'robbie 'hit 'a 'wall)))

; (print (move 'south 'pantry))
; (print (move 'north 'pantry))

(defun move-me-there (direction from)
    (setf *location* (look direction from *rooms*)))
(move-me-there 'west 'pantry)
(move-me-there 'west 'dining-room)
(move-me-there 'north 'downstairs-bedroom)
(move-me-there 'north 'back-stairs)
(print *location*)
