;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1997 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id: core1.lisp 320 2009-10-20 19:36:28Z dmcdonal $
;;; 
;;;     File:  "core"
;;;   Module:  "drivers;sources:"
;;;  Version:   1.4 April 2009

;; 1.2 (8/10/94) Redesigned core treatment to emphasize articles as a common
;;      path
;; 1.3 (8/24) added flag to control data initializations
;;     (8/17/97) added another to that.
;; 1.4 (4/27/09) Changed the basis of the return value. See code in drivers/
;;      sinks/return-value. 

(in-package :sparser)


;;;---------------------------------------------
;;; every source-driver ends up in this routine
;;;---------------------------------------------

(defvar *initialize-with-each-unit-of-analysis* t)

(defun analysis-core ()
  (catch :analysis-core
    (initialize-tokenizer-state)
    (initialize-chart-state)
    (when (and *include-model-facilities*
	       *initialize-with-each-unit-of-analysis*)
      (per-article-initializations))
    (chart-based-analysis)
    (after-analysis-actions)
    (analysis-core-return-value)))



;;;--------------------------------------------------------------------
;;; generic routine for initiating an analysis from any type of source
;;;--------------------------------------------------------------------

(defun do-source (s)
  (etypecase s
    (document-stream (analyze-document-stream s))
    (string (do-article s))
    (symbol (analyze-document-stream s))
    (pathname (do-article s))))

