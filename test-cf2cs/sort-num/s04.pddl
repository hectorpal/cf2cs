
(define (problem s4)
    (:domain s)
    (:init (and  
              (or (less n1 n2) (not (less n1 n2))) 
              (or (less n1 n3) (not (less n1 n3))) 
              (or (less n1 n4) (not (less n1 n4))) 
              (or (less n2 n1) (not (less n2 n1))) 
              (or (less n2 n3) (not (less n2 n3))) 
              (or (less n2 n4) (not (less n2 n4))) 
              (or (less n3 n1) (not (less n3 n1))) 
              (or (less n3 n2) (not (less n3 n2))) 
              (or (less n3 n4) (not (less n3 n4))) 
              (or (less n4 n1) (not (less n4 n1))) 
              (or (less n4 n2) (not (less n4 n2))) 
              (or (less n4 n3) (not (less n4 n3))) 
    ))
    (:goal (and 
             (less n1 n2) 
             (less n2 n3) 
             (less n3 n4) 
    ))
)

