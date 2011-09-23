;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "buttons"
;;;   module:  "interface;workbench:"
;;;  Version:  0.2 February 1995

;; broken out from various files 2/28/94 v2.3.  Finally fleshed out
;; 9/13,14.  (11/21) added 8 inch case to parameterization.
;; 0.1 (12/13) added Hide-aux-view-buttons, converted to a generic routine
;;      to assign unique button cluster numbers
;; 0.2 (2/28/95) changed init values of pushedp on the inspector bypass radio
;;      buttons to absolute {t, nil} to fix timing problem on former global.


(in-package :sparser)

;;;-------------------------------
;;; button cluster id definitions
;;;-------------------------------

(defvar *number-for-next-button-cluster* 0)

(defun next-button-cluster-number ()
  (incf *number-for-next-button-cluster*))



;;;-----------------
;;; button clusters
;;;-----------------

(defparameter *button-cluster/pref-subviews*
  (next-button-cluster-number))

(defparameter *button-cluster/aux-view/sorting*
  (next-button-cluster-number))

(defparameter *button-cluster/inspector-bypass*
  (next-button-cluster-number))


;;;--------------------
;;; referenced globals
;;;--------------------

(defparameter *i/bindings-are-being-bypassed* t
  "If this isn't nil, then when a binding is selected in the
   inspector, a double click will display its value rather than
   the binding itself." )



;;;--------------------------------------------------
;;; walking the projection of edges in the Text View
;;;--------------------------------------------------

(defparameter *next-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM   ;; class
                    #@(14 8)              ;; position: hor. - vert.
                    #@(55 16)             ;; size
                    "next"                ;; text
                    'select-next-treetop  ;; action
                    :DEFAULT-BUTTON NIL
                    ))

(defparameter *previous-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM
                    #@(208 8)
                    #@(69 17)
                    "previous"
                    'select-previous-edge
                    :DEFAULT-BUTTON
                    NIL
                    ))

(defparameter *down-button*
  (MAKE-DIALOG-ITEM  'BUTTON-DIALOG-ITEM
                     #@(88 8)
                     #@(52 16)
                     "down"
                     'select-first-edge-down
                     :DEFAULT-BUTTON NIL
                     ))

(defparameter *up-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM
                    #@(146 8)
                    #@(41 17)
                    "up"
                    'select-parent
                    :DEFAULT-BUTTON NIL
                    ))


;;;---------------------------
;;; pause/resume the analysis
;;;---------------------------

(defparameter *wb/pause-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(323 8)  ;; or try 308
   #@(69 19)
   "pause"
   'react-to-click-on-pause-button
   :DEFAULT-BUTTON
   NIL))


;;;-------------
;;; define word
;;;-------------

(defparameter *wb/define-word-button*
  (make-dialog-item 'button-dialog-item
                    #@(403 8) ;; position
                    #@(90 17) ;; size
                    "define word"
                    'open-autodef-window
                    :default-button nil
                    ))



;;;-------------------------------------------------------
;;; walking the text view by instances of content objects
;;;-------------------------------------------------------

(defparameter *iw/backwards-button*
  (make-dialog-item
   'button-dialog-item
   #@(270 335)  ;; position
   #@(69 17) ;; size
   "prior"   ;; text
   'item-walk/select-previous-item
   :default-button nil))

(defparameter *iw/forwards-button*
  (make-dialog-item
   'button-dialog-item
   #@(410 335)  ;; position
   #@(69 17) ;; size
   "next"   ;; text
   'item-walk/select-next-item
   :default-button nil))

