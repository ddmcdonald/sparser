;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999-2000  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "np rules"
;;;   Module:  "model;core:kinds:"
;;;  version:  February 2000

;; initiated on 12/26/99. Wrapped two forms into one 2/21/00 because
;; that's the way they're supposed to be done.

(in-package :sparser)

(define-realization1  kind
  (:tree-family np-common-noun/definite  ;; "the rabbit"
    :mapping ((np-head . :self)))

  (:tree-family np-common-noun/indefinite  ;; "a rabbit"
   :mapping ((np-head . :self))))

