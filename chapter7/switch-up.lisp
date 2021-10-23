(print (mapcar #'(lambda (x)
                   (if (eq x 'UP)
                     'DOWN
                     'UP))
               '(UP DOWN UP DOWN)))
