;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "rules"
;;;   Module:  "grammar;model:sl:reports:"
;;;  version:  0.1 March 2005

;; initiated 10/22/93 v2.3 restarting from scratch. 1/8/96 added cs rule
;; for companies. 1/9 added vg rules. 
;; 0.1 3/11/05 Added variation cs rule for name-word -> company 
;;  (///which is too strong since people do these things too, albeit at
;;  a lower frequency). Also pulled the 'shallow adverb' rules in favor of
;;  moving them to the modifiers themselves.
;; 0.2 11/13/08 Indeed there are too strong or not subtle enough because
;;  they don't apply when the report verb is passiveized: "Another breach 
;;  in the Industrial Canal was reported a few minutes later". That's a 
;;  common construction so it's worth doing deliberately.

(in-package :sparser)

;;;-----------------------
;;; context for 'company'
;;;-----------------------

#|
(def-csr  name company
  :right-context report-verb
  :form np
  :referent (:function interpret-name-as-company left-edge))

(def-csr name-word company
  :right-context report-verb
  :form np
  :referent (:function interpret-name-as-company left-edge))
|#