(defparameter *iw/iteration-text*
  (make-dialog-item
   'static-text-dialog-item
   #@(360 335)
   #@(45 17)
   ""
   'nil ))

(defparameter *iw/current-unit*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(9 369)
   #@(498 16)
   ""
   'NIL
   :VIEW-FONT '("Courier" 10 :SRCOR :PLAIN)))


;;;-------------------------------------------------
;;; buttons in the aux-view (contents/domain-model)
;;;-------------------------------------------------

(defparameter *sv/sort-by-frequency*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(9 419)
   #@(114 16)
   "by frequency"
   'pushed-sort-by-frequency
   :RADIO-BUTTON-PUSHED-P (eq *instance-sorting-routine*
                              'sort-discourse-entries-by-frequency)
   :RADIO-BUTTON-CLUSTER *button-cluster/aux-view/sorting*))

(defparameter *sv/sort-alphabetically*
  (MAKE-DIALOG-ITEM
  'RADIO-BUTTON-DIALOG-ITEM
  #@(126 419)
  #@(121 19)
  "alphabetically"
  'pushed-sort-alphabetically
  :RADIO-BUTTON-PUSHED-P (eq *instance-sorting-routine*
                             'sort-discourse-entries-alphabetically)
  :RADIO-BUTTON-CLUSTER *button-cluster/aux-view/sorting*))


(defun pushed-sort-by-frequency (button)
  (declare (ignore button))
  (setq *instance-sorting-routine* 'sort-discourse-entries-by-frequency)
  (update-auxiliary-view))

(defun pushed-sort-alphabetically (button)
  (declare (ignore button))
  (setq *instance-sorting-routine* 'sort-discourse-entries-alphabetically)
  (update-auxiliary-view))



;;;--------------------------
;;; widgets in the inspector
;;;--------------------------

(defparameter *i/unit-selected-text*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(14 374)
  #@(365 16)
  ""
  'nil
  :VIEW-FONT '("Courier" 10 :SRCOR :PLAIN)))

(defparameter *i/by-pass-bindings-radio-button*
  (MAKE-DIALOG-ITEM
  'RADIO-BUTTON-DIALOG-ITEM
  #@(4 395)
  #@(133 16)
  "by-pass bindings"
  'toggle-inspector-bypass-bindings-flag
  :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
  :RADIO-BUTTON-PUSHED-P  t ;; *i/bindings-are-being-bypassed*
  :RADIO-BUTTON-CLUSTER *button-cluster/inspector-bypass*))

(defparameter *i/by-pass-other-radio-button*
  (MAKE-DIALOG-ITEM
  'RADIO-BUTTON-DIALOG-ITEM
  #@(147 395)
  #@(97 16)
  "do bindings"
  'toggle-inspector-bypass-bindings-flag
  :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
  :RADIO-BUTTON-PUSHED-P nil ;; *i/bindings-are-being-bypassed*
  :RADIO-BUTTON-CLUSTER *button-cluster/inspector-bypass*))

(defparameter *i/inspect-in-lisp-inspector-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(271 394)
  #@(115 17)
  "Lisp inspector"
  'lisp-inspect-current-inspector-item
  :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
  :DEFAULT-BUTTON NIL))



;;;----------------------------------------
;;; Adjusting where the buttons are placed
;;;----------------------------------------

(defun locate-buttons-for-separate-wb-windows ()
  (ecase *monitor-size*
    ((or :20-inch :14-inch)
     (set-view-position *iw/forwards-button* #@(10 395))
     (set-view-position *iw/backwards-button* #@(150 395))
     (set-view-position *iw/iteration-text* #@(97 395))
     (set-view-position *wb/pause-button* #@(400 395))
     (set-view-position *iw/current-unit* #@(15 374))
     (ccl:dialog-item-disable *iw/backwards-button*)
     (ccl:dialog-item-disable *iw/forwards-button*)
     (ccl:set-dialog-item-text *iw/iteration-text* "")
     (ccl:set-dialog-item-text *iw/current-unit*   ""))
    (:8-inch
     (set-view-position *iw/forwards-button* #@(10 328))
     (set-view-position *iw/backwards-button* #@(150 328))
     (set-view-position *iw/iteration-text* #@(97 328))
     (set-view-position *wb/pause-button* #@(400 326))
     (set-view-position *iw/current-unit* #@(15 310))
     (ccl:dialog-item-disable *iw/backwards-button*)
     (ccl:dialog-item-disable *iw/forwards-button*)
     (ccl:set-dialog-item-text *iw/iteration-text* "")
     (ccl:set-dialog-item-text *iw/current-unit*   ""))))


(defun locate-buttons-for-all-in-one-wb ()
  (set-view-position *iw/forwards-button* #@(410 335))
  (set-view-position *iw/backwards-button* #@(270 335))
  (set-view-position *iw/iteration-text* #@(360 335))
  (set-view-position *wb/pause-button* #@(323 8))
  (set-view-position *iw/current-unit* #@(498 16))
  (ccl:dialog-item-disable *iw/backwards-button*)
  (ccl:dialog-item-disable *iw/forwards-button*)
  (ccl:set-dialog-item-text *iw/iteration-text* "")
  (ccl:set-dialog-item-text *iw/current-unit*   ""))


(defun hide-aux-view-buttons ()
  ;; presumes all-in-one.  Called from Initialize-subview-state
  ;; when it is in :edges mode.
  (set-view-position *iw/forwards-button* #@(410 435))
  (set-view-position *iw/backwards-button* #@(270 435))
  (set-view-position *iw/iteration-text* #@(360 435)))
  

