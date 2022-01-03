;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "academic-degrees"
;;;    Module:   grammar/model/dossiers/
;;;   version:   December 2021

;; initiated 12/27/21 to organize degrees and such evacuated from
;; Middle-east files

(in-package :sparser)

(make-academic-degree "B.A.")
(make-academic-degree "B.Sc.") ;; only one in javan-online

(make-academic-degree "M.B.A.")
(make-academic-degree "M.S.")
(make-academic-degree "M.A.")
(make-academic-degree "Ph.D.")
