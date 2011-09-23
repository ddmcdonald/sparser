;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjective phrases"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  April 2005

;; initiated 8/28/95. 12/6 added modifier-specializes-adjective. 4/11/05 added
;; adjective-creates-subtype.

(in-package :sparser)

#|  adj-defines-function
    modifier-specializes-adjective
    adjective-creates-subtype ----------- "fiscal ____"
|#


(define-exploded-tree-family   adj-defines-function
  :description "A combination of an adjective and a complement phrase where the lhs category is determined by the adjective. All of the semantic content is in the complement, with the adjective just determining how the phrase should be labeled and attached. They often act as adjuncts to events or states, e.g. \"worth $10 million\", \"expected by Thursday\""
  :binding-parameters ()
  :labels (adjp adjective complement)
  :cases
    ((:adjp (adjp (adjective complement)
               :head right-edge ))
     ))


(define-exploded-tree-family    modifier-specializes-adjective
  :description "A combination of a base (head) adjective or adjective phrase and a modifier to its left (another adjective, an adverb, a participle, etc.) that names a new type of object that is effectively a specialization of the object named by the head, e.g. 'president' and 'vice president', or 'blue' and 'light blue'."
  :binding-parameters ( base specializer )
  :labels ( adjp modifier adjective  specialized-type )
  :cases
    ((:modifier (adjp (modifier adjective)
                  :instantiate-individual specialized-type
                  :binds (base right-edge
                          specializer left-edge)
                  :head right-edge))))


(define-exploded-tree-family  adjective-creates-subtype
  :description ""
  :binding-parameters ( specializing-function ) ;; ad-hoc: see Decode-rdata-mapping
  :labels ( adjective )
  :cases ((:subtype (np (adjective common-noun)
                      :head right-edge
                      :function (specializing-function left-edge)))))

