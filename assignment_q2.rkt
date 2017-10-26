#lang racket

;This is an example implementation of ins_beg,
;It obviously doesn't do what it should, so you
;can edit this function to get started.
;
;Please note the provide function is necessary
;for the unit tests to work. Please include a
;(provide) for each function you write in your
;submitted assignment.
;
;You may delete these comments!

(provide ins_beg)


(define (ins_beg el lst)
  (display "Hello, I'm ins_beg!\n")
  (list el lst)
  )

(provide ins_end)

(define (ins_end el lst)
  (list lst el)
  )



(provide cout_top_level)

(define (cout_top_level list)
  (cond ((null? list) 0)                  
        ((not (pair? list)) 1)            
        (else (+ (cout_top_level (car list))     
                 (cout_top_level (cdr list)))))
  )


(provide count_instances)

(define (count_instances list el)
 (cond ((null? list) 0)                  
        (= el (car list) 1)            
        (else (+ (cout_top_level (car list))     
                 (cout_top_level (cdr list))))

        )
  )

  
