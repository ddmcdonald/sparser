;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "Sparser"
;;;    Module:  "interface;menus:"
;;;   version:  0.6 June 1996

;; initiated 6/17/93 v2.3, fleshed out 6/20 on Book
;; 0.1 (1/25/94) redone from scratch
;;     (3/4) added preferences menu item.  (3/8) revised the treatment of
;;     the 'continue' button to vary between "continue" and "next" depending on
;;     a preference value.
;; 0.2 (3/30) moved the corpus wigets to [menus;corpus]
;; 0.3 (4/19) added checks that the items are available before setting up the menu.
;; 0.4 (1/17/95) moved preferences next to wb and added 'define rule' item
;;     (3/22) added gate for define rule. 
;; 0.5 (4/12) added 'define word' and tweeked setup
;; 0.6 (6/6/96) modified the check on inclusion of the corpus menu too appreciate the
;;      timing during application creation.

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



;;;-----------------------------------------------------
;;; gate guarding what items appear on the Sparser menu
;;;-----------------------------------------------------

(unless (boundp '*spm/include-grammar-modules*)
  (defparameter *spm/include-grammar-modules* t
    "Referenced in Launch-sparser-menus, overridden in the 
     parameters portion of a script file."))


(unless (boundp '*spm/include-backup*)
  (defparameter *spm/include-backup* t
    "Referenced in Launch-sparser-menus, overridden in the 
     parameters portion of a script file."))


(unless (boundp '*spm/include-citations*)
  (defparameter *spm/include-citations* t
    "Referenced in Launch-sparser-menus, overridden in the 
     parameters portion of a script file."))


(unless (boundp ' *spm/include-workbench*)
  (defparameter *spm/include-workbench* t
    "Referenced in Launch-sparser-menus, overridden in the 
     parameters portion of a script file."))


(unless (boundp ' *spm/include-define-rule*)
  (defparameter *spm/include-define-rule* t
    "Referenced in Launch-sparser-menus, overridden in the 
     parameters portion of a script file."))




;;-----------

(defparameter *sparser-menu-items* nil)

(defun determine-items-for-sparser-menu ()
  ;; n.b. these are going on in reverse order -- there's no
  ;; nreverse at the end of this routine. 
  (let ( items )
    (when *spm/include-backup*
      (push *backup-menu* items))

    (when *spm/include-citations*
      (push *citations-menu* items))

    (when (or *spm/include-backup*
              *spm/include-citations*)
      (push (make-instance 'menu-item :menu-item-title "-")
            items))

    (when *spm/include-define-rule*
      (push *define-rule-menu-item* items)
      (push *define-word-menu-item* items)
      (push (make-instance 'menu-item :menu-item-title "-")
            items))
      
    (when *spm/include-workbench*
      (push *preferences-menu-item* items)
      (push *workbench-menu-item* items))

    (when (or *connect-to-the-corpus*
              cl-user::location-of-text-corpora)
      (when *corpus-menu*
        (push (make-instance 'menu-item
                :menu-item-title "-")
              items)
        (push *continue/next* items)
        (push *repeat-last-article* items)
        (push *start-corpus* items)
        (push *corpus-menu* items)))

    (setq *sparser-menu-items* items)))


;;;----------
;;; the menu
;;;----------

(defparameter *sparser-menu* nil)

(defun install-Sparser-menu ()
  (setq *sparser-menu*
        (make-instance 'menu
              :menu-title "Sparser"
              :menu-items *sparser-menu-items* ))
  (menu-install *sparser-menu*))


;(determine-items-for-sparser-menu)
;(install-sparser-menu)
;(menu-deinstall *sparser-menu*)

