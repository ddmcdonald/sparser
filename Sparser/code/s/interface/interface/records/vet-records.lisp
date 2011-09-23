;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "vet records"
;;;   Module:  "interface;records:"
;;;  Version:  June 1991

(in-package :sparser)

;;;--------------------------
;;; globals between routines
;;;--------------------------

(defvar *vetted-records-in-article* nil
  "initialized in Readout-pending-salient-objects and read by
   After-analysis/article ")


;;;-----------------------------------
;;; globals use only within this file
;;;-----------------------------------

(defvar *edge-being-vetted* nil)
(defvar *referent-being-vetted* nil)


;;;-------------
;;; entry point
;;;-------------

(defun vet-record/readout/job-event ()
  ;; the current edge has already been readout into its variables.
  ;; We ask the person reviewing the artcle if the record is ok,
  ;; and if so we put it on the list.

  (setq *edge-being-vetted*     *job-event/source-edge*
        *referent-being-vetted* (edge-referent *edge-being-vetted*))

  (when (event-type-that-goes-into-db *job-event/event*)
    (if *accept-all-records*
      (save-record-for-later-readout)
      (else
        (default-adjustments/job-event/variables)
        (display/job-event/variables)
        (vet/edit-loop)))))


(defun vet/edit-loop ()
  (terpri)
  (if (y-or-n-p "Accept the record as is?")
    (save-record-for-later-readout)
    (else
      (terpri)
      (when (y-or-n-p "Repair it?")
        (wait-on-repairs-to-record)
        (terpri)
        (display/job-event/variables)
        (vet/edit-loop)))))



(defun save-record-for-later-readout ()
  (let ((form
         `(setup-and-write-stored-record
           :event-type ',*job-event/event*
           :person     ',*job-event/person*
           :title      ',*job-event/title*
           :company    ',*job-event/company*
           )  ))

    (push form *vetted-records-in-article*)))



(defun wait-on-repairs-to-record ()
  (break "~&Continue once it has the form you want.~%"))

