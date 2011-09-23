;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.2. April 2008

;; initiated 5/16/93 v2.3, added form rules 6/6
;; 0.1 (10/13/95) worded out a real analysis and moved in the def form for
;;      a word that's marked as an adverb but not given any semantics.
;; 0.2 (4/24/08) moved the category and def form out to words/adverbs,

(in-package :sparser)



;;--- not used 10/95
(define-mixin-category  modified
  :instantiates nil
  :binds ((modifier)))



;;;------------
;;; form rules
;;;------------

#| We're using the form label on the verb combined with this fairly ad-hoc
 'semantic' label on the adverb.  This is one of the few places where I'd
 be comfortable with form+form rules, but the odd label seems a better way
 to go at least for now (and it's a more honest labeling).  If it was to be
 done as form+form, then the edge over the adverb would probably have the
 word as its label and act as a literal with a form.  |#

;;---- adv + verb

(def-form-rule (anonymous-adverb verb)
  :referent (:head right-edge
             :bind (modifier left-edge)))

(def-form-rule (anonymous-adverb verb+present)
  :referent (:head right-edge
             :bind (modifier left-edge)))

(def-form-rule (anonymous-adverb verb+s)
  :referent (:head right-edge
             :bind (modifier left-edge)))

(def-form-rule (anonymous-adverb verb+ed)
  :referent (:head right-edge
             :bind (modifier left-edge)))

(def-form-rule (anonymous-adverb verb+ing)
  :referent (:head right-edge
             :bind (modifier left-edge)))


;;---- verb + adv

(def-form-rule (verb anonymous-adverb)
  :referent (:head left-edge
             :bind (modifier right-edge)))

(def-form-rule (verb+present anonymous-adverb)
  :referent (:head left-edge
             :bind (modifier right-edge)))

(def-form-rule (verb+s anonymous-adverb)
  :referent (:head left-edge
             :bind (modifier right-edge)))

(def-form-rule (verb+ed anonymous-adverb)
  :referent (:head left-edge
             :bind (modifier right-edge)))

(def-form-rule (verb+ing anonymous-adverb)
  :referent (:head left-edge
             :bind (modifier right-edge)))

