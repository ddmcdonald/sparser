;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "header labels"
;;;    Module:   "objects;forms:"
;;;   Version:   January 1995

;; initiated 12/7/93 v2.3.  Added colon case 1/3/95

(in-package :sparser)


(defun define-header-label (string
                            name
                            &key ((:initiation-action  initiate))
                                 ((:termination-action terminate))
                                 ((:implicitly-closes  close)))

  (define-header-label/expr string name initiate terminate close))



(defun define-colon-delimited-header-label
                           (string
                            name
                            &key ((:initiation-action  initiate))
                                 ((:termination-action terminate))
                                 ((:implicitly-closes  close)))

  (define-header-label/expr string name initiate terminate close
    :delimiter (word-named ":")))

