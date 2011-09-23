;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2005,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  August 2011

;; initiated 3/9/05
;; 0.1 (5/20/09) Added verb+ing and verb cases to pre-verb-adverb
;; 0.2 (8/8/11) Finished the cases with the other form options for verbs
;;     and added post-verb-adverb

(in-package :sparser)

#| ETFs in this file:

     pre-verb-adverb ------------ "today announced"
     post-verb-adverb ----------- "announced today"
     sentence-adverb ------------ pre/post S & VP
|#

(define-exploded-tree-family pre-verb-adverb
  :description "Creates form rules for all possibilities of the adverb in front of the verb."
  :binding-parameters ( modifier )
  :labels ( adverb )
  :cases
    ((:modifier (verb (adverb verb)
                  :head right-edge
                  :binds (modifier left-edge)))
     (:modifier (verb+present (adverb verb+present)
                  :head right-edge
                  :binds (modifier left-edge)))
     (:modifier (verb+ed (adverb verb+ed)
                  :head right-edge
                  :binds (modifier left-edge)))
     (:modifier (verb+ing (adverb verb+ing)
                  :head right-edge
                  :binds (modifier left-edge)))))

(define-exploded-tree-family post-verb-adverb
  :description "Creates form rules for all possibilities of the adverb following the verb."
  :binding-parameters ( modifier )
  :labels ( adverb )
  :cases
    ((:modifier (verb (verb adverb)
                  :head left-edge
                  :binds (modifier right-edge)))
     (:modifier (verb+present (verb+present adverb)
                  :head left-edge
                  :binds (modifier right-edge)))
     (:modifier (verb+ed (verb+ed adverb)
                  :head left-edge
                  :binds (modifier right-edge)))
     (:modifier (verb+ing (verb+ing adverb)
                  :head left-edge
                  :binds (modifier right-edge)))))

(define-exploded-tree-family sentence-adverb
  :description ""
  :binding-parameters ( modifier )
  :labels ( adverb )
  :cases
    ((:modifier (s (adverb s)
                  :head right-edge
                  :binds (modifier left-edge)))
     (:modifier (vp (adverb vp)
                  :head right-edge
                  :binds (modifier left-edge)))
     (:modifier (s (s adverb)
                  :head left-edge
                  :binds (modifier right-edge)))
     (:modifier (vp (vp adverb)
                  :head left-edge
                  :binds (modifier right-edge)))))



