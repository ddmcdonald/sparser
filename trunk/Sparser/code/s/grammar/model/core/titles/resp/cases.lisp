;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "responsibilities cases"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  February 1991      system version 1.8.1

;; initiated 2/13

(in-package :CTI-source)

;; These head phrases that give a person's responsibilities as holders
;; of some title.
;; e.g. "former senior vice president of manufacturing [operations] "

#|  5/26  There is no proper grammar of these phrases, but there
are some specific cases that are important to capture even if they
aren't given an interesting semantics.  These are cases that spell out
what someone is the "head of" or the "director of".  The first is more
of a title carrier than a title, and the second should be distinguished
from the case of a person being a member of the company's board.

   This grammar just provides for linking the head of one of these
phrases with a determiner or other phrase-starter.  The unparsed middle
of the phrase will be collected up as a string and placed in a composite
according to the specific phrase starter (and therefore rule) involved.
|#
;;;------------
;;; rule-types
;;;------------

(define-category  company-activity)

(defun scoop-up-phrase-middle-as-det-ops (left-ref right-ref)
  (declare (ignore left-ref ))
  right-ref)

;;;----------
;;; def-form
;;;----------

(defparameter *responsibility-head-rules* nil)


(defun define-responsibility-head (string)
  (let ((word (resolve/make string)))
    (dolist (det (list category::company-possessive
                       word::|this|
                       word::|the|
                       word::|its|
                       word::|his|
                       word::|her|
                       word::|their|
                       ))
      (push
       (define-cfr category::company-activity
                   `( ,det ,word )
         :referent `(:merge Scoop-up-phrase-middle-as-det-ops
                            left-edge right-edge))
       *responsibility-head-rules*))

    word ))


;;;-------
;;; cases
;;;-------

(define-responsibility-head "operations")

