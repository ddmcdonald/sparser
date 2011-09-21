;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: punctuation-marks.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:  grammar > punctuation-marks
;;;
;;; Copyright (C) 1985-1999  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; 7/15/99 Added digit-separators. 8/13 Added their concrete counterparts.
;;  

(in-package :mumble)

#|

(def-type punctuation-mark  permanent
  (name			"a symbol")
  (pname		"a string. Traces have to look like words.")
  )
|#


(define-punctuation-mark period "." )

(define-punctuation-mark question-mark "?" )

(define-punctuation-mark comma "," )


;; These two are more of a meta punctuation mark because they get a localized
;; interpretation. See Print-punctuation.
(define-punctuation-mark digit-separator ",")
(define-punctuation-mark decimal-mark ".")

;; And these go with them. We need these alternative objects so that
;; there is something for precede-item-with-space-if-appropriate to
;; react to. It would be much cleaner if this sort of information could
;; be put on a plist (though we'd still need the additional objects)
;; since folding it into the name of the symbol is gross.
(define-punctuation-mark comma-without-following-space ",")
(define-punctuation-mark period-without-following-space ".")