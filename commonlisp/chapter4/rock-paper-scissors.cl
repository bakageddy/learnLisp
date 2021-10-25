(defun play-a-game (player1 player2)
  (or (and (eq player1 player2) 'TIE)
      (and (eq player1 'ROCK) (eq player2 'SCISSORS) 'FIRST)
      (and (eq player1 'ROCK) (eq player2 'PAPER) 'SECOND)
      (and (eq player1 'PAPER) (eq player2 'ROCK) 'FIRST)
      (and (eq player1 'PAPER) (eq player2 'SCISSORS) 'SECOND)
      (and (eq player1 'SCISSORS) (eq player2 'ROCK) 'SECOND)
      (and (eq player1 'SCISSORS) (eq player2 'PAPER) 'FIRST)))

(print (play-a-game 'ROCK 'SCISSORS))
(print (play-a-game 'SCISSORS 'SCISSORS))



