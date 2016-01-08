;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "records"
;;;   Module:  "model forms;sl:whos news:acts:job events"
;;;  version:  1.2 April 1991

;; initiated in January 1991
;; 1.1  (3/8 v1.8.1)  Renamed main routine.
;; 1.2  (4/10 v1.8.2)  Rewrote Report-and-stash-salient-object/job-event
;;      to check if it got an edge that starts at the same point as one
;;      its already gotten of that category.
;; 1.3  (2/7/92 v2.2) Added gate on *track-salient-objects*

(in-package :sparser)


;;;------------------------------------------
;;; grabbing the object when the edge occurs
;;;------------------------------------------

#|  original
(defun report-and-stash-salient-object/job-event (je)
  ;; this is called as a generic-treetop-action
  ;;
  (push je *pending-salient-objects*))  |#


(defun report-and-stash-salient-object/job-event (je)
  ;; This is called as a generic-treetop-action hooked to
  ;; the object type.
  (when *track-salient-objects*
    (multiple-value-bind (most-recent-on-list its-cell)
                         (find-first-edge-of-same-category
                          je *pending-salient-objects*)
      
      (when most-recent-on-list
        (when (eq (edge-starts-at je)
                  (edge-starts-at most-recent-on-list))
          ;; the new one is presumably a longer version of the
          ;; old one.  Splice the old one out of the list
          (if (eq its-cell *pending-salient-objects*)
            (setq *pending-salient-objects*
                  (cdr *pending-salient-objects*))
            (else
              (rplaca its-cell (car (cdr its-cell)))
              (rplacd its-cell (cdr (cdr its-cell)))))))
      
      (push je *pending-salient-objects*))))


(defun find-first-edge-of-same-category (edge list)
  (let ((target-category (edge-category edge)))
    (do* ((cell list (cdr list))
          (edge2 (car cell) (car cell)))
         ((null edge2) nil )
      (when (eq (edge-category edge2) target-category)
        (return (values edge2 cell))))))


;;;--------------------------------------
;;; reading out the object from the edge
;;;--------------------------------------

(defun write-record-for-salient-object/job-event (edge)
  ;; called from Readout-pending-salient-objects after (!!) the
  ;; whole article has been analyzed.
  ;;
  (readout-into-globals/job-event edge)
  (write-record-for-salient-object/readout/job-event))


(defun write-record-for-salient-object/readout/job-event ()
  (if (evaluate-validity/job-event/variables)
    (write-db-record/job-event/distribute-plurals)
    (format t "~%~%Incomplete job event: ~A~%"
            *job-event/source-edge*)))


;;;--------------------
;;; writing the record
;;;--------------------

(defun write-db-record/job-event
       (&key event-type person title company
             former-company former-title)
  (declare (ignore former-company former-title))
  (initialize-record)
  (mapcar
   #'(lambda (string)
       (write-next-field string))
   (list (label-for-job-event-type event-type)
         (db-form/person  person)
         (db-form/title   title)
         (db-form/company company)
         ""  ;; former-company
         ""  ;; former-title
         ))
  (terminate-record))


;;;---------------------------------------------
;;; db routines for the individual field values
;;;---------------------------------------------

(defun label-for-job-event-type (et)
  (symbol-name (job-event-name et)))


