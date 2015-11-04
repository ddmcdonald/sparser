;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "SGML"
;;;    Module:   "objects;forms:"
;;;   Version:   1.0 September 1995

;; initiated 10/21/91, tweeked 10/30. 
;; 1.0 (5/21/92) Moved body to objects;doc 
;;     (5/19/94) added define-markup-tag-pair.  6/1 added define-invisible-markup
;;      6/6 added the keyword :annotation.  9/19/95 added html forms. 9/20 pulled
;;      them as redundant since the only arg is a string and most will be autodef'd

(in-package :sparser)

;;;------------
;;; sgml cases
;;;------------

(defun define-sgml-tag (string
                        name
                        &key ((:initiation-action  initiate))
                             ((:termination-action terminate))
                             ((:implicitly-closes  close)))
  (define-sgml-tag/expr
    string name initiate terminate close))




(defun define-markup-tag-pair (name
                               start-string end-string
                               &key ((:initiation-action  initiate))
                                    ((:termination-action terminate))
                                    ((:interior-markup interior)))
  (define-markup-tag-pair/expr
    name start-string end-string initiate terminate interior))



(defun define-invisible-markup (protocol-keyword &rest args)
  (ecase protocol-keyword
    (:tag-pair (apply #'define-invisible-markup-pair args))
    (:annotation (apply #'define-invisible-annotation-tag args))))

