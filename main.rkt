#lang racket

(define (my-random min max)
  (random min (add1 max)))

(define (make-a-guess correct)
  (printf "Enter your guess: ")
  (let ([guess (string->number (read-line))])
    (cond
      [(null? guess) (printf "Oops, that doesn't look like a number. Try again!\n") (make-a-guess correct)]
      [(< guess correct) (printf "Too low. Guess higher!\n") (make-a-guess correct)]
      [(> guess correct) (printf "Too high! Try a smaller number.\n") (make-a-guess correct)]
      [else (printf "Congrats! The secret number was ~a.\n" correct)])))

(define (guessing-game)
  (printf "Welcome to the number guesser!\n")
  (let ([correct (my-random 1 100)])
    (make-a-guess correct)))


(guessing-game)
