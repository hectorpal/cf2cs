
(define (domain s) 
    (:requirements :typing :equality)
    (:types num)
    (:constants  n1 n2 n3 n4 - num)
    (:predicates (foo) (less ?n1 ?n2 - num))

        
    (:action cmpswap-1-2
     :effect (and (less n1 n2) (not (less n2 n1))         
                  (when (less n3 n1)
                        (and (less n3 n2) (not (less n2 n3))))         
                  (when (and (less n3 n1) (not (less n3 n2)))
                        (not (less n3 n1)))         
                  (when (less n2 n3)
                        (and (less n1 n3) (not (less n3 n1))))         
                  (when (and (less n2 n3) (not (less n1 n3)))
                        (not (less n2 n3)))         
                  (when (less n4 n1)
                        (and (less n4 n2) (not (less n2 n4))))         
                  (when (and (less n4 n1) (not (less n4 n2)))
                        (not (less n4 n1)))         
                  (when (less n2 n4)
                        (and (less n1 n4) (not (less n4 n1))))         
                  (when (and (less n2 n4) (not (less n1 n4)))
                        (not (less n2 n4))) 
    ))
        
    (:action cmpswap-1-3
     :effect (and (less n1 n3) (not (less n3 n1))         
                  (when (less n2 n1)
                        (and (less n2 n3) (not (less n3 n2))))         
                  (when (and (less n2 n1) (not (less n2 n3)))
                        (not (less n2 n1)))         
                  (when (less n3 n2)
                        (and (less n1 n2) (not (less n2 n1))))         
                  (when (and (less n3 n2) (not (less n1 n2)))
                        (not (less n3 n2)))         
                  (when (less n4 n1)
                        (and (less n4 n3) (not (less n3 n4))))         
                  (when (and (less n4 n1) (not (less n4 n3)))
                        (not (less n4 n1)))         
                  (when (less n3 n4)
                        (and (less n1 n4) (not (less n4 n1))))         
                  (when (and (less n3 n4) (not (less n1 n4)))
                        (not (less n3 n4))) 
    ))
        
    (:action cmpswap-1-4
     :effect (and (less n1 n4) (not (less n4 n1))         
                  (when (less n2 n1)
                        (and (less n2 n4) (not (less n4 n2))))         
                  (when (and (less n2 n1) (not (less n2 n4)))
                        (not (less n2 n1)))         
                  (when (less n4 n2)
                        (and (less n1 n2) (not (less n2 n1))))         
                  (when (and (less n4 n2) (not (less n1 n2)))
                        (not (less n4 n2)))         
                  (when (less n3 n1)
                        (and (less n3 n4) (not (less n4 n3))))         
                  (when (and (less n3 n1) (not (less n3 n4)))
                        (not (less n3 n1)))         
                  (when (less n4 n3)
                        (and (less n1 n3) (not (less n3 n1))))         
                  (when (and (less n4 n3) (not (less n1 n3)))
                        (not (less n4 n3))) 
    ))
        
    (:action cmpswap-2-3
     :effect (and (less n2 n3) (not (less n3 n2))         
                  (when (less n1 n2)
                        (and (less n1 n3) (not (less n3 n1))))         
                  (when (and (less n1 n2) (not (less n1 n3)))
                        (not (less n1 n2)))         
                  (when (less n3 n1)
                        (and (less n2 n1) (not (less n1 n2))))         
                  (when (and (less n3 n1) (not (less n2 n1)))
                        (not (less n3 n1)))         
                  (when (less n4 n2)
                        (and (less n4 n3) (not (less n3 n4))))         
                  (when (and (less n4 n2) (not (less n4 n3)))
                        (not (less n4 n2)))         
                  (when (less n3 n4)
                        (and (less n2 n4) (not (less n4 n2))))         
                  (when (and (less n3 n4) (not (less n2 n4)))
                        (not (less n3 n4))) 
    ))
        
    (:action cmpswap-2-4
     :effect (and (less n2 n4) (not (less n4 n2))         
                  (when (less n1 n2)
                        (and (less n1 n4) (not (less n4 n1))))         
                  (when (and (less n1 n2) (not (less n1 n4)))
                        (not (less n1 n2)))         
                  (when (less n4 n1)
                        (and (less n2 n1) (not (less n1 n2))))         
                  (when (and (less n4 n1) (not (less n2 n1)))
                        (not (less n4 n1)))         
                  (when (less n3 n2)
                        (and (less n3 n4) (not (less n4 n3))))         
                  (when (and (less n3 n2) (not (less n3 n4)))
                        (not (less n3 n2)))         
                  (when (less n4 n3)
                        (and (less n2 n3) (not (less n3 n2))))         
                  (when (and (less n4 n3) (not (less n2 n3)))
                        (not (less n4 n3))) 
    ))
        
    (:action cmpswap-3-4
     :effect (and (less n3 n4) (not (less n4 n3))         
                  (when (less n1 n3)
                        (and (less n1 n4) (not (less n4 n1))))         
                  (when (and (less n1 n3) (not (less n1 n4)))
                        (not (less n1 n3)))         
                  (when (less n4 n1)
                        (and (less n3 n1) (not (less n1 n3))))         
                  (when (and (less n4 n1) (not (less n3 n1)))
                        (not (less n4 n1)))         
                  (when (less n2 n3)
                        (and (less n2 n4) (not (less n4 n2))))         
                  (when (and (less n2 n3) (not (less n2 n4)))
                        (not (less n2 n3)))         
                  (when (less n4 n2)
                        (and (less n3 n2) (not (less n2 n3))))         
                  (when (and (less n4 n2) (not (less n3 n2)))
                        (not (less n4 n2))) 
    ))

)
