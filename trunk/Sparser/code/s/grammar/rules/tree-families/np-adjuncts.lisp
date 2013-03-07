;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005,2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "np adjuncts"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  0.1 March 2013

;; initiated 6/14/95.  8/11 added pp-after-np.  11/15 added premodifier-adds-
;; property and filled in a missing description.  12/5 added determiner-adds-property
;; 0.1 (3/13/96) revised pp-after-np to have it assume the pp is already define
;;      rather than form it as part of doing the schema -- case label decoding
;;      was overly complicated to hack without better motivation.
;; (10/29/00) Cataloged what's here and added N-per-unit. 12/11 fixed a bug where
;;   the parens were layered wrong. 12/22 fixed spelling of keyword. 2/17/05 added
;;   np-participle. 4/1 Modified pp-after-np to include the preposition in a simplistic
;;   way. 4/4/11 Added np-and-postmodifier 9/26 reordered cases to make postprocessing happy
;; (3/3/13) Added modifier-adds-head-dependent-property

(in-package :sparser)

#| ETFs in this file:

     premodifier-creates-subtype --- "net income" ?? look at binding pattern
     np-and-postmodifier ----------- "60 in February" Instantiates a new individual
     premodifier-adds-property ----- "red house"
     modifier-adds-head-dependent-property --- "Kurdish girl" "Kurdish city"
     appositive -------------------- "Patrick Courtin, president and CEO of Gensym Corporation"
     np-participle ----------------- "third quarter ended June 26, 2004"
     pp-after-np ------------------- the pp adds a property. "of" is a special case
                                        in its own file.
     N-per-unit -------------------- "10 cents a {per} share", "$125 an hour", "(grows by) an inch a year"
|#


#|  There is no additional machinery at present for this or other sets of
 'adjunct' tree families.  There could be an automatic imposition of
  Chomsky adjunction, and with that many of the fields in the autodef
  tableau could be already filled in and locked.  Oh well.  6/95  |#


(define-exploded-tree-family   premodifier-creates-subtype
  :description "A combination of the head of a noun phrase (either noun or n-bar) 
                and a preceeding noun that creates a more specific version 
                of whatever the head is."
  :binding-parameters ( subtype )
  :labels ( np-head noun )
  :cases
    ((:modifier (np-head (noun np-head)
                 :head right-edge
                 :binds (subtype left-edge)))))


(define-exploded-tree-family   np-and-postmodifier
  :description "A combination of the head of a noun phrase (either noun or n-bar) 
                and a followingg phrase instatiate a new kind of individual 
                where both phrases contribute."
  :binding-parameters ( type np-var modifier-var )
  :labels (np np-head phrase )
  :cases
    ((:modifier (np (np-head phrase)
                 :instantiate-individual type
                 :head left-edge
                 :binds (np-var left-edge
                         modifier-var right-edge)))))




(define-exploded-tree-family   premodifier-adds-property
  :description "A combination of a np head (either noun or n-bar) and a preceding 
                word or phrase that adds a property to the object that the head refers to."
  :binding-parameters ( property )
  :labels ( np-head modifier )
  :cases
     ((:modifier (np-head (modifier np-head)
                  :head right-edge
                  :binds (property left-edge)))))


(define-exploded-tree-family  modifier-adds-head-dependent-property
  :description "The modifer is related to the head in a way that depends
        on the types of referents of the two edges, This is sorted out
        by the method."
  :binding-parameters ( property )
  :labels ( np-head modifier combo-method)
  :cases
     ((:modifier (np-head (modifier np-head)
                  :head right-edge
                  :method (combo-method left-edge right-edge)))))


(define-exploded-tree-family   determiner-adds-property
  :description "A combination of a np head (either noun or n-bar) and a preceding word
                or phrase that adds a property to the object that the head refers to. 
                The word/phrase is syntactically a 'determiner' in that it can initiate 
                a complete noun phrase, e.g. a number, a country-adjective, some quantifiers."
  :binding-parameters ( property )
  :labels ( np np-head determiner )
  :cases
     ((:modifier (np (determiner np-head)
                  :head right-edge
                  :binds (property left-edge)))))




(define-exploded-tree-family   appositive
  :description "Any phrase that immediately follows the noun phrase, is set off 
                by commas, and adds a property to the object that the np refers to."
  :binding-parameters ( appositive-field )
  :labels ( np appositive )
  :cases
    ((:appositive (np (np comma-/appositive)
                    :head left-edge
                    :binds (appositive-field right-edge)))

     (:consume-comma (comma-/appositive ( "," appositive)
                       :head right-edge))))




(define-exploded-tree-family  np-participle
  :description ""
  :binding-parameters ( participle-field )
  :labels ( np participle )
  :cases
    ((:participle (np (np participle)
                    :head left-edge
                    :binds (participle-field right-edge)))))




(define-exploded-tree-family  pp-after-np
  :description "A combination of a noun phrase and a following prepositional phrase, where the pp adds a property to the object the np refers to."
  :binding-parameters ( pp-head-field )
  :labels ( np  pp  prep  prep-head )
  :cases
    ((:pp-modifier (np (np pp)
                     :head  left-edge
                     :binds (pp-head-field right-edge)))

     (:pp (pp (prep prep-head)
                 :head right-edge))

     ;; This case is more complicated than it needs to be.
     ;; To use it, Appears-as-lhs-of-some-case has to be extended
     ;; (see note there).
     ;;    For the nonce at least, we'll requier that the pp's label
     ;; is spelled out in the mapping rather than computed.
     ;(:pp (pp/prep/prep-head (prep prep-head)
     ;         :head right-edge))
     ))



(define-exploded-tree-family  N-per-unit
  :description ""
  :binding-parameters ( type  N  unit )
  :labels ( unit-head  unit-np  N-np  top-np )
  :cases ((:np (top-np (N-np unit-np)
                         :head left-edge  ;; ??
                         :instantiate-individual type
                         :binds (N left-edge
                                 unit right-edge)))
          (:pseudo-determiner (unit-np ("per" unit-head)
                                :head right-edge
                                :binds (unit right-edge)))
          (:pseudo-determiner (unit-np ("a" unit-head)  ;; ???
                                :head right-edge
                                :daughter right-edge))))
