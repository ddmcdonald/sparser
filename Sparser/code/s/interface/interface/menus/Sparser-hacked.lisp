;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "Sparser"
;;;    Module:  "interface;menus:"
;;;   version:  0.3 April 1994

;; initiated 6/17/93 v2.3, fleshed out 6/20 on Book
;; 0.1 (1/25/94) redone from scratch
;;     (3/4) added preferences menu item.  (3/8) revised the treatment of
;;     the 'continue' button to vary between "continue" and "next" depending on
;;     a preference value.
;; 0.2 (3/30) moved the corpus wigets to [menus;corpus]
;; 0.3 (4/1) hacked the installation function to pull out the second and third
;;      submenus because mysteriously only the first was able to work.

(in-package :sparser)

;;;---------------------
;;; Workbench menu item
;;;---------------------

(defparameter *workbench-menu-item*
  (make-instance 'menu-item
    :menu-item-title "workbench"
    :menu-item-action 'launch-the-workbench
    :disabled  *workshop-window*  ;; i.e. disable it if the wb is up already
    :update-function 'check-if-wb-is-up ))


(defun check-if-wb-is-up (wb-menu-item)
  (if *workshop-window*
    (ccl:menu-item-disable wb-menu-item)
    (ccl:menu-item-enable wb-menu-item)))


;;;-------------
;;; preferences
;;;-------------

#| This is for any aspect of the system -- if it gets to large then
   we break it down into submenus triggering subdialogs.  |#

(defparameter *preferences-menu-item*
  (make-instance 'menu-item
    :menu-item-title "preferences"
    :menu-item-action 'launch-preferences-dialog
    :disabled *preferences-dialog*
    :update-function 'check-if-pref-dialog-is-up ))

(defun check-if-pref-dialog-is-up (pref-menu-item)
  (if *preferences-dialog*
    (ccl:menu-item-disable pref-menu-item)
    (ccl:menu-item-enable pref-menu-item)))



;;;----------
;;; the menu
;;;----------

(defparameter *sparser-menu* nil)

(defun install-Sparser-menu ()
  (setq *sparser-menu*
        (make-instance 'menu
          :menu-title "Sparser"))
  (add-menu-items *sparser-menu*
                     *corpus-menu*
                     *start-corpus* *repeat-last-article* *continue/next*
                    
                     (make-instance 'menu-item
                       :menu-item-title "-")
                    
                     *workbench-menu-item*
                     
                     (make-instance 'menu-item
                       :menu-item-title "-")

                     *preferences-menu-item*)

  ;(add-menu-items *sparser-menu* *citations-menu*)
  ;(add-menu-items *sparser-menu* *backup-menu*)

  (menu-install *sparser-menu*))

