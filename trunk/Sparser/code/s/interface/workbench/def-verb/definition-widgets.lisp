;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "definition widgets"
;;;   Module:  "interface;workbench:def verb:"
;;;  version:  June 1996

;; initiated 3/8/95. Elaborated 4/14.  8/28 accomodated tracking the
;; dossier used.  12/26 added global for tree-family restrictions.
;; 6/18/96 moved into [workbench;def verb:]

(in-package :sparser)

#|
*slvd-window*
*slvd/banner-text*
*slvd/def-verb-button*
*slvd/def-args-button*
*slvd/save*
*slvd/cancel*
*slvd/word-string*
*slvd/cfrs*
*slvd/labeling-category*
*slvd/reference-category*
*slvd/referent*
*slvd/save-routine*
|#


(defparameter *slvd-window* nil
  "Sub Language Verb Definition window. It points to the dialog box
   that manages the procedure")


(defparameter *slvd/banner-text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(10 8)
   #@(315 45)
   ""
   'NIL))

(defparameter *slvd/def-verb-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(25 57)
   #@(134 23)
   "verb morphology"
   'slvd/define-the-verb
   :DEFAULT-BUTTON NIL))

(defparameter *slvd/def-args-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(24 90)
   #@(137 24)
   "argument patterns"
   'slvd/define-the-arguments
   :DEFAULT-BUTTON NIL))

(defparameter *slvd/save*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(237 60)
   #@(88 21)
   "save to file"
   'slvd/save-to-file
   :DEFAULT-BUTTON NIL))

(defparameter *slvd/cancel*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(262 110)
   #@(62 16)
   "cancel"
   'slvd/abort
   :DEFAULT-BUTTON NIL))


