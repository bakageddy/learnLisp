(setf ducks '(huey dewey louis))
(defun is-it-there (it this-list)
  (member it this-list))

(print (is-it-there 'louis ducks))

(defun before-p (element after-element elements)
  (member element (member after-element elements)))

(print (before-p 'dewey 'huey ducks))
