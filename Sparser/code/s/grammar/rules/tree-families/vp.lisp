;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "vp"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  December 2013  

;; initiated 12/26/95. 12/17/13 added be-description. 12/24/13 defined
;; subject-predicate. 

(in-package :sparser)

(define-exploded-tree-family  verb+direct-object
  :description "A verb phrase that takes just one required argument, 
    a noun phrase of some sort. The verb in this pattern is treated as 
    an individual rather than the name of a partially saturated relation. 
    The relation isn't identified until the type of the direct object is known. 
    Effectively the combination is a 'specialization' of the verb taken as a relation."
  :binding-parameters ( patient )
  :labels ( vp vg np/object result-type )
  :cases ((:direct-object (vp (vg np/object)
                           :instantiate-individual result-type
                           :binds (patient right-edge)
                           :head left-edge))))

(define-exploded-tree-family  be-description
  :description "Handles a common recurring 'subpart' of thing-is-description,
    where the predicate is something simple like 'is 20' which will occur in
    many forms which would lead to technically duplicated rules with different
    meanings. This provides an realization for these 'value categories'"
  :binding-parameters ( result description )
  :labels ( vp complement )
  :cases
    ((:complement-of-be  (vp (be complement)
                           :instantiate-individual  result
                           :head left-edge
                           :binds (description right-edge)))))


(define-exploded-tree-family  subject-predicate
  :description "For VP-headed phrases where the combination of a subject and
    a conventional predicate (VP) collectively define the result type."
  :binding-parameters ( result subject predicate )
  :labels ( s np/subject vp )
  :cases
    ((:subject (s  (np/subject vp)
                 :instantiate-individual result
                 :head right-edge
                 :binds (subject left-edge
                         predicate right-edge)))))

