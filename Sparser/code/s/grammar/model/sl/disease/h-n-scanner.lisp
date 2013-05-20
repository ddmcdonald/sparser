;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "h-n-scanner"   e.g. "H5N1" or 
;;;    Module:   "sl;disease:"
;;;   version:   May 2013

;; initiated 5/6/13

;; Where is the call in scan, and what happens before/after it that could cause
;; confusion ?

;;   (setq *uniformly-scan-all-no-space-token-sequences* t)
;; That is causing problems right now (2/11/13), so committing a horrible thing instead
;; (reify-spelled-name 
;;  (list (word-named "H") (word-named "5") (word-named "N") (word-named "1")))


