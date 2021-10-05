;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998,2013,2021  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "cases-loader"
;;;   Module:  "objects;traces:"
;;;  Version:  October 2021

;; directory initiated 3/91 v1.8.1
;; added psp-all-edges 12/6, bumped [FSA] to 1 12/29
;; 5/26/93 added [cap seq], 8/18 added [globals], broke out as "cases"
;; without the operations and globals files on 8/18
;; 0.1 (12/10) combined [complete] and [actions] into [completion] and
;;      added [sections]
;; 0.2 (1/5/94) added [paragraphs]
;; 0.3 (3/28) added [DM&P].  5/5 added [sgml], [section stack]
;;     (5/11) added [DA].  5/18 added [conjunction]
;;     (10/6/95) added [scan patterns]
;; 1.x <<unclear when bumped to v1>>
;;     (7/3/98) added [psi]
;;     (9/1/13) added [pronouns]

(lload "traces;tokenizer")
(lload "traces;FSA")
(lload "traces;cap seq")
(lload "traces;pronouns")
(lload "traces;edges")
(lload "traces;psp")
(lload "traces;psp-all-edges")
(lload "traces;scan patterns")
(lload "traces;completion")
(lload "traces;conjunction")
(lload "traces;treetops")
(lload "traces;CA")
(lload "traces;DA")
(lload "traces;HA")
(lload "traces;DM&P")
(lload "traces;discourse")
(lload "traces;sections")
(lload "traces;section stack")
(lload "traces;sgml")
(lload "traces;paragraphs")
(lload "traces;readout")
(lload "traces;debugging")
(lload "traces;psi")
(lload "traces;traversal")

