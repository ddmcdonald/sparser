;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rule deletion"
;;;   Module:  "grammar;tests:"
;;;  version:  1.0  January 1990       v1.7

(in-package :sparser)


;(length *context-free-rules-defined*)
;(display-all-cfrs)
;(progn (inspect *context-free-rules-defined*) :done)


;;------  1/8,9  

;; Defining these two rules in this order has the second
;; written as (for its leftmost pair) "senior"+#<title>, which
;; means it will collide with a rule for "senior vice president"
;;
;(def-cfr title ("executive vice president"))          ; psr1
;(def-cfr title ("senior executive vice president"))   ; psr2

;; if you then do this rule, it correctly  replaces the tail
;; of psr1.  The record of "intermediaries" under psr2 isn't
;; correct though, since it still has the dotted rule for
;; the just disabled rule in it even though it's been supplanted.
;; //// ?? should we explicitly index and search for common
;; tails, or just leave that to the grammar writer ????
;;
;(def-cfr title ("vice president"))  ; psr3

;;--- When you delete psr2 the multiplication table gets upset
;; because the tail of that rule had been supplanted by psr3 and
;; the record of intermediaries of psr2 wasn't updated accordingly,
;; so when the deletion routine goes through the list the table
;; is found to be out of sync.



;(def-cfr r-one ("one"))
;(def-cfr r-two ("two"))
;(def-cfr r-three ("three"))
;(def-cfr two-terms ("three" r-two))
;(def-cfr three-terms ("three" r-two r-one))

