#lang racket
(define (resistance)
  (display "Вычисление сопротивления электрической цепи.")
  (newline)
  (display "Введите исходные данные:")
  (newline)
  (display "Величина первого сопротивления (Ом) = ")
  (define R1 (read))
  (newline)
  (display "Величина второго сопротивления (Ом)= ")
  (define R2 (read))
  (newline)
  (display "Тип соединения (1 - последовательное, 2 - параллельное) => ")
  (define choise (read))
  (cond
    [(= choise 1) (display (+ R1 R2))
                  (display " Ом")]
    [(= choise 2) (display "Сопротивление цепи: ")
                  (display (/ (* R1 R2) (+ R1 R2)))
                  (display " Ом")]
    [else (display"Нет такого выбора")]
    )
  (newline)
  (resistance))
(resistance)