;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2005,2011-2012 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  November 2012

;; initiated 3/9/05
;; 0.1 (5/20/09) Added verb+ing and verb cases to pre-verb-adverb
;; 0.2 (8/8/11) Finished the cases with the other form options for verbs
;;     and added post-verb-adverb
;; 0.3 (9/23/11) Converting the referents to a method application. 11/5/12
;;     correcting it's spelling, since in syntax/adverbs1 the method is
;;     "modified'

(in-package :sparser)

#| ETFs in this file:

     pre-verb-adverb ------------ "today announced"
     post-verb-adverb ----------- "announced today"
     sentence-adverb ------------ pre/post S & VP
|#

;; The cases in these tree families all produce form rules, where the
;; adverb is the concrete category and the heads are all form categories.
;; There are no assumptions about the structure of the head in the
;; referents. Instead everything is mediated by the CLOS method
;; named modified, which can be specialized by both the adverb and
;; the head. See base cases in rules/syntax/adverbs1.lisp.

;; The modified method's arguments are <modifier>, <modifiers>, so the
;; adverb edge has to be first in the call, and the head second.


(define-exploded-tree-family pre-verb-adverb
  :description "Creates form rules for all possibilities of the adverb in front of the verb."
  :binding-parameters ( )
  :labels ( adverb )
  :cases
    ((:modifier (verb (adverb verb)
                  :head right-edge
                  :method (modified left-edge right-edge)))
     (:modifier (verb+present (adverb verb+present)
                  :head right-edge
                  :method (modified left-edge right-edge)))
     (:modifier (verb+ed (adverb verb+ed)
                  :head right-edge
                  :method (modified left-edge right-edge)))
     (:modifier (verb+ing (adverb verb+ing)
                  :head right-edge
                  :method (modified left-edge right-edge)))))

(define-exploded-tree-family post-verb-adverb
  :description "Creates form rules for all possibilities of the adverb following the verb."
  :binding-parameters ( )
  :labels ( adverb )
  :cases
    ((:modifier (verb (verb adverb)
                  :head left-edge
                  :method (modified right-edge left-edge)))
     (:modifier (verb+present (verb+present adverb)
                  :head left-edge
                  :method (modified right-edge left-edge)))
     (:modifier (verb+ed (verb+ed adverb)
                  :head left-edge
                  :method (modified right-edge left-edge)))
     (:modifier (verb+ing (verb+ing adverb)
                  :head left-edge
                  :method (modified right-edge left-edge)))))

(define-exploded-tree-family sentence-adverb
  :description ""
  :binding-parameters ( )
  :labels ( adverb )
  :cases
    ((:modifier (s (adverb s)
                  :head right-edge
                  :method (modified left-edge right-edge)))
     (:modifier (vp (adverb vp)
                  :head right-edge
                  :method (modified left-edge right-edge)))
     (:modifier (s (s adverb)
                  :head left-edge
                  :method (modified right-edge left-edge)))
     (:modifier (vp (vp adverb)
                  :head left-edge
                  :method (modified right-edge left-edge)))))



