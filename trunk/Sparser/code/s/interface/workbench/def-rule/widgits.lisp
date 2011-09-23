;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "widgits"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  November 1995

;; broken out of [define-rule] 4/27.  Moved accumulators 5/1
;; 8/28 added dossier widgets.  11/17 added result announcement widgets

(in-package :sparser)

;;;----------------------------
;;;----------------------------
;;; the rule populating dialog
;;;----------------------------
;;;----------------------------

(defparameter *button-cluster/rule-populating*
  (next-button-cluster-number))

;;;----------------
;;; syntax widgets
;;;----------------

(defparameter *rdtrpw/syntax-label*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(84 7) 
   #@(56 16)
   "Syntax"
   'NIL ))


;;--- radio buttons

(defparameter *rdtrpw/lhs-radio-button*
  (MAKE-DIALOG-ITEM
  'RADIO-BUTTON-DIALOG-ITEM
  #@(3 39)
  #@(17 16)
  ""
  'rdt/lhs-radio-button-action
  :radio-button-cluster *button-cluster/rule-populating*
  :RADIO-BUTTON-PUSHED-P T))

(defparameter *rdtrpw/rhs/left/radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(3 84)
   #@(17 16)
   ""
   'rdt/rhs/left-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))

(defparameter *rdtrpw/rhs/right/radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(3 129)
   #@(17 16)
   ""
   'rdt/rhs/right-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))


;;--- input boxes

(defclass rdtrpw/text-input-box (editable-text-dialog-item) ())

(defparameter *rdtrpw/lhs-input*
  (MAKE-DIALOG-ITEM
  'rdtrpw/text-input-box
  #@(25 39)                       ;; 45 b/w successive boxes
  #@(186 16)
  "lhs"
  'NIL
  :ALLOW-RETURNS t))

(defparameter *rdtrpw/rhs/left/input*
  (MAKE-DIALOG-ITEM
  'rdtrpw/text-input-box
  #@(25 84)
  #@(186 16)
  "rhs,  left-edge"
  'NIL
  :ALLOW-RETURNS t))

(defparameter *rdtrpw/rhs/right/input*
  (MAKE-DIALOG-ITEM
  'rdtrpw/text-input-box
  #@(25 129)
  #@(186 16)
  "rhs,  right-edge"
  'NIL
  :ALLOW-RETURNS t))



;;--- annotation regions

(defparameter *rdtrpw/lhs-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(25 62)                        ;; /// lower than their input box
  #@(140 12)
  "lefthand side"
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/rhs/left/description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(25 108)
  #@(140 12)
  "rhs: left-edge"
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/rhs/right/description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(25 154)
  #@(140 12)
  "rhs: right-edge"
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))



;;;-------------------
;;; semantics widgets
;;;-------------------

(defparameter *rdtrpw/semantics-label*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(260 6)
  #@(72 16)
  "Semantics"
  'NIL))

(defparameter *rdtrpw/reference-category-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(337 6)
  #@(98 16)
  "reference category"
  'rdt/get-reference-category
  :VIEW-FONT '("New York" 9 :SRCOR :PLAIN)
  :DEFAULT-BUTTON NIL))



;;--- radio buttons

(defparameter *rdtrpw/result-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(228 39)
   #@(17 16)
   ""
   'rdt/result-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))

(defparameter *rdtrpw/comp-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(228 84)
   #@(17 16)
   ""
   'rdt/comp-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))

(defparameter *rdtrpw/headline-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(228 129)
   #@(17 16)
   ""
   'rdt/head-line-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))


;;--- input boxes

(defparameter *rdtrpw/result-input*
  (MAKE-DIALOG-ITEM
  'rdtrpw/text-input-box
  #@(252 39)
  #@(186 16)
  "category of result"
  'NIL
  :ALLOW-RETURNS t))

(defparameter *rdtrpw/comp-input*
  (MAKE-DIALOG-ITEM
  'rdtrpw/text-input-box
  #@(252 84)
  #@(186 16)
  "slot filled by comp/spec"
  'NIL
  :ALLOW-RETURNS t))

(defparameter *rdtrpw/headline-input*
  (MAKE-DIALOG-ITEM
  'rdtrpw/text-input-box
  #@(252 129)
  #@(186 16)
  "slot filled by head"
  'NIL
  :ALLOW-RETURNS t))


;;--- annotation regions

(defparameter *rdtrpw/result-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(252 62)
  #@(140 12)
  "result"
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/comp-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(252 106)
  #@(140 12)
  "complement / specifier"
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/headline-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(252 154)
  #@(140 12)
  "head"
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))



;;;---------
;;; control
;;;---------

(defparameter *rdtrpw/ok-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(14 187)
  #@(78 24)
  "Evaluate"
  'rdt/readout-rule-tableau
  :DEFAULT-BUTTON nil))

(defparameter *rdtrpw/next-pattern-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(106 187)
   #@(139 31)
   "next pattern"
   'rdt/setup-next-pattern
   :DEFAULT-BUTTON T))


(defparameter *rdtrpw/change-schema-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(239 189)
  #@(143 22)
  "different schema"
  'rdt/choose-a-different-schema
  :DEFAULT-BUTTON NIL))

(defparameter *rdtrpw/abort-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(390 189)
  #@(56 22)
  "abort"
  'rdt/abort-rule-population-process
  :DEFAULT-BUTTON NIL))



