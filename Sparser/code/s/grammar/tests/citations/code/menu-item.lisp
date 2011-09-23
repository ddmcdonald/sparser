;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "menu item"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  January 1994

;; initiated 11/4/93 v2.3, added test-all-citations 12/23
;; 0.1 (1/25/94) moved out the adding to the menu

(in-package :sparser)


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

