(defvar database
  '((b1 shape brick)
    (b1 color green)
    (b1 size small)
    (b1 supported-by b2)
    (b1 supported-by b3)
    (b2 shape brick)
    (b2 color red)
    (b2 size small)
    (b2 supports b1)
    (b2 left-of b3)
    (b3 shape brick)
    (b3 color red)
    (b3 size small)
    (b3 supports b1)
    (b3 right-of b2)
    (b4 shape pyramid)
    (b4 color blue)
    (b4 size large)
    (b4 supported-by b5)
    (b5 shape cube)
    (b5 color green)
    (b5 size large)
    (b5 supports b4)
    (b6 shape brick)
    (b6 color purple)
    (b6 size large)))

(defun match-element (property1 property2)
  (or (and (eq property1 property2) t)
      (or (eq property1 '?) (eq property2 '?))
      nil))

; (print (match-element 'red 'red))
; (print (match-element 'red '?))
; (print (match-element 'red 'blue))

(defun match-triple (pattern assertion)
  (every #'match-element pattern assertion))

; (print (match-triple '(b2 color red) '(b2 color green)))
; (print (match-triple '(b2 color red) '(b2 color ?)))

(defun fetch (pattern)
  (remove-if-not #'(lambda (x)
             (match-triple pattern x))
         database))

; (print (fetch '(b2 color ?)))
; (print (fetch '(? supports b1)))
; (print (fetch '(b4 shape ?)))
; (print (fetch '(b2 ? b3)))
; (print (fetch '(? color ?)))
; (print (fetch '(b4 ? ?)))

(defun pattern-gen (block feature)
  (list block feature '?))

; (print (pattern-gen 'b3 'color))

(defun supporters (block)
  (fetch (list block 'supported-by '?)))

; (print (mapcar #'third (supporters 'b1)))

(defun return-shapes (block)
  "returns shapes supported by the given block"
   (mapcar #'third (supporters block)))

(defun shape-of (blocks)
  (mapcar #'(lambda (x)
             (third (car x)))
    (mapcar #'(lambda (x)
             (fetch (list x 'shape '?)))
             blocks)))

; (print (shape-of (return-shapes 'b4)))
; (print (shape-of (return-shapes 'b1)))

(defun supp-cube (block)
  (every #'(lambda (x)
             (equal x 'cube))
         (shape-of (return-shapes block))))

; (print (supp-cube 'b4))
; (print (supp-cube 'b1))

(defun description (block)
  (reduce #'append (mapcar #'cdr
                           (fetch (list block '? '?)))))

(print (description 'b1))
(print (description 'b4))

(setf database (append '((b1 made-of wood)) database))
(setf database (append '((b2 made-of plastic)) database))

(print database)
