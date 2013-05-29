;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "named-entities"
;;;    Module:   "sl;disease:"
;;;   version:   May 2013

;; initiated 5/6/13

(in-package :sparser)

(define-with-all-instances-permanent

    ;; "company" isn't right for most of these, but it will do
    (define-company '("United" "Nations") :aliases '(("U.N.")) :takes-the t)

) ;; closes with all permanent