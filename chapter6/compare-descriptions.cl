;; Compares the features of the objects
;; The Objects are presented in a single list
;; separated by "-VS-"

(defun common-features (features)
  (let ((first-object (rest (member '-VS- (reverse features))))
        (second-object (rest (member '-VS- features))))
    (list (length (intersection first-object second-object)) 'COMMON 'FEATURES)))

(print (common-features '(large red shiny cube -vs- small shiny red four-sided pyramid)))
(print (common-features '(small red metal cube -vs- red plastic small cube)))

