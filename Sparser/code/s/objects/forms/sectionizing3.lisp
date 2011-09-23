;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "sectionizing"
;;;    Module:   "grammar;forms:"
;;;   Version:   3.1 June 1994

;; 3.0 ~1993 broken out as its on 'form'
;; 3.1 (6/6/94) promulgated new argument to Populate-section-marker

(in-package :sparser)

;;;----------------- 
;;; section markers
;;;-----------------

(defun define-section-marker (string
                              &key ((:initiation-action  initiate))
                                   ((:termination-action terminate))
                                   ((:implicitly-closes  close))
                                   ((:interior-markup interior))
                                   ((:do-not-wire-in-the-action
                                     no-actions?)) )

  (define-section-marker/expr
    string initiate terminate close interior no-actions?))

