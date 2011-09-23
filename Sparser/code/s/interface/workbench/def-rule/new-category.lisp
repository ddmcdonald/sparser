;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "new category?"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  October 1995

;; initiated 4/28/95. Added name 10/19

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defvar *unknown-category-query-dialog* nil)  ;; points to the window

(defparameter *ukcq/name-of-category-being-defined* nil
  "initially set to the string that is passed in. Revised to fit
   any revision to the string that the user makes.")

(defparameter *ukcq/string-has-been-modified* nil
  "Set by the view-key-event-handler for this input box whenever
   a character is passed to it.")

(defparameter *rdtrpw/input-box-being-filled* nil
  "Set by Interpret-rdtrpw-string-as-category as our means of
   communicating the results of the query back to the rule
   population dialog.  ")


;;;---------
;;; actions
;;;---------

(defun ukcq/define-box-string-as-category (ukcq-define-button)
  (declare (ignore ukcq-define-button))
  (let ((string
         (if *ukcq/string-has-been-modified*
           (ccl:dialog-item-text *ukcq/category-input-box*)
           *ukcq/name-of-category-being-defined*)))

    (if (equal string "")
      (ukcq/return-to-rule-def-tableau nil)
      (let* ((category-name (intern string
                                    *category-package*))
             (category (define-category/expr category-name
                         ;; assume that what they want is a
                         ;; referential category
                         '(:specializes nil))))

        (window-close *unknown-category-query-dialog*)
        (ukcq/return-category category string)))))



(defun ukcq/check-changed-spelling (changed-spelling-button)
  ;; The user has changed the string (which was detected directly
  ;; when they typed some character to it), we check whether
  ;; what they have there now corresponds to a category, and
  ;; if so, ///
  (let* ((revised-string (ccl:dialog-item-text *ukcq/category-input-box*))
         (symbol (intern revised-string *category-package*)))
    (if (category-named symbol)
      (ukcq/return-category (category-named symbol) revised-string)
      (else
        (ccl:set-dialog-item-text *ukcq/explanation-text*
                                "This is still not the name of a
known category")
        (ccl:dialog-item-disable changed-spelling-button)))))



(defun ukcq/return-to-rule-def-tableau (cancel-button)
  (declare (ignore cancel-button))
  (ccl:set-dialog-item-text *rdtrpw/input-box-being-filled* "")
  (window-close *unknown-category-query-dialog*))


(defun ukcq/Return-category (category string)
  ;; We've accepted or defined the user's string, and now we need
  ;; to get that information back to the germaine places in the
  ;; state information of the rule population dialog
  (setq *rdt/input-field-for-selected-edge*
        *rdtrpw/input-box-being-filled*)
  (fill-rdt-field string category))


;;;---------
;;; widgets
;;;---------

(defparameter *ukcq/explanation-text*
  (MAKE-DIALOG-ITEM 'STATIC-TEXT-DIALOG-ITEM
                    #@(9 46)
                    #@(289 34)
                    "This is not the name of a known category.
Do you want it defined?"
                    'NIL))


(defparameter *ukcq/define-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM
                    #@(12 93)
                    #@(81 26)
                    "define it"
                    'ukcq/define-box-string-as-category
                    :DEFAULT-BUTTON T))


(defparameter *ukcq/try-new-spelling-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM
                    #@(112 92)
                    #@(130 26)
                    "try new spelling"
                    'ukcq/check-changed-spelling
                    :DEFAULT-BUTTON NIL))


(defparameter *ukcq/cancel-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM
                    #@(255 97)
                    #@(62 16)
                    "cancel"
                    'ukcq/return-to-rule-def-tableau
                    :DEFAULT-BUTTON NIL))




;;--- specialized class for input box

(defclass ukcq/input-box (EDITABLE-TEXT-DIALOG-ITEM) ())

(defparameter *ukcq/category-input-box*
  (MAKE-DIALOG-ITEM 'ukcq/input-box
                    #@(8 14)
                    #@(316 16)
                    "Untitled"
                    'NIL
                    :ALLOW-RETURNS NIL))

(defmethod view-key-event-handler ((input-box ukcq/input-box)
                                   char )
  ;(format t "~&~A~%" char)
  (setq *ukcq/string-has-been-modified* t)
  (ccl:dialog-item-enable *ukcq/try-new-spelling-button*)
  (call-next-method input-box char))


;;;--------
;;; window
;;;--------

(defclass unknown-category-query-dialog (dialog) ())

(defun launch-unknown-category-query-dialog (string-for-category)
  (setq *unknown-category-query-dialog*
        (MAKE-INSTANCE 'unknown-category-query-dialog
          :WINDOW-TYPE :DOCUMENT-WITH-GROW
          :window-title "Unknown Category"
          :VIEW-POSITION  #@(34 50)
          :VIEW-SIZE      #@(340 144)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS
          (LIST *ukcq/explanation-text*
                *ukcq/category-input-box*
                *ukcq/define-button*
                *ukcq/try-new-spelling-button*
                *ukcq/cancel-button*)))

  (initialize-unknown-category-query-dialog string-for-category))


(defmethod window-close ((w unknown-category-query-dialog))
  (setq *unknown-category-query-dialog* nil)
  (call-next-method w))


(defun initialize-unknown-category-query-dialog (string)
  (setq *ukcq/name-of-category-being-defined* string
        *ukcq/string-has-been-modified* nil)
  (ccl:set-dialog-item-text *ukcq/category-input-box* string)
  (ccl:set-dialog-item-text *ukcq/explanation-text*
                            "This is not the name of a known category.
Do you want it defined?")
  (ccl:set-current-key-handler *unknown-category-query-dialog*
                               *ukcq/category-input-box*)
  (ccl:dialog-item-disable *ukcq/try-new-spelling-button*))
