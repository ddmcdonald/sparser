;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "dm&p"
;;;   Module:  "init;workspaces:"
;;;  version:  January 1995

;; broken out from [init;versions:v2.3a:workspace:in progress] 1/30/95

(in-package :sparser)

;;;--------------------------
;;; traces / switch settings
;;;--------------------------

;(setq *do-domain-modeling-and-population* t)
;(setq *do-domain-modeling-and-population* nil)
;(setq *trace-DM&P* t)
;(setq *trace-DM&P* nil)
;(debris-analysis-setting)
;(DM&P-setting)
;(top-edges-setting/ddm)

;(setq *break-on-pattern-outside-coverage?* t)
;(setq *break-on-pattern-outside-coverage?* nil)
;(ed "objects;traces:DM&P") <<< wrap ed in an expander

;*switch-setting*
;*current-analysis-mode*

;//// make a custom version
;(switch-settings)
;(setq *annotate-realizations* nil)


;;;--------------
;;; test / to-do
;;;--------------

;; 1/11/94
(defun p/br (s)
  (pp s)
  (display-bracketed-segments))

;; (p/br "(J), page b1")
;;   the comma should stand by itself. Consider timing problem
;;   with processing of the parenthesis


;; 12/30/93
(defun fw (p)
  (setup-for-DJNS/1990-91)
  (f p))

;(fw "feb0;WSJ021.TXT")
;;  waiting on paragraph operations.
;;  Dies on "NL After Mr. Kennedy", where the preposition needs to
;;   be appreciated as such. 

;;;------------
;;; test cases
;;;------------

(defun fire ()
;; Fire ravages London cinema
;; London -- 
  (pp "Fire swept through a private theater in central London
yesterday, killing at least seven people and injuring more 
than 20, fire officials said.  A Fire Brigade spokesman said
about 50 firefighters were at the four-story building, where
the cinema club occupied the top floor.  After three hours
the fire was under control, but not out.  It was not known
how many people were in the building at the time of the fire.  
The cinema was a small private club showing pornographic files,
according to initial reports."))  ;; (Reuters)
