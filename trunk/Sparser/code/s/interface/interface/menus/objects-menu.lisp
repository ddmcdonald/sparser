;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "objects menu"
;;;    Module:  "interface;windows:menus:"
;;;   version:  March 1992

;; initiated 3/13/92 v2.2, additions 3/29

(in-package :sparser)


;;;---------
;;; objects
;;;---------
#|
(defparameter *objects-menu* (oneof *menu*
                                    :menu-title "Objects"))

;(ask *objects-menu* (menu-install))
;(ask *objects-menu* (menu-deinstall))


;;;-------------------------
;;; the immediate sub-menus
;;;-------------------------

(defparameter *by-type-menu* (oneof *menu*
                                    :menu-title "by type"))

(defparameter *by-module-menu* (oneof *menu*
                                      :menu-title "by module"))

(defparameter *edges-item* (oneof *menu-item*
                                  :menu-item-title "edges"
                                  :menu-item-action
                                     'bring-up-the-edges))

(defparameter *treetops-item* (oneof *menu-item*
                                     :menu-item-title "treetops"
                                     :menu-item-action
                                        'bring-up-the-treetops))


(ask *objects-menu* (add-menu-items *by-type-menu*
                                    *by-module-menu*
                                    *edges-item*
                                    *treetops-item*
                                    ))


;;;-----------------------
;;; items under "by type"
;;;-----------------------

(ask *by-type-menu* (add-menu-items
                     (oneof *menu-item*
                            :menu-item-title "Words"
                            :menu-item-action
                               'bring-up-all-the-words)
                     (oneof *menu-item*
                            :menu-item-title "Categories"
                            :menu-item-action
                               'bring-up-all-the-categories)
                     (oneof *menu-item*
                            :menu-item-title "Rules"
                            :menu-item-action
                               'bring-up-all-the-CF-rules)
                     ;(oneof *menu-item*
                     ;       :menu-item-title "Objects"
                     ;       :menu-item-action
                     ;          'bring-up-all-the-objects)
                     ))
|#
