;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1999,2001 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "prepositonal phrases"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  September 2011

;; initiated 6/14/95. Added content-pp 11/14/99. 9/12/11 added daughter rule
;; to transparent-pp.

(in-package :sparser)


(define-exploded-tree-family   transparent-pp
  :description "A preposition followed by a noun phrase complement where the function of the preposition is only to mark the phrase's role. The referent of complement becomes the referent of the phrase as a whole. E.g. 'by-company', 'after-time'." 
  :binding-parameters ()
  :labels ( pp preposition complement )
  :cases
    ((:pp (pp (preposition complement)
            :head right-edge
            :daughter right-edge))))

(define-exploded-tree-family   content-pp
  :description "A preposition followed by a noun phrase complement where the combination creates an individual involving both terms. The preposition is mapped to an 'articulator' variable that puts the complement, the 'item', into a particular 'type' of relation (instantiated category)."
  :binding-parameters ( type articulator item )
  :labels ( pp preposition complement )
  :cases
    ((:pp (pp (preposition complement)
            :instantiate-individual type
            :binds (articulator left-edge
                    item right-edge)
            :head left-edge))))