;;;----------
;;; dossiers
;;;----------

(defparameter *rdt/dossier-label*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(39 224)
   #@(56 17)
   "dossier:"
   'NIL))

(defparameter *rdt/dossier-namestring*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(107 226)
   #@(263 35)
   ""
   'NIL
   :VIEW-FONT '("Times" 12 :SRCOR :PLAIN)))

(defparameter *rdt/change-dossier-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(8 244)
   #@(84 16)
   "change dossier"
   'rdt/change-the-dossier
   :VIEW-FONT '("Times" 12 :SRCOR :PLAIN)
   :DEFAULT-BUTTON NIL))


;;;--------------------------------------------
;;; anouncements after the process is finished
;;;--------------------------------------------

(defparameter *rdt/result-rule-banner*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(14 10)
   #@(273 16)
   "Created these rules:"
   'NIL))

(defparameter *rdt/result-rule-listing*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(50 33)
   #@(392 146)
   ""
   'NIL
   :VIEW-FONT '("Times" 10 :SRCOR :PLAIN)))

(defparameter *rdt/result-saved-banner*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(7 186)
   #@(335 16)
   "saved the equivalent tree-family mapping to:"
   'NIL
   :VIEW-FONT '("Chicago" 10 :SRCOR :PLAIN)))

(defparameter *rdt/result-saved-filename*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(39 201)
   #@(399 27)
   ""
   'NIL
   :VIEW-FONT '("Times" 10 :SRCOR :PLAIN)))

(defparameter *rdt/result-view-file-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(50 248)
   #@(112 16)
   "check the file"
   'rdt/edit-the-save-file
   :DEFAULT-BUTTON NIL))

(defparameter *rdt/result-ok-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(380 239)
   #@(50 26)
   "OK"
   'rdt/close-the-rdt-tableau
   :DEFAULT-BUTTON T))


#|
*rdtrpw/ok-button*
*rdtrpw/next-pattern-button*
*rdtrpw/change-schema-button*
*rdtrpw/abort-button*

*rdtrpw/syntax-label*

*rdtrpw/lhs-radio-button*
*rdtrpw/lhs-input*
*rdtrpw/lhs-description*

*rdtrpw/rhs/left/radio-button*
*rdtrpw/rhs/left/input*
*rdtrpw/rhs/left/description*

*rdtrpw/rhs/right/radio-button*
*rdtrpw/rhs/right/input*
*rdtrpw/rhs/right/description*

*rdtrpw/semantics-label*
*rdtrpw/reference-category-button*

*rdtrpw/headline-radio-button*
*rdtrpw/headline-input*
*rdtrpw/headline-description*

*rdtrpw/comp-radio-button*
*rdtrpw/comp-input*
*rdtrpw/comp-description*

*rdtrpw/result-radio-button*
*rdtrpw/result-input*
*rdtrpw/result-description*

*rdt/lhs-label*
*rdt/rhs-left-label*
*rdt/rhs-right-label*
*rdt/result-category*
*rdt/head-line-category*
*rdt/comp-category*

*rdt/dossier-label*
*rdt/dossier-namestring*
*rdt/change-dossier-button*

*rdt/result-rule-banner*
*rdt/result-rule-listing*
*rdt/result-saved-banner*
*rdt/result-saved-filename*
*rdt/result-view-file-button*
*rdt/result-ok-button*

|#


