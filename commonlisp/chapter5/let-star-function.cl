(defun foo (old new)
  (let* ((diff (- new old))
         (proportion (/ diff old))
         (percentage (* proportion 100.0)))
    (list 'Price 'Changed 'from new '- old '= diff 'which 'is percentage)))

(print (foo 1.25 1.35))
