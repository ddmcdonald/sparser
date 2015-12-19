;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "line count"
;;;    Module:   "tools;measurements:"
;;;   Version:   December 1995

;; initiated 12/1/95

(in-package :sparser)

;;;--------------
;;; accumulators
;;;--------------

(defvar *total-line-count* 0)
(defvar *total-toplevel-forms* 0)
(defvar *total-number-of-files* 0)

(defun reset-line-count-accumulators ()
  (setq *total-line-count* 0
        *total-toplevel-forms* 0
        *total-number-of-files* 0))

(defun report-line-counts ()
  (format t "~&~%~
               ~%-----------------------------------------~
               ~%  ~A files~
               ~%  ~A lines of code~
               ~%  ~A toplevel forms~
               ~%-----------------------------------------"
          *total-number-of-files*
          *total-line-count*
          *total-toplevel-forms*))

;;;---------------
;;; toplevel call
;;;---------------

(defun count-lines-in-system ()
  "Toplevel call. Sets up the needed parameters and then calls
  load to go through the master-loader, opening files as dictated
  by the current switch settings."
  (let ((*just-count-lines* t)
        (*compile* nil)
        (*insist-on-binaries* nil))
    (reset-line-count-accumulators)
    (load cl-user::master-loader)
    (report-line-counts)))

;;;----------------
;;; embedded calls
;;;----------------

(defun just-count-the-lines-of-code (raw-namestring)
  "Called from lload as the file processor when the flag *just-count-lines*
  is up. This sets up the file processing and presentations but it offloads
  the actual counting to a subroutine. Written by c&s on just-note-if-changed."
  (let ((namestring (expand-namestring raw-namestring)))
    (multiple-value-bind (line-count toplevel-forms) (lines-in-file namestring)
      (format t "~%~A~4,2T~A~10,2T~S" toplevel-forms line-count raw-namestring)
      (incf *total-line-count* line-count)
      (incf *total-toplevel-forms* toplevel-forms)
      (incf *total-number-of-files*)
      (when (load-file? raw-namestring)
        (load namestring)))))

(defun lines-in-file (namestring)
  "Do the heavy lifting for just-count-the-lines-of-code."
  (let ((lines 0)
        (toplevel-forms 0)
        line  1st-char  line-ends-file?  pending-sharpsign-comment )
    (with-open-file (file-stream namestring
                     :direction :input
                     :if-does-not-exist :error)
      (loop
        (multiple-value-setq (line line-ends-file?)
          (read-line file-stream nil :reached-eof))

        (when (or (eq line :reached-eof)
                  line-ends-file?)
          (return))

        (cond
         ((equal line ""))  ;; blank line

         ((eql (setq 1st-char (elt line 0)) #\;))  ;; comment line

         ((and (eql 1st-char #\( )) ;; toplevel form
          (unless pending-sharpsign-comment
            (incf toplevel-forms))
          (incf lines))

         (pending-sharpsign-comment  ;; end of #| ... |#
          (setq pending-sharpsign-comment (not (search "|#" line))))

         ((and (eql 1st-char #\# )         ;; beginning of #| ... |#
               (eql (elt line 1) #\| ))
          (setq pending-sharpsign-comment t))

         (t 
          (incf lines))))

      (values lines toplevel-forms))))

