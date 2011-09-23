;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "loader"
;;;    Module:  "interface;menus:"
;;;   version:  0.6 December 1994

;; initiated 3/29/92 v2.2, added modules 5/16
;; 0.1 (1/10/94 v2.3) revived this load file & brought it up to date
;; 0.2 (3/18) added [citations] and [backup]
;; 0.3 (3/28) added [launch]
;; 0.4 (4/1) revised what formulation of the Sparser menu is loaded as workaround to
;;      mysterious problem with multiple submenus: [sparser hacked]
;; 0.5 (4/5) went back to the original now that the problem is identified as having
;;      blown out the maximum number of menus
;; 0.6 (12/30) bumped [module menu]

(in-package :sparser)

(lload "interface;menus:corpus")
(lload "interface;menus:module menu1")
(lload "interface;menus:citations")
(lload "interface;menus:backup")
(lload "interface;menus:Sparser")
(lload "interface;menus:launch")

