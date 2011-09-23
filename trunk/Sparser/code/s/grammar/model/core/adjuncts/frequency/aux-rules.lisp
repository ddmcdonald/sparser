;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "aux rules"
;;;   Module:  "grammar;model:core:adjuncts:frequency:"
;;;  Version:  0.1 July 1994

;; initiated 5/16/93 v2.3
;; 0.1 (6/4) drastically reconceptualized how it works, 9/21 moved to [adjuncts]
;;      and split out the rules
;;     (7/14/94) added {modal}+freq...

(in-package :sparser)


;;;------------
;;; form rules
;;;------------

;;---- modal + adv

(def-form-rule (modal frequency-of-event)
  :referent (:head left-edge
             :bind (frequency right-edge)))


;;---- adv + verb

(def-form-rule (frequency-of-event verb)
  :referent (:head right-edge
             :bind (frequency left-edge)))

(def-form-rule (frequency-of-event verb+present)
  :referent (:head right-edge
             :bind (frequency left-edge)))

(def-form-rule (frequency-of-event verb+s)
  :referent (:head right-edge
             :bind (frequency left-edge)))

(def-form-rule (frequency-of-event verb+ed)
  :referent (:head right-edge
             :bind (frequency left-edge)))

(def-form-rule (frequency-of-event verb+ing)
  :referent (:head right-edge
             :bind (frequency left-edge)))


;;---- verb + adv

(def-form-rule (verb frequency-of-event)
  :referent (:head left-edge
             :bind (frequency right-edge)))

(def-form-rule (verb+present frequency-of-event)
  :referent (:head left-edge
             :bind (frequency right-edge)))

(def-form-rule (verb+s frequency-of-event)
  :referent (:head left-edge
             :bind (frequency right-edge)))

(def-form-rule (verb+ed frequency-of-event)
  :referent (:head left-edge
             :bind (frequency right-edge)))

(def-form-rule (verb+ing frequency-of-event)
  :referent (:head left-edge
             :bind (frequency right-edge)))

