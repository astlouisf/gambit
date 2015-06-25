(declare (extended-bindings) (not constant-fold) (not safe))

(define (test x)
  (define b (##make-promise x))
  (println (if (##will? b) "will" "not will"))
  (println (if (##will? (##will-testator b)) "will" "will")))

(test (##make-will 1 (lambda (x) "executing action 0")))
(test (##make-will 'a (lambda (x) "executing action 1")))
