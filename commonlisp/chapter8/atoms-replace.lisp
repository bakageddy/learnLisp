(defun atoms-repl (tree-me symbol)
  (cond ((null tree-me) nil)
        ((atom tree-me) symbol)
        (t (cons (atoms-repl (car tree-me) symbol)
                 (atoms-repl (cdr tree-me) symbol)))))

(print (atoms-repl '(dinesh kumar is the best in the world . wow) 'foo))
