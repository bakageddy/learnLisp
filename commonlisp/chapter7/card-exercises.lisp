(setq *cards*
    '((3 . hearts)
      (5 . clubs)
      (2 . diamonds)
      (4 . diamonds)
      (ace . spades)))

(setq *colors*
    '((clubs . black)
      (diamonds . red)
      (hearts . red)
      (spades . black)))

(setq *all-ranks*
      '(2 3 4 5 6 7 8 9 10 jack queen king ace))

(defun rank (card)
  (car card))

(defun suit (card)
  (cdr card))

(defun color (card)
  (cdr (assoc (cdr card) *colors*)))

; (print (color '(6 hearts)))
; (print (color '(3 diamonds)))

(defun count-this (suit from-cards)
  (length (remove-if-not
            #'(lambda (x)
                (if (eql (suit x) suit)
                  t
                  nil))
            from-cards)))

; (print (count-this 'diamonds *cards*))

(defun first-red (cards)
  (first (remove-if-not #'(lambda (x)
                     (if (eql (color x) 'RED)
                       t
                       nil)) cards)))

(defun black-cards (cards)
  (remove-if #'(lambda (x)
                 (if (eql (color x) 'RED)
                   t nil)) cards))

; (print (first-red *cards*))
; (print (black-cards *cards*))

(defun what-ranks (suit cards)
  (mapcar #'first
          (remove-if-not #'(lambda (x)
                             (if (eql (cdr x) suit)
                               t nil))
                         cards)))

; (print (what-ranks 'diamonds *cards*))
; (print (what-ranks 'spades *cards*))

(defun higher-rank-p (card1 card2)
  (let ((rank1 (rank card1))
        (rank2 (rank card2)))
    (defun before-p (x y list-of-elements)
      (if (member y (member x list-of-elements))
        t
        nil))
    (before-p rank1 rank2 *all-ranks*)))

; (print (higher-rank-p '(ace spades) '(2 spades)))

;;; 🯀 TODO: Challenge: Do this without the hint.

; (defun highest-rank (cards)
;   (find-if
;     #'(lambda (x)
;         (if (higher-rank-p x ))
;     (mapcar #'rank cards)))

; (print (highest-rank *cards*))
