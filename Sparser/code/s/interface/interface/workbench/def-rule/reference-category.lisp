;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "reference category"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  0.1 November 1995

;; broken out of [define-rule] 4/27.  6/14 Added calculation for default
;; 0.1 (8/17) made it a custom window.  10/19 finishing it.  11/16 fixed
;;      a small bug

(in-package :sparser)

;;;--------------------------------------------
;;; tableau for setting the reference category
;;;--------------------------------------------

(defparameter *rcw/directive-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(14 7)
          #@(214 34)
          ""
          'NIL))

(defparameter *rcw/input-box*
  (MAKE-DIALOG-ITEM
          'EDITABLE-TEXT-DIALOG-ITEM
          #@(13 50)
          #@(214 16)
          ""
          'NIL
          :ALLOW-RETURNS NIL))

(defparameter *rcw/get-category-menu-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(10 79)
          #@(136 16)
          "category menu"
          'launch/wire-category-menu-to-rcw-tableau
          :DEFAULT-BUTTON NIL))

(defparameter *rcw/ok-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(178 78)
          #@(48 21)
          "OK"
          'rcw/ok-action
          :DEFAULT-BUTTON T))

(defparameter *rcw/abort-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(175 112)
          #@(54 16)
          "abort"
          'rcw/abort-action
          :DEFAULT-BUTTON NIL))


(defparameter *reference-category-window* nil)

(defun launch-reference-category-window ()
  (setq *reference-category-window*
        (MAKE-INSTANCE 'DIALOG
          :WINDOW-TYPE :DOCUMENT  ;;-WITH-GROW
          :window-title "Select Reference Category"
          :VIEW-POSITION  #@(78 96)
          :VIEW-SIZE  #@(250 132)   ;;#@(234 132)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS (LIST *rcw/directive-text*
                               *rcw/input-box*
                               *rcw/get-category-menu-button*
                               *rcw/ok-button*
                               *rcw/abort-button* )))
  
  (initialize-reference-category-window))


(defun initialize-reference-category-window ()
  (ccl:set-dialog-item-text *rcw/directive-text*
                            "Enter the name of a category")
  (ccl:set-current-key-handler *reference-category-window*
                               *rcw/input-box*))



;;;--------------------
;;; driver and actions
;;;--------------------

;;--- button action that the user initiates.

(defun rdt/get-reference-category (reference-category-button)
  (ccl:dialog-item-disable reference-category-button)
  (if *slvd/reference-category*
    (display-in-inspector *slvd/reference-category*)
    (launch-reference-category-window)))


;;--- co-opting the category menu

(defun launch/wire-category-menu-to-rcw-tableau (category-menu-button)
  (declare (ignore category-menu-button))
  (if *category-table*
    (ccl:set-window-layer *category-selection-dialog* 0)
    (launch-the-category-selection-tableau))
  (wire-category-menu-to-rcw-tableau))


(defun wire-category-menu-to-rcw-tableau ()
  (setq *additional-category-tableau-selection-action*
        'Fill-rcw-input-box-with-category-from-menu))

(defun release-category-menu-from-rcw-tableau ()
  (setq *additional-category-tableau-selection-action* nil))


(defun fill-rcw-input-box-with-category-from-menu (category)
  ;; It's a bit sad that we've got the object already in our hand
  ;; and are letting it go only to reconstruct it in the OK action,
  ;; but that makes the code simple, and simple is good.
  (ccl:set-dialog-item-text
   *rcw/input-box* (symbol-name (cat-symbol category)))
  (ccl:set-window-layer *reference-category-window* 0))



;;--- ok/abort actions

(defun rcw/ok-action (ok-button)
  (declare (ignore ok-button))
  (let* ((category-namestring (ccl:dialog-item-text *rcw/input-box*)))

    (if (equal category-namestring "")
      (rcw/abort-action nil)

      (let ((category-symbol
             (intern category-namestring *category-package*))
            category )

        (setq category (category-named category-symbol))

        (if category
          (then
            (setq *rdt/reference-category* category)
            (ccl:dialog-item-enable *rdtrpw/reference-category-button*)
            (display-in-inspector category)
            (rcw/abort-action nil) ;; close the rcw window
            (ccl:set-window-layer *rdt/rule-populating-window* 0)
            category )
          (else
            (setup-rcw-for-revising-category category-namestring)))))))


(defun setup-rcw-for-revising-category (present-string)
  (ccl:set-dialog-item-text
   *rcw/directive-text*
   (format nil "~A is~%not the name of a category." present-string)))


(defun rcw/abort-action (abort-button)
  (declare (ignore abort-button))
  (ccl:set-dialog-item-text *rcw/input-box* "")
  (release-category-menu-from-rcw-tableau)
  (ccl:window-close *reference-category-window*)
  (ccl:dialog-item-enable *rdtrpw/reference-category-button*))






;;;------------------------------------------------
;;; if it's not set by the user, workout a default
;;;------------------------------------------------

(defun rdt/default-the-reference-category-for-purposes-of-saving-the-rule ()
  ;; Called from rdt/Readout-rule-tableau when *rdt/reference-category*
  ;; is nil.  The user didn't specify a reference category from the
  ;; tableau, so we infer one from the fields the filled in during the
  ;; most recent case.   
  ;;     What hangs on this is what category is put out with the save-form.
  ;; Presently it is ignored, but eventually it will at least be a way
  ;; to sort the 'new rules'.
  (setq *rdt/reference-category*
        (or *rdt/result-category*     ;; when the rule instantiates an object
            *rdt/head-line-category*  ;; for Chomsky-adjunction cases and as a heuristic
            *rdt/lhs-label*))

  (unless *rdt/reference-category*
    (when *break-on-unexpected-cases*
      (break "Criteria for defaulting the value of~
              ~%   *rdt/reference-category*~
              ~%are not good enough. It will still be nil if you continue.~%~%"))))



