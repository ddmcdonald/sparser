;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adjust"
;;;   module:  "interface;workbench:"
;;;  Version:  0.2 June 1996

;; initiated 5/2/94 v2.3)
;; 0.1 (5/19) added on/off functions and reordered the checks in the runtime routine
;;     (12/12) added increment-line-count to Insert-NL-and-reset-adjustment-parameters
;;      to maintain the data that the Text View needs for scrolling. Fixed a
;;      bug in the timing of printing and length-adjustment
;; 0.2 (6/18/96) modified Adjust-text-to-fixed-line-length to take a choice of NL-routine
;;      as a defaulted keyword argument

(in-package :sparser)

;;;--------
;;; global
;;;--------

(unless (boundp '*default-line-length*)
  (defparameter *default-line-length* 65
    "Should correspond to the smallest line that might be used.
     In a slightly shrunk MCL Listener there are 67 characters
     including '? ' at the start."))


;;;-----------------
;;; state variables
;;;-----------------

(defvar *line-length-to-adjust-to* nil
  "Records the length of the line that will actually be used at
   any given moment.")

(defvar *chars-remaining-on-line* nil
  "Records the space still available on the current line.")


#| In the file [analyzers;char-level:display]
   These are bound:
         *adjust-text-to-fixed-line-length* ;; master flag
         *adjust?*  ;; runtime flag

   and there is an init-form that sets the runtime flag to follow
   the master flag when an article is begun
|#

;;;----------------
;;; initialization
;;;----------------

(define-per-run-init-form '(set-line-length-to-adjust-to))

(defun set-line-length-to-adjust-to ()
  (setq *line-length-to-adjust-to*
        (if *text-out*
          ;; if the workbench is up, use its length
          *text-view-line-length*
          *default-line-length*))
  (setq *chars-remaining-on-line* *line-length-to-adjust-to*
        *number-of-characters-to-add* 0))



(defun reset-display-line-chars-remaining-counter ()
  (setq *chars-remaining-on-line* *line-length-to-adjust-to*))


;;;-------------------------
;;; driver to use in styles
;;;-------------------------

(defvar *newline-fsa-before-adjustment-turned-on* nil)

(defun adjust-text-to-fixed-line-length ( &key
                                          (nl-routine 'use-nl-is-meaningless) )

  ;; called from style routines. Coordinates both the adjustment
  ;; flags that introduce nl's and the nl-fsa that ignores the
  ;; ones that occurred naturally in the source. 
  (unless *newline-fsa-before-adjustment-turned-on*
    ;; don't clobber the real value by running this function
    ;; several times in succession
    (setq *newline-fsa-before-adjustment-turned-on*
          *newline-fsa-in-use*))

  (funcall nl-routine)

  (setq *adjust-text-to-fixed-line-length* t
        *adjust?* t))



(defun use-original-lines-of-text ()
  (when *newline-fsa-before-adjustment-turned-on*
    (setf (symbol-function 'Newline-fsa)
          (symbol-function *newline-fsa-before-adjustment-turned-on*))
    (setq *newline-fsa-in-use*
          *newline-fsa-before-adjustment-turned-on*)
    (setq *newline-fsa-before-adjustment-turned-on* nil))
  (setq *adjust-text-to-fixed-line-length* nil
        *adjust?* nil))


;;;------------------
;;; runtime routines
;;;------------------

(defun insert-NL-if-needbe (token-length position)
  ;; called from Write-token when *adjust-text-to-fixed-line-length*
  ;; is non-nil. We determine whether then token will fit on the
  ;; remainder of the line, and if it doesn't, we introduce a NL
  ;; into the stream.
  (if (> token-length (- *chars-remaining-on-line* 2))
    ;; allow a little room for punctuation
    (insert-NL-and-reset-adjustment-parameters token-length position)

    (if (< *chars-remaining-on-line* 4)
      ;; punctuation case  /// doesn't work well with SGML tags
      (if (= token-length 1)
        ;; strictly speaking, the punctuation we want to allow here
        ;; would have no whitespace interveening between it and
        ;; the last real character, but that check requires more
        ;; information than is easily available at the point of call.
        (decf *chars-remaining-on-line*)
        (insert-NL-and-reset-adjustment-parameters token-length position))

      (else
        (setq *chars-remaining-on-line*
              (- *chars-remaining-on-line* token-length))))))


(defparameter *NL-as-string* (coerce (list #\newline) 'string))

(defun insert-NL-and-reset-adjustment-parameters (token-length position)
  ;; print the newline
  (if *display-text-to-special-window*
    (write-to-text-window *NL-as-string* position)
    (write-string *NL-as-string* *standard-output*))

  ;; keep the character-index in sync since we've added
  ;; a character that wasn't in the source
  (incf *number-of-characters-to-add*)

  ;; this data is needed for scrolling the Text View
  (increment-line-count)

  ;; update the adjustment parameters
  (reset-display-line-chars-remaining-counter)
  (setq *chars-remaining-on-line*
        (- *chars-remaining-on-line* token-length)))

