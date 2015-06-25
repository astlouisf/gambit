(declare (extended-bindings) (not constant-fold) (not safe))

(define s1 (##bignum.make 3 #f #f))
(define s2 (##bignum.make 3 #f #t))

(define (test x)
  (println (if (##not x) 11 22)))

(test s1)
(test s2)
