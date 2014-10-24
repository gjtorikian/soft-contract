(module f (provide [f (int? (int? . -> . any) . -> . any)])
  (define (f x g) (g (+ x 1))))
(module h (provide [h ([z : int?] . -> . ((and/c int? (>/c z)) . -> . any))])
  (define (h z) (λ (y) 'unit)))
(module main (provide [main (int? . -> . any)])
  (require f h)
  (define (main n)
    (if (>= n 0) (f n (h n)) 'unit)))

(require main)
(main •)