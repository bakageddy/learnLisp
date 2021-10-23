(defun count-the (a-sentence)
  (length (remove-if-not #'(lambda (x)
                             (if (eql x 'THE)
                               t
                               nil))
                         a-sentence)))

(print (count-the '(the people of reddit)))
