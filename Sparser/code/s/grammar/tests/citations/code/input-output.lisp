;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "input-output"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  November 1993

;; initiated 11/2/93 v2.3. 5/24/13 Updated default to use merge pathnames

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defparameter *citation-out-stream* *standard-output*
  "When citations are automatically created from a run this is where
   they are written to.")

(defparameter *menu-cite-outfile* "citations;new-ones"
  "This is the file they are written to, which may be bound to
   the outstream when automatically writing to a file.")

;;; change the location of where citations are written

(defun set-citation-file (relative-name-string)
  (push-debug `(,relative-name-string))
  (break "stub"))


;;;--------
;;; driver
;;;--------

(defun take-citation+check+save ()
  ;; called from the menu item, *take-citation-item*
  (let ((citation-form
         (with-output-to-string (*citation-out-stream*)
           (write-citation-from-last-run))))

    (format t "~A" citation-form)
    (with-open-file (filestream *menu-cite-outfile*
                     :direction :output
                     :if-exists :append
                     :if-does-not-exist :create)
      (format filestream
              "~A" citation-form))))

