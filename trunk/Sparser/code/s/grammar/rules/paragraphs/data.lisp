;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "data"
;;;   Module:  "grammar;rules:paragraphs:"
;;;  Version:  0.2 August 1997

;; initiated 1/25/94 v2.3. Added code for scrolling the WB text-view 5/3
;; 9/6 tweeked the def of Make-document-lines-structure
;; 0.1 (1/24/95) changed check against *line-count* to '>=' from '>'
;; 0.2 (2/27) added a provision to not count lines: *count-input-lines*
;;     (8/17/97) moved that flag to [analyzers;psp:fill chart:newline]
;;      so it would be available under simpler licenses.

(in-package :sparser)


;;;----------------------------------------------------
;;; tracking information about the lines in a document
;;;----------------------------------------------------

#| This line data is used in conjunction with the Workbench to
   provide data used by the scrolling routines. |#

(unless (boundp '*maximum-number-of-lines-in-document*)
  (defparameter *maximum-number-of-lines-in-document* 2000))


(defun make-document-lines-structure (&optional n)
  (when n
    (when (> n *maximum-number-of-lines-in-document*)
      (setq *maximum-number-of-lines-in-document* n)))
  (setq *documents-lines*
        (make-array (or n
                        *maximum-number-of-lines-in-document*)))
  (or n
      *maximum-number-of-lines-in-document*))


(defparameter *documents-lines* nil)

(defvar *line-count* 0)

(defvar *index-of-current-line* 0)


(define-per-run-init-form '(initialize-line-data))

(defun initialize-line-data ()
  (unless *documents-lines*
    (make-document-lines-structure))
  (setq *index-of-current-line* 0)
  (let ((line-array *documents-lines*))
    (dotimes (i *line-count*)
      (setf (elt line-array i) nil))
    (setq *line-count* 0)))


;;;-----------
;;; accessors
;;;-----------

(defun line-data (i)
  (when (> i *line-count*)
    (break "The document does not have a line ~A (yet)" i))
  (elt *documents-lines* i))

(defun index-of-first-character (line-i)
  ;; trivial now, but supplies useful sugar for the time when
  ;; there's a lot more stored in these cells
  (line-data line-i))

(defun set-first-char-of-current-line (char-pos)
  ;; called from Write-to-text-window
  (setf (elt *documents-lines*
             *index-of-current-line*)
        char-pos)
  *index-of-current-line* )


;;;----------------
;;; counting lines
;;;----------------

(defun increment-line-count ()
  ;; called from a NL-fsa whenever a Newline is scanned in the source.
  ;; The index calculation for the 1st-char is the same as done in
  ;; bump-&-store-word.
  (when *count-input-lines*
    
    (when (>= *line-count* *maximum-number-of-lines-in-document*)
      (break "This article has more lines than were provided for ~
              ~%in the line-tracking data structure, i.e. ~A~
              ~%
          ~%Reset this limit by calling Make-document-lines-structure~
              ~%with a higher number.~
              ~%~
              ~%If you do that and restart this function, you can continue~
              ~%your analysis, but the workbench display will have lost ~
              ~%its initial data and may behave strangely."
             *maximum-number-of-lines-in-document*))
    
    (let ((line-index *line-count*)
          (nl-char (+ (- (+ *index-of-next-character*
                            *length-accumulated-from-prior-buffers*)
                         *number-of-characters-to-subtract*)
                      *number-of-characters-to-add*)))
      
      (unless *text-out*
        (setf (elt *documents-lines* line-index) nl-char))
      ;; We set this here only when not writing to the workbench's
      ;; Text View -- it sets and tracks this value itself with
      ;; different rationales (see Write-to-text-window).
      ;;    This starts out by setting the 1st-char of line zero to
      ;; be the buffer index of the #\newline that triggered the
      ;; NL-fsa (when that's the source of the call).
      
      (setq *index-of-current-line* line-index)
      ;; The "current line" points to the cell of the array that
      ;; holds the data of the line that's being processed.
      ;; We start out with the 1st line placed in cell zero.
      ;; With the first #\newline we'll be on the second line -- the
      ;; line-count will be two -- and cell one will be used.
      (incf *line-count*))))

