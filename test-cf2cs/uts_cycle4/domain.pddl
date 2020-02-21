(define (domain uts_cycle_4)
 (:requirements :typing :conditional-effects)
 (:types node label)
 (:constants  n0 n1 n2 n3 - node)
 (:predicates
	(visited ?n - node)
	(edge-label ?n1 ?n2 - node ?l - label)
	(at-node ?n - node)
  )
  (:action follow-label
   :parameters (?label - label)
;   :precondition (and)
   :effect 
   (and 
    (when (and (at-node n0) (edge-label n0 n1 ?label))
      (and  (at-node n1) (not (at-node n0)) (visited n1)))
    (when (and (at-node n0) (edge-label n0 n3 ?label))
      (and  (at-node n3) (not (at-node n0)) (visited n3)))
    (when (and (at-node n1) (edge-label n1 n2 ?label))
      (and  (at-node n2) (not (at-node n1)) (visited n2)))
    (when (and (at-node n1) (edge-label n1 n0 ?label))
      (and  (at-node n0) (not (at-node n1)) (visited n0)))
    (when (and (at-node n2) (edge-label n2 n3 ?label))
      (and  (at-node n3) (not (at-node n2)) (visited n3)))
    (when (and (at-node n2) (edge-label n2 n1 ?label))
      (and  (at-node n1) (not (at-node n2)) (visited n1)))
    (when (and (at-node n3) (edge-label n3 n0 ?label))
      (and  (at-node n0) (not (at-node n3)) (visited n0)))
    (when (and (at-node n3) (edge-label n3 n2 ?label))
      (and  (at-node n2) (not (at-node n3)) (visited n2)))
   ))
 )