(defparameter *slvd/word-string* nil
  "Set by the autodef routine that sets the definition
   process in motion.")

(defparameter *slvd/cfrs* nil  ;;//// unclear that this 
                               ;; has realistic/needed hooks
  "Collects the cfrs made in the course of the two definition
   procedures to be stored with the individual/category whose
   realization this is defining.")


(defparameter *slvd/labeling-category* nil
  "Set by the autodef routine. This is the label that the
   verb is rewritten as.")

(defparameter *slvd/tree-family-restriction* nil
  "Set by the autodef routine. When it has a value it adjusts the
   list of tree families that are available in the schema-selection
   window. Its value is a list of categories.")

(defparameter *slvd/reference-category* nil
  "Set by the autodef routine.  This is the category that
   has the set of slots used by define rule")

(defparameter *slvd/referent* nil
  "Set by the autodef routine. This is the individual or category
   that the verb gets as its referent.")

(defparameter *slvd/save-routine* nil
  "Set by the autodef routine. Used in rdt/Save-new-rule as 
   a hook for an alternative procedure for saving the 
   information to a file.")



(defclass slvd-window (dialog) ())

(defun launch-the-slvd-window ()
  ;; Called from an autodef driver like define-get-position-verb.
  ;; All this does is bring up the window.  The caller runs
  ;; the initialization routine directly since it has to
  ;; set the values for its arguments.
  (setq *slvd-window*
        (MAKE-INSTANCE 'slvd-window
          :WINDOW-TYPE :DOCUMENT-WITH-GROW
          :window-title "Define verb"
          :VIEW-POSITION  #@(100 100)
          :VIEW-SIZE  #@(339 141)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS (LIST *slvd/banner-text*
                               *slvd/def-verb-button*
                               *slvd/def-args-button*
                               *slvd/save*
                               *slvd/cancel*))))
  


(defun slvd/abort (cancel-button)
  (declare (ignore cancel-button))
  (ccl:window-close *slvd-window*))

(defmethod window-close ((w slvd-window))
  (close-down-slvd-state)
  (call-next-method w))

(defun close-down-slvd-state ()
  (ccl:set-dialog-item-text *slvd/banner-text* "")
  (ccl:dialog-item-disable *slvd/def-verb-button*)
  (ccl:dialog-item-disable *slvd/def-args-button*)
  (ccl:dialog-item-disable *slvd/save*)
  (when *autodefine-window*
    ;; when this window is shut down, we check whether we
    ;; were called from the autodef (= this global having
    ;; a value) and if so we bring that back up.
    (ccl:set-window-layer *autodefine-window* 0)
    (deselect-any-selection/autodef))
  (setq *slvd/word-string* nil
        *slvd/cfrs* nil
        *slvd/labeling-category* nil
        *slvd/reference-category* nil
        *slvd/referent* nil
        *slvd/save-routine* nil
        *slvd-window* nil))



(defun initialize-slvd-state (word-string
                              category-string
                              pupose-string )

  ;; Called from an autodef driver like define-get-position-verb

  (ccl:set-dialog-item-text
   *slvd/banner-text* (format nil "Defining \"~A\" as a ~A verb ~
                                   ~A"
                              word-string category-string
                              pupose-string ))

  (ccl:dialog-item-enable *slvd/def-verb-button*)
  (ccl:dialog-item-disable *slvd/def-args-button*)
  (ccl:dialog-item-disable *slvd/save*)
  (ccl:dialog-item-enable *slvd/cancel*)
  (ccl:set-default-button *slvd-window* *slvd/def-verb-button*)
  (setq *slvd/word-string* word-string
        *slvd/cfrs* nil))



(defun slvd/define-the-verb (def-verb-button)
  (ccl:dialog-item-disable def-verb-button)
  (let ((result
         ;; Run the modal dialog that checks whether
         ;; the guesses about the spelling forms of
         ;; the conjugation are correct.
         (define-word-as-verb *slvd/word-string*
           :category *slvd/labeling-category*
           :referent *slvd/referent* )))
    (if result
      (then
        (ccl:set-window-layer *slvd-window* 0)
        (ccl:dialog-item-enable *slvd/def-args-button*)
        (ccl:set-default-button *slvd-window* *slvd/def-args-button*))
      (else
        ;; Returning Nil is the signal from Define-word-..
        ;; that the cancel button was hit.  We treat it
        ;; like canceling the whole process
        (ccl:window-close *slvd-window*)))))



(defun slvd/define-the-arguments (def-args-button)
  ;; The launch routine returns immediately after it brings up
  ;; the tableau, and everything after than is unthreaded and
  ;; dependent just on what dialog actions the user takes.
  (ccl:dialog-item-disable def-args-button)
  (launch-the-rule-defining-tableau))


(defun slvd/Canceled-out-of-schema-selection ()
  ;; If they abort out of the schema-selection dialog, we end up
  ;; in rdt/abort-selection-schema.  That routine checks for
  ;; the global *slvd/referent* having a referent, in which case
  ;; it calls this routine. 
  (ccl:set-window-layer *slvd-window* 0)
  (ccl:dialog-item-enable *slvd/def-args-button*)
  (ccl:dialog-item-enable *slvd/def-verb-button*)
  (ccl:set-default-button *slvd-window* *slvd/def-args-button*))


(defun slvd/Canceled-out-of-rule-population ()
  ;; ditto via rdt/Abort-rule-population-process.
  (ccl:set-window-layer *slvd-window* 0)
  (ccl:dialog-item-enable *slvd/def-args-button*)
  (ccl:dialog-item-enable *slvd/def-verb-button*)
  (ccl:set-default-button *slvd-window* *slvd/def-args-button*))
  


(defun slvd/Prepare-for-save-process ()
  ;; Called from rdt/Save-new-rule so we can go back to the slvd
  ;; window and do other possibly specialized things.
  (ccl:set-window-layer *slvd-window* 0)
  (ccl:dialog-item-enable *slvd/save*)
  (ccl:set-default-button *slvd-window* *slvd/save*))


(defun slvd/save-to-file ( &optional save-to-file-button )
  (when save-to-file-button
    ;; making the arg optional lets this be called by hand
    (ccl:dialog-item-disable save-to-file-button))
  (ccl:dialog-item-disable *slvd/cancel*)
  (unless *selected-autodef*
    (break "Lost thread: no value for *selected-autodef*"))
  (unless *rdt/mapping*
    (break "Lost thread: no value for *rdt/mapping*"))
  (unless *rdt/selected-schema*
    (break "Lost thread: no value for *rdt/selected-schema*"))
  (unless *ad/word-being-defined*
    (break "Lost thread: no value for *ad/word-being-defined*"))

  (let ((dossier-filename (ad-dossier *selected-autodef*))
        (special-save-routine *slvd/save-routine*))
    (unless special-save-routine
      (break "Stub: no category-specific special save routine~
              ~%   Write the default routine."))

    (let ((path (expand-namestring dossier-filename)))
      
      (with-open-file (outfile path
                               :direction :output
                               :if-exists :append
                               :if-does-not-exist :create)
        
        (funcall special-save-routine outfile))

      (setq *rdt/last-dossier-used* path)

      (shut-down-slvd-and-companion-windows))))




(defun shut-down-slvd-and-companion-windows ()
  (window-close *slvd-window*)
  (when *rdt/rule-populating-window*
    (window-close *rdt/rule-populating-window*))
  (when *rdt/schema-selection-window*
    (window-close *rdt/schema-selection-window*))
  (hide-the-autodef-window))

