;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "driver"
;;;   Module:  "interface;records:"
;;;  Version:   1.3  June 1991

;; initiated in January 1991
;; 1.1  (3/8 v1.8.1)  Passed through renaming of the record writing routine
;; 1.2  (3/22 v1.8.1)  Fixed an uncaptured nreverse
;; 1.3  (6/3 v1.8.5)  Added the *vet-records* gate and redistributed the
;;      loops so that edges are only readout once.

(in-package :sparser)

;;;--------------------
;;; per-article driver
;;;--------------------

(defun readout-pending-salient-objects ()
  ;; Master routine called from After-analysis-actions
  (if *pending-salient-objects*
    (then
      (if *topic-company*
        (format t "~%~%Topic company:  ~A~%"
                (first *topic-company*))
        (format t "~%No topic company found.~%"))

      (when (or *display-salient-objects*
                *vet-records*
                *write-db-records-for-salient-objects*)

        (when *vet-records*
          (setq *vetted-records-in-article* nil))

        (when *write-db-records-for-salient-objects*
          (open-file-for-db-records))
        
        (dolist (edge (setq *pending-salient-objects*
                            (nreverse *pending-salient-objects*)))
          (readout-into-globals/job-event edge)

          (when *display-salient-objects*
            (unless *vet-records*
              (display/job-event/variables)
              (terpri)))

          (when *vet-records*
            (vet-record/readout/job-event)
            (terpri))

          (unless *vet-records*
            (when *write-db-records-for-salient-objects*
              (write-record-for-salient-object/readout/job-event))))

        (when *write-db-records-for-salient-objects*
          (close-file-for-db-records))))

    (else
      (format t "~&~%--- no salient objects in this article -----~%"))))


(defparameter *db-record-stream*  *standard-output*
  "The stream to which records are to be written.  It is managed by
   explicit shallow-binding rather than lexical binding.")


;;;--------------
;;; batch driver
;;;--------------

(defvar *saved-item-being-written* nil
  "Used as a record to permit rerunning writes that initially
   had errors.")


(defun write-db-records-for-pending-articles ()
  (let ( item )
    (if *articles-with-records*
      (loop
        (when (null *articles-with-records*)
          (return))
        (setq item (pop *articles-with-records*))
        (setq *saved-item-being-written* item)
        (write-db-record-from-saved-item item))
      (format t "~&No articles: *articles-with-records* is nil~%"))))


(defun write-db-record-from-saved-item (&optional
                                        (item *saved-item-being-written*))
  (catch 'abort-writing-of-db-record
    (let ( article-name write-forms )
      (setq article-name (first item)
            write-forms  (rest item))
      (setq *article-under-analysis*
            (article-name-from-stored-form article-name))
      (open-file-for-db-records)
      (dolist (form write-forms)
        (eval form))))
  (close-file-for-db-records))


(defun article-name-from-stored-form (form)
  (typecase form
    (pathname (file-namestring form))
    (otherwise
     (break/debug "New form of article used in the batch storage:~
                   ~%   ~A" form)
     :foo)))


(defun setup-and-write-stored-record (&key event-type
                                           person
                                           title
                                           company)

  ;; the record writing code was setup just to work live as
  ;; the objects were found by the parser.  In order to get
  ;; plurals distributed, etc., we have to conform to those
  ;; expectations, which means distributing these arguments
  ;; to their corresponding globals.

  (setq *job-event/event*      event-type
        *job-event/person*     person
        *job-event/title*      title
        *job-event/company*    company)

  (write-db-record/job-event/distribute-plurals))

