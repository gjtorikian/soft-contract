(module f
  (provide
   [f (int? . -> . int?)])
  (define (f x)
    (if (zero? x) 0
        (if (zero? (f (sub1 x))) 7 8))))

(require f)
(f •)