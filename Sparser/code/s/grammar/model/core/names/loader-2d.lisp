;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader-2d"
;;;   Module:  "model;core:names:"
;;;  version:  2.1 May 1995

;; 2.0 (6/2/93) brought back into action, again because of references
;;      to categories introduced late in the process of loading the
;;      grammar
;; 2.1 (6/8) broke out [subseq ref] and [name creators]
;;      Redid calls as logicals 3/18/95.  Added [citations] 5/15

(in-package :sparser)

;;(lload "names-fsa;transitions")
;;(lload "names-fsa;name creators")
;;(lload "names-fsa;classifications")


(lload "names-fsa;subseq ref")
(lload "names;citations")

