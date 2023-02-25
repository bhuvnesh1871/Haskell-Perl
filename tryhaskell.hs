(define (count-occurrences lst)
  (if (null? lst)
      '()
       (let ((first (car lst)))(cons (list (count first lst) first) (count-occurrences (remove first lst))))

(define (count item lst)
  (if (null? lst)
      0
      (if (eq? (car lst) item)
          (+ 1 (count item (cdr lst)))
          (count item (cdr lst)))))

(define (remove item lst)
  (if (null? lst)
      '()
      (let ((first (car lst)))
        (if (eq? first item)
            (remove item (cdr lst))
            (cons first (remove item (cdr lst)))))))

(count-occurrences '(a b a a a c c))
;; Output: ((1 a) (1 b) (3 a) (2 c))
