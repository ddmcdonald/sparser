;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "autodefining"
;;;   module:  "interface;workbench:"
;;;  Version:  0.7 December 1995

;; initiated 1/21/94 v2.3
;; During Feb, & March, continually tweeking to get state transitions right
;; 0.1 (4/29) added case of word being "..."
;; 0.2 (7/22) Added feedback after a definition is made.
;; 0.3 (7/25) revised save-routine to allow customization with write fn.
;; 0.4 (2/24/95) tweeking the look&feel of the ending.
;;     (3/9) put a catch-cancel in Autodefine-word.
;; 0.5 (3/13) elaborated that facility to allow the autodef to take on more 
;;      control.
;;     (7/27) added polyword case to Autodefine-word
;; 0.6 (9/13) moved some reinitialization out of Announce-effect-of-word-definition
;;      and into Finish-autodefinition-process
;; 0.7 (11/16) added the cleanup of the global that points to the save routine
;;     (12/26) fixed bug in saving of polywords.


(in-package :sparser)

;;;------------------------------
;;; establishing what to define
;;;------------------------------

(defun wb-selection-is-a-word ()
  ;; called from Open-autodef-window to condition whether the window
  ;; should come up.
  (if *wb/current-edge*
    (cond ((consp *wb/current-edge*)
           (break "*wb/current-edge* is out of sync. should be a word ~
                   but is:~%  ~A" *wb/current-edge*))
          ((word-p *wb/current-edge*)
           t )
          ((edge-p *wb/current-edge*)
           (set-window-layer *top-listener* 0)
           (format t "~&The selection is an edge rather than a word~%")))
    (else
      (set-window-layer *top-listener* 0)
      (format t "~&There is nothing to define because no word in the ~
                 text has been selected~%"))))


(defun set-ad/text-to-selected-word ()
  ;; called from show-the-autodef-window, which will normally happen
  ;; only if the Define-word button in the Workbench is clicked.
  (let ((word (cond ((consp *wb/current-edge*)
                     (second *wb/current-edge*))
                    ((word-p *wb/current-edge*)
                     *wb/current-edge*)
                    (t nil)))
        pname )

    (when (eq word *elipsis-dots*)
      (if *show-document-edges?*
        ;; then we can get the real word from a different data structure
        (if (consp *edge*)
          (setq word (pos-terminal (first *edge*)))
          (break "Stub: elipsis dotes were selected but *edges* is not ~
                  a cons"))
        (break "Stub: elipsis dotes were selected but the edges view ~
                is not active")))

    (setq *ad/word-being-defined* word)
    (setq pname (word-pname word))

    (set-dialog-item-text
     *ad/text* (if pname
                 (format nil "Select a category for \"~A\"" pname)
                 "no word has been selected"))))
      


;;;--------
;;; driver
;;;--------

(defun define-word-as-per-autodef ( &optional button )

  ;; called when the *ad/define-button* is clicked in the autodefine window
  ;; To be in that window, some word must have been selected on the text
  ;; window, and for that button to be active some autodef datum selected
  ;; from the tableau.
  ;;   We interpret the data to tell us what to do to carry out the
  ;; definition and save it to the appropriate file.
  ;;   Here we do the data checks and then enqueue another routine to
  ;; to all the real work.
  (declare (ignore button))
  (if *ad/word-being-defined*
    (then (ccl:dialog-item-disable *ad/define-button*)
          (eval-enqueue '(autodefine-word/globals)))
    (else
      (set-window-layer *top-listener* 0)
      (format t "~&No word was selected on the text view so there ~
                 is nothing to define~%"))))


(defun autodefine-word/globals ()
  (autodefine-word *ad/word-being-defined* *selected-autodef*))

(defun autodefine-word (word datum)
  (if (not (ad-instantiable? datum))
    (then
      (set-window-layer *top-listener* 0)
      (format t "~&You can not use the category ~A~
                 ~%because it is just a label, use one of its daughter ~
                 categories~%"))
    (else
      (unless (ad-function datum)
        (break "Bad setup: There is no definition function for the ~
                autodef ~A" datum))

      (when (ad-write-fn datum)
        (setq *slvd/save-routine* (ad-write-fn datum)))

      (let ((result
             (catch-cancel
               (funcall (ad-function datum)
                        (etypecase word
                          (word (word-pname word))
                          (polyword (pw-pname word)))))))
        (cond
         ((eq result :cancel)  ;; no more actions
          (setq *slvd/save-routine* nil))  ;; clean up the state
         ((eq result :self-contained))  ;; autodef will do the saving
         (t
          (save-word-definition word datum)))))))


;;;-----------------------------------------
;;; writing out the definition to a dossier
;;;-----------------------------------------

(defun save-word-definition (word datum)
  (let ((raw-namestring (ad-dossier datum))
        (function-name (ad-function datum))
        (write-function (ad-write-fn datum)))
    (unless raw-namestring
      (break "There is no dossier file for the autodef ~A" datum))
    (unless function-name
      (break "There is no definition function for the autodef~%  ~A" datum))

    (let ((namestring (expand-namestring raw-namestring)))
      (with-open-file (file-stream namestring
                       :direction :output
                       :element-type 'character  ;; string-char before Steele 2
                       :if-exists :append
                       :if-does-not-exist :error)

        (format file-stream "~&~%;; ")
        (format file-stream (date-as-formatted-string))
        (if write-function
          (funcall write-function word file-stream)
          (format file-stream "~&(~A \"~A\")~%"
                  (symbol-name function-name)
                  (etypecase word
                    (word (word-pname word))
                    (polyword (pw-pname word)))
                  ))))

    (setq *slvd/save-routine* nil)
    (announce-effect-of-word-definition word datum raw-namestring)))


;;;-----------------------------
;;; giving feedback to the user
;;;-----------------------------

(defun announce-effect-of-word-definition (word datum raw-namestring)
  (ccl:set-dialog-item-text *ad/text* "")
  (let ((msg (format nil "Applied the word \"~A\"~%to the function ~A and also stored the call in ~A"
                     (word-pname word)
                     (string-downcase (symbol-name (ad-function datum)))
                     raw-namestring)))
    (ccl:set-dialog-item-text *ad/example-text* msg)
    (ccl:dialog-item-disable *wb/define-word-button*)
    (ccl:dialog-item-disable *ad/examples-button*)
    (ccl:dialog-item-disable *ad/cancel-button*)

    ;; set up the 'ok' button for the user to push once they've
    ;; read the message. The position change (warp) moves it onto the
    ;; window just below the message
    (warp-final-ad-phase-buttons-back-in-sight)
    (ccl:set-default-button *autodefine-window* *ad/ok-button*)))