(defun dB-form/person (person)
  (with-output-to-string (stream)
    (if person
      (if (not (typep person 'person))
        (if *accept-all-records*
          (format stream "~A" person)
          (else
            (break/debug "None-person passed in for db")
            :foo ))
        (princ-name-of-a-person (person-name person)
                                stream))
      (else
        (if *accept-all-records*
          ""
          (else
            (break/debug "Can't print a Null person")
            :foo ))))))


(defun dB-form/title (title)
  (with-output-to-string (stream)
    (if title
      (typecase title
        (title  (princ-title (title-name title) stream))
        (string title)
        (category
         (case (cat-symbol title)
           (category::board
            (princ-title (title-name *title/board-of-directors*)
                         stream))
           (otherwise
            (if *accept-all-records*
              (format stream "~A" title)
              (else
                (break/debug "New kind of category used as a title:~
                              ~%    ~A" title)
                :foo)))))
        (otherwise
         (break/debug "New data-type passed to DB-form/title: ~
                       ~%  ~A" title)
         :foo))
      (else
        (if *accept-all-records*
          ""
          (else
            (break/debug "Can't print a Null title")
            :foo ))))))


(defun dB-form/company (company)
  (if company
    (then
      (when (composite? company)
        (setq company (extract-company company)))
      (with-output-to-string (stream)
        (if (not (typep company 'company))
          (if *accept-all-records*
            (format stream "~A" company)
            (else
              (break/debug "Non-company passed in for db")
              :foo ))
          (princ-name-of-a-company (company-name company)
                                   stream))))
    (else
      (if *accept-all-records*
        ""
        (else
          (break/debug "Can't print a Null person")
          :foo )))))


;;;---------------------------------------------------------------
;;; checking if the job-event object is complete enough to report
;;;---------------------------------------------------------------

(defun evaluate-validity/job-event/variables ()
  (if (and *job-event/title*
           *job-event/person*
           *job-event/company*)
    t
    nil))


;;;----------------------
;;; distributing plurals
;;;----------------------

(defun write-db-record/job-event/distribute-plurals ()
  (cond ((multiple-people)
         (write-db-record/job-event/distribute-people))
        ((multiple-titles)
         (write-db-record/job-event/distribute-titles))
        (t (write-db-record/job-event
            :event-type *job-event/event*
            :person     *job-event/person*
            :title      *job-event/title*
            :company    *job-event/company* ))))


;;;--------
;;; people
;;;--------

(defun write-db-record/job-event/distribute-people ()
  (dolist (person (multiple-people))
    (cond ((multiple-titles)
           (write-db-record/job-event/distribute-titles
            :person person))
          (t (write-db-record/job-event
              :event-type *job-event/event*
              :person     *job-event/person*
              :title      *job-event/title*
              :company    *job-event/company* )))))


        
(defun multiple-people ()
  (let ((person-object *job-event/person*))
    (typecase person-object
      (person nil)
      (category
       (if *accept-all-records*
         nil
         (else
           (break/debug "Category passed to Multiple-people: ~
                         ~%    ~A" person-object) :foo)))
      (title
       (if *accept-all-records*
         nil
         (else
           (break/debug "Title passed to Multiple-people: ~
                         ~%    ~A" person-object) :foo)))
      (list
       (unless (composite? person-object)
         (break/debug "A list was passed to Multiple-people that ~
                       wasn't a composite:~%   ~A" person-object))
       (case (cat-symbol (car person-object))
         (category::person/plural
          (extract-people-from-plural-person-composite
           person-object nil))
         (otherwise
          (break/debug "New composite case for Multiple-~
                        people test:~%    ~A" person-object)
          :foo )))
      (otherwise
       (if *accept-all-records*
         nil
         (else
           (break/debug "New kind of object passed to Multiple-people ~
                         as the person:~%   ~A" person-object)
           :foo ))))))


(defun extract-people-from-plural-person-composite (c people)
  (cond
   ((null c) people)
   ((composite? c)
    (case (cat-symbol (first c))
      (category::person/plural
       (append
        people
        (extract-people-from-plural-person-composite
         (second c) people)
        (extract-people-from-plural-person-composite
         (third c) people)))
      (otherwise
       (break/debug "New category of composite:~
                     ~%    ~A" c)  :foo )))
   ((typep c 'person)
    (list c))
   (t (break/debug "New kind of object inside plural ~
                    person composite:~%   ~A" c)  :foo )))
 

;;;--------
;;; titles
;;;--------

(defun write-db-record/job-event/distribute-titles (&key person)
  (dolist (title (multiple-titles))
    (write-db-record/job-event
     :event-type *job-event/event*
     :person     (or person *job-event/person*)
     :title      title
     :company    *job-event/company* )))


(defun multiple-titles ()
  (let ((title-object *job-event/title*))
    (if title-object
      (typecase title-object
        (title nil)
        (list (distribute-into-list/title title-object))
        (category
         (case (cat-symbol title-object)
           (category::board  nil)  ;; *title/board-of-directors*
           (otherwise
            (break/debug "New kind of category used as a title:~
                          ~%    ~A" title-object))))
        (otherwise
         (break/debug "New kind of title object: ~A" title-object)))
      (else
        ;; if there's no title there certainly aren't multiple titles
        nil))))


(defun distribute-into-list/title (composite-title)
  (let ((composite composite-title)
        pending-components
        titles )
    (loop
      (typecase composite
        (title (push composite titles))

        (list
         (if (composite? composite)
           (case (cat-symbol (first composite))
             (category::plural-title
              (push (second composite) pending-components)
              (push (third  composite) pending-components))
             (category::title+status
              (push (second composite) pending-components))
             (category::title+company
              (push (second composite) pending-components))
             (category::position+person
              (push (second composite) pending-components))
             (otherwise
              (break/debug "New composite passed to Distribute~
                            -into-list/title:~%  ~A"
                           (first composite))))
           (cond
            ((eq (first composite) :new-title)
             (push (second composite) titles))
            (t (break/debug "New case for non-composite list:~
                             ~%  ~A" composite)))))

        (category (push composite titles))

        (otherwise
         (break/debug "New data type passed to Distribute-into-~
                       list/title:~%  ~A" composite)))

      (if pending-components
        (setq composite (pop pending-components))
        (return)))

    (nreverse titles)))

