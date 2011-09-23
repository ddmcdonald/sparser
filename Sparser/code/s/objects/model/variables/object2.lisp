;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2000 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:variables:"
;;;  version:  1.1 August 2000

;; initiated 11/18/91 v2.1
;; 7/17/92 v2.3 revised the definition
;; 0.1 (1/7/94) extended Find-variable... to look up the lattice
;;     (8/4) wrote Decode-variable-name to summarize a common block of code
;;     (5/29/95) tweeked the error msg when the indiv/cat doesn't have the var
;; 0.2 (9/19) added a flag to Decode-variable-name so it doesn't always break
;;      on ambiguous variables.
;;     (7/12) repaird use of lattice-point in find-variable-in-category/named.
;;      7/16 still buggy: added trace for load-time
;; 1.0 (2/14/99) modified Decode-variable-name to also work from psi.
;;     (5/18) modified find-variable-in-category/named to use the correct
;;      uplink path given real lattice-points.
;; 1.1 (8/5/00) tweaked Decode-variable-name to take the individual case before
;;      the category case if both are provided for disambiguation purposes.
;; 2.0 (6/16/09) Switching to a lexical treatment. These routines are probably
;;      moot given what's in index2 now. 7/14 Made them indirect calls to the
;;      new ones rather than try reworking the myriad of callers

(in-package :sparser)

;;;----------------------------
;;; composite access functions
;;;----------------------------

(defun decode-variable-name (name &key individual category
                                       caller-does-disambiguation )
  ;; These all should be replaced with the find functions in
  ;; variables/index2, but for now we'll redirect them since the
  ;; calls are ubiquitous.
  (cond
    (category (find-variable-in-category name category))
    (individual (find-variable-from-individual name individual))
    (t (break "new case for decode-variable-name.~
             ~%variable name = ~a, caller-does-disambiguation = ~a"
	      name caller-does-disambiguation))))



(defun variable/category (var-name category)
  ;; shorter spelling
  (when (symbolp category)
    (setq category (category-named category)))
  (find-variable-for-category var-name category))


(defun find-variable-in-category/named (symbol category
                                        &optional original-category
                                                  (depth 0))
  (find-variable-for-category symbol category))

