;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "vp-adjuncts"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  August 2011

;; initiated 12/26/95

(in-package :sparser)

(define-exploded-tree-family  vp+adjunct
  :description "See examples with 'move'"
  :binding-parameters ( slot ) ;; which slot does the adjunct go in
  :labels ( vg vp adjunct )
  :cases ((:adjunction (vp (vg adjunct)
                         :head left-edge
                         :binds (slot right-edge)))
          (:adjunction (vp (vp adjunct)
                         :head left-edge
                         :binds (slot right-edge)))))

(define-exploded-tree-family  verb+specializing-adverb
  :description "The combination of the verb and adverb create an
     instance of a new category"
  :labels ( vg  adverb  result-type )
  :cases ((:adverb-mod (vg (vg adverb))
                         :head left-edge
                         :instantiate-individual result-type)))
;;///// referent isn't going through.

