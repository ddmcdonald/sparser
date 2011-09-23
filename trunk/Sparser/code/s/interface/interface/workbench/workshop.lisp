;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   module:  "interface;windows:articles:"
;;;  Version:   November 1993

;; initiated (MCL2.0 version) 11/11/93 v2.3

(in-package :sparser)


(defparameter *workshop-window*
  (MAKE-INSTANCE 'DIALOG
    :WINDOW-TYPE  :DOCUMENT-WITH-GROW
    :WINDOW-TITLE   "Workbench"
    :VIEW-POSITION   #@(19 64)
    :VIEW-SIZE    #@(510 224)
    :VIEW-FONT  '("Chicago" 12 :SRCOR :PLAIN)
    :VIEW-SUBVIEWS
        (LIST (MAKE-DIALOG-ITEM 
               'BUTTON-DIALOG-ITEM  ;; class
               #@(14 8)             ;; position
               #@(55 16)            ;; size
               "next"               ;; text
               'NIL                 ;; action
               :DEFAULT-BUTTON NIL)
          (MAKE-DIALOG-ITEM
           'BUTTON-DIALOG-ITEM
           #@(88 8)
           #@(52 16)
           "down"
           'NIL
           :DEFAULT-BUTTON
           NIL)
          (MAKE-DIALOG-ITEM
           'BUTTON-DIALOG-ITEM
           #@(146 8)
           #@(41 17)
           "up"
           'NIL
           :DEFAULT-BUTTON
           NIL)
          (MAKE-DIALOG-ITEM
           'BUTTON-DIALOG-ITEM
           #@(208 8)
           #@(69 17)
           "previous"
           'NIL
           :DEFAULT-BUTTON
           NIL)
          (MAKE-DIALOG-ITEM
           'RADIO-BUTTON-DIALOG-ITEM
           #@(364 10)
           #@(72 16)
           "inspect"
           'NIL
           :RADIO-BUTTON-PUSHED-P
           T)
          (MAKE-DIALOG-ITEM
           'RADIO-BUTTON-DIALOG-ITEM
           #@(365 28)
           #@(72 16)
           "define"
           'NIL)))
