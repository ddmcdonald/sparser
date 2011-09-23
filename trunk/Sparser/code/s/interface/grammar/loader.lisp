;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "loader"
;;;    Module:  "interface;grammar:"
;;;   version:  0.3 October 1995

;; initiated 2/10/92 v2.2
;; 0.1 (2/24/93 v2.3) commented out items that didn't load in 2.0
;; 0.2 (8/16) gated postprocessing since it now calls menu stuff
;; 0.3 (1/10/93) moved the menu stuff to [interface;windows:menus:module menu]
;;      and flushed the now-irrelevant files
;;     (11/17) added [defining verbs] (4/3) added [sort individuals]
;;     (4/12/95) added [defining other words]
;;     (7/26) added [etf-driven definitions]. (9/20) added [defining html]
;;     (10/5) moved [defining html] out to rules;sgml

(in-package :sparser)

(lload "grammar-interface;postprocessing")
(lload "grammar-interface;sort")
(lload "grammar-interface;printing")

(when *include-model-facilities*
  (lload "grammar-interface;sort individuals"))

(unless *nothing-Mac-specific*
  (lload "grammar-interface;object dialogs")
  (lload "grammar-interface;defining verbs")
  (lload "grammar-interface;defining other words")
  (lload "grammar-interface;etf-driven definitions"))

