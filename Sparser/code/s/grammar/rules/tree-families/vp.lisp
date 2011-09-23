;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "vp"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  December 1995   

;; initiated 12/26/95

(in-package :sparser)

(define-exploded-tree-family  verb+direct-object
  :description "A verb phrase that takes just one required argument, a noun phrase of some sort. The verb in this pattern is treated as an individual rather than the name of a partially saturated relation. The relation isn't identified until the type of the direct object is known. Effectively the combination is a 'specialization' of the verb taken as a relation."
  :binding-parameters ( individual-for-verb patient )
  :labels ( vp vg np/object result-type )
  :cases ((:direct-object (vp (vg np/object)
                           :instantiate-individual result-type
                           :binds (individual-for-verb left-edge
                                   patient right-edge)
                           :head left-edge))))

