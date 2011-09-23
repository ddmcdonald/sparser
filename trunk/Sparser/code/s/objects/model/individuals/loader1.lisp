;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:individuals:"
;;;  version:  1.0 October 1998

;; initiated 7/16/92 v2.3. (5/25/93) added [decode]
;; 0.1 (8/5/94) bumped [decode] to add 'or'  (8/9) added [delete] and
;;      bumped [find] to preserve the old permanent/temp code
;; 0.2 (8/12) boke out [structure] for loading earlier
;;     (5/13/95) bumped [resource] and [reclaim] to 1
;; 1.0 (10/13/98) bumped again. make->1

(in-package :sparser)

;(lload "individuals;structure")
;;  already loaded by [model;] level

(lload "individuals;object")
(lload "individuals;printers")
(lload "individuals;decode1")
(lload "individuals;find1")
(lload "individuals;index")
(lload "individuals;delete")
(lload "individuals;resource1")
(lload "individuals;make1")
(lload "individuals;reclaim1")

