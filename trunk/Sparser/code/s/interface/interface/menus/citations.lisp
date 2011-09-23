;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "citations"
;;;   Module:  "interface;menus:"
;;;  version:  0.2 April 1994

;; initiated 11/4/93 v2.3, added test-all-citations 12/23
;; 0.1 (1/25/94) moved out the adding to the menu
;; 0.2 (3/18) reorganized the items as subitems of a "citations" menu
;;     (4/1) added installation function

(in-package :sparser)


;;;---------------
;;; working items
;;;---------------

(defparameter *take-citation-item*
  (make-instance 'menu-item
    :menu-item-title "Take citation"
    :menu-item-action
    #'(lambda ()
        (eval-enqueue (take-citation+check+save)))))

(defparameter *test-citations*
  (make-instance 'menu-item
    :menu-item-title "Test all the citations"
    :menu-item-action
    #'(lambda ()
        (eval-enqueue (test-all-citations)))))


;;;----------------
;;; composite menu
;;;----------------

(defparameter *citations-menu*
  (make-instance 'menu
    :menu-title "citations"
    :menu-items `(  ,*take-citation-item*
                    ,*test-citations*
                    )))


(defun install-citations-menu ()
  (setq *citations-menu*
        (make-instance 'menu
          :menu-title "citations"))
  (add-menu-items *citations-menu*
                  *take-citation-item* *test-citations*)
  (menu-install *citations-menu*))

