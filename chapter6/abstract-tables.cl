(defun retrieve-elements (table-of-things my-thing)
  (cdr (assoc my-thing table-of-things)))

(setf words
    '((one . ichi)
      (two . ni)
      (three . san)
      (four . yon)
      (five . go)
      (six . roku)
      (seven . nana)
      (eight . hachi)
      (nine . kyuu)))

(print (retrieve-elements words 'one))
