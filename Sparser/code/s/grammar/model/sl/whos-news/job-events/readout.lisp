;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "readout"
;;;   Module:  "model forms;sl:whos news:mf:acts:job events:"
;;;  version:  April 1991

;; split out from je;job event on 2/18, tweeked 2/19
;; 3/7 added calls to *trace-readout*
;; 3/19 wrote Explore/plural-job-event-title for cases where embedded
;;      companies weren't being seen. (e.g. #5 in wsj #1)
;;      Also changed Discourse-flesh-out/job-event/variables to treat
;;      the *topic-company* as an access function.
;; 3/20 wrote Explore/persons-modifiers.
;; 3/22 another case in Explore/persons-modifiers
;; 3/29 added another case to Explore/plural-job-event-title
;; 4/2  ditto: #<subsidiary>
;; 4/2  for Discourse-flesh-out/job-event/variables, backed out of the
;;      default to look for a missing title or company under the apposative
;;      of the person.  It had led to more errors than it fixed.
;; 4/10 (v1.8.2)  Added Sort-out/by-person and a *passive* flag. Routines
;;      that used to just set the person variable now check that flag and
;;      set replaced-by instead if it is on.

(in-package :CTI-source)


;;;-----------------------------------------
;;; reading out the contents of a composite
;;;-----------------------------------------

(defvar *job-event/source-edge* nil)
(defvar *job-event/event*  nil)
(defvar *job-event/company* nil)
(defvar *job-event/person* nil)
(defvar *job-event/persons-modifiers* nil)
(defvar *job-event/title*  nil)
(defvar *job-event/status* nil)
(defvar *job-event/replacing* nil)
(defvar *job-event/effective* nil)
(defvar *passive* nil)

(defun clear-readout-variables/job-event ()
  (setq *job-event/source-edge* nil
        *job-event/event*   nil
        *job-event/company* nil
        *job-event/person*  nil
        *job-event/persons-modifiers* nil
        *job-event/title*   nil
        *job-event/status*  nil
        *job-event/replacing* nil
        *job-event/effective* nil
        *passive* nil))


;;;-------------------------------------------------------------
;;; routine that is called from Readout-pending-salient-objects
;;;-------------------------------------------------------------

(defun readout-into-globals/job-event (je)
  (readout-into-variables/job-event je)
  ;(discourse-flesh-out/job-event/variables)
  ;///(inferential-adjustment/job-event/variables)
  )


;;;--------
;;; driver
;;;--------

(define-category  ambiguous)

(defun readout-into-variables/job-event (je)
  (clear-readout-variables/job-event)
  (setq *job-event/source-edge* je)
  (let* ((composite (edge-referent je))
         category composed-with composite-offshoots )
    (when *trace-readout*
      (format t "~%Initial composite = ~A~%" composite))
    (loop
      (etypecase composite
        (list
         (unless (typep (setq category (first composite))
                        'category)
           (cond
            ((eq (first composite) :ambiguous)
             (setq category category::ambiguous))
            (t
             (break/debug "ill-formed composite -- car isn't a category:~
                           ~%   ~A" composite))))

         (ecase (cat-symbol category)

           (category::ambiguous
            ;; arbitrarily take the first
            (setq composed-with (second composite)))

           (category::job-event+person
            (setq composed-with
                  (readout-composite/job-event+person composite))
            (when (and *job-event/person*  ;;loses if passive
                       (listp *job-event/person*))
              (unless (eq (first *job-event/person*)
                          (category-named 'plural-person))
                (push *job-event/person* composite-offshoots))))

           (category::job-event+title
            (setq composed-with
                  (readout-composite/job-event+title composite))
            (unless *job-event/title*
              (when (and *job-event/title*  ;; set by readout code
                         (composite? *job-event/title*))
                (if (eq (first *job-event/title*)
                        (category-named 'plural-title))
                  (setq *job-event/title*
                        (explore/plural-job-event-title))
                  (push *job-event/title* composite-offshoots)))))

           (category::job-event+title-pp
            (setq composed-with
                  (readout-composite/job-event+title composite))
            #|(unless *job-event/title*
              (when (and *job-event/title*  ;; set by readout code
                         (composite? *job-event/title*))
                (if (eq (first *job-event/title*)
                        (category-named 'plural-title))
                  (setq *job-event/title*
                        (explore/plural-job-event-title))
                  (push *job-event/title* composite-offshoots))))|#
            )

           (category::job-event+and-title
            ;(break "+title")
            (format t "~%Job event has high conjunction with title: ~A~%"
                    je)
            (setq composed-with (second composite)))
            

           (category::job-event+company
            (setq composed-with
                  (readout-composite/job-event+company composite)))

           (category::je+of-company
            (setq *job-event/company* (third composite)
                  composed-with       (second composite)))

           (category::job-event+by-person
            (setq composed-with (sort-out/by-person composite)))

           (category::job-event+replacing
            (setq composed-with
                  (readout-composite/job-event+replacing composite)))

           (category::title+status
            (setq *job-event/title*
                  (title+status/title composite))
            (setq *job-event/status*
                  (title+status/status composite)))

           (category::title+company
            (setq *job-event/title*
                  (title+company/title composite))
            (setq *job-event/company*
                  (title+company/company composite)))

           (category::position+person
            (setq *job-event/title* composite))

           (category::person+title
            ;; ignore the title, it's an embedded fact about his
            ;; position at (or just before) the time of the event.
            ;; But keep a record of it in case we do need it for
            ;; a heuristic evaluation of titles, etc.
            (check-for-passive (second composite))
            (setq *job-event/persons-modifiers* (third composite)))

           (category::person/plural
            (setq *job-event/person* composite))

           (category::plural-title
            (setq *job-event/title* composite))
           ))

        (person
         (check-for-passive composite))

        (title
         (setq *job-event/title* composite))

        (company
         (setq *job-event/company* composite))

        (job-event
         (setq *job-event/event* composite))

        (category   ;; e.g. "was"
         (setq *job-event/event* composite))

        )

      (if composed-with
        (then (when *trace-readout*
                (format t "~&  Composed-with = ~A~%" composed-with))
              (setq composite composed-with
                    composed-with nil))
        (if composite-offshoots
          (then (setq composite (pop composite-offshoots))
                (when *trace-readout*
                  (format t "~&  Composite-offshoot = ~A~%" composite)))
          (return))))))



(defun explore/plural-job-event-title (&optional
                                        (title *job-event/title*))
  (let (titles embedded-objects object)
    (unless (eq (first title) category::plural-title)
      (error "Composite passed to Explore/plural-job-event-title ~
              isn't a plural-title:~%   ~A" title))
    (setq embedded-objects (list (second title)(third title)))
    (loop
      (setq object (pop embedded-objects))
      (etypecase object
        (title (push object titles))
        (company (unless *job-event/company*
                   (setq *job-event/company* object)))
        (subsidiary (unless *job-event/company*
                      (setq *job-event/company* object)))
        (list
         (unless (typep (first object) 'category)
           (break "ill-formed composite -- car isn't a category:~
                   ~%   ~A" object))
         (ecase (cat-symbol (first object))
           (category::title+company
            (push (second object) embedded-objects)
            (push (third object)  embedded-objects))
           (category::title+status
            ;; ignore the status
            (push (second object) embedded-objects))
           (category::plural-title
            (push (second object) embedded-objects)
            (push (third object)  embedded-objects))            
           )))
      (unless embedded-objects
        (return)))
    (cons category::plural-title titles)))


(defun explore/persons-modifiers ()
  ;; called when no title was found in the toplevel of
  (let* ((modifiers *job-event/persons-modifiers*)
         (embedded-objects (list modifiers))
         object )
    (loop
      (setq object (pop embedded-objects))
      (etypecase object
        (title (setq *job-event/title* object))
        (company
         (unless *job-event/company*
           (setq *job-event/company* object)))
        (list
         (unless (composite? object)
           (error "A list that was expected to be a composite isn't:~
                   ~%   ~A~%" object))
         (ecase (cat-symbol (first object))
           (category::title+company
            (push (second object) embedded-objects)
            (push (third object)  embedded-objects))
           (category::plural-title
            (setq *job-event/title*
                  (explore/plural-job-event-title object)))
           (category::title+status
            (push (second object) embedded-objects))
           )))
      (unless embedded-objects
        (return)))
    ))


(defun sort-out/by-person (composite)
  ;; since the by-phrase comes in as an adjunct, it ends up outside
  ;; the required arguments of the verb and is seen before they are.
  ;; As a result, all we can do is throw up a flag and have it checked
  ;; for when the next person is seen.
  (setq *passive* t)
  (setq *job-event/person* (third composite))
  (second composite))
  

;;;-----------------------
;;; discourse rules, etc.
;;;-----------------------

(defun discourse-flesh-out/job-event/variables ()
  #|(when (null *job-event/title*)
    (when *job-event/persons-modifiers*
      ;; maybe it's buried in there. /// do we have to condition this
      ;; call on the kind of job-event involved? e.g. "retire" vs.
      ;; "elected to" ??
      (explore/persons-modifiers)))|#

  #|(when (null *job-event/company*)
    (when *topic-company*
      (setq *job-event/company* (the-topic-company))))|#
  )


(defun default-adjustments/job-event/variables ()
  ;; 6/6,  does automatically what I've been consistently doing by hand
  ;; when vetting objects.
  (let ((title   *job-event/title*)
        (company *job-event/company*)
        (event-name (job-event-name *job-event/event*)))
    
    ;; companies
    (when (null company)
      (if (and title
               (composite? title))
        (if (eq (first title) category::title+company)
          (title-company-is-the-company)
          (use-the-topic-company))
        (use-the-topic-company)))

    ;; titles
    (when (null title)
      (when (or (eq event-name 'resign-from)
                (eq event-name 'retire)
                (eq event-name 'person-quit))
        (use-title/company-given-with-person)))))


(defun use-title/company-given-with-person ()
  (when *job-event/persons-modifiers*
    (multiple-value-bind (embedded-title embedded-company)
                         (title/company-included-with-reference-to-person?
                           ;*job-event/person*
                           ;; need to keep the mods w/ the person
                           *job-event/persons-modifiers*
                           )
      (when embedded-title
        (setq *job-event/title* embedded-title))
      (when embedded-company
        (setq *job-event/company* embedded-company)))))


(defun title/company-included-with-reference-to-person? (pc)
  (typecase pc
    (list (if (composite? pc)
            (find-title/company-within-person-composite pc)
            (break/debug "Didn't expect a list that wasn't a ~
                          composite~%    ~A" pc)))
    (person nil)
    (title  pc)
    (otherwise
     (break/debug "New type of object acting as a person:~
                   ~%        ~A" pc))))

(defun find-title/company-within-person-composite (pc)
  ;; searches recursively
  (case (cat-symbol (first pc))
    (category::person+title
     (find-title-within-person-composite (third pc)))
    (category::title+company
     (values (second pc)
             (third pc)))
    (otherwise
     (break/debug "New composite in Find-title/company-~
                   within-person-composite:~%    ~A" pc)
     :foo)))




;;;-------------------------------------------------
;;; table of event-types that should go into the db
;;;-------------------------------------------------

(defun event-type-that-goes-into-db (event-type)
  ;; Should list every category of event.  Returns Nil if they
  ;; don't go into the db.  //// plainly this belongs on the
  ;; event-type as a property.
  ;;
  (unless (typep event-type 'job-event)
    (break/debug "Event-types are expected to be job-event.  This ~
                  one isn't~%          ~A" event-type))
  (case (job-event-name event-type)
    (become-title      t)
    (name-to-title     t)
    (assume-position   t)
    (appoint-to-position  t)
    (continue-as-title t)
    (elect-to-position t)
    (remain-in-post    t)
    (serve-as-title    t)
    (head-company      t)
    (return-to-company t)
    (will-be           t)
    (resign-from       t)
    (retire            t)
    (step-down-as      t)
    (person-quit       t)
    (dismiss-from-position t)
    (leave-company     t)
    (depart-company    t)
    (join-company      t)
    (presently-is      nil)
    (has-been          nil)
    (succeed-person-as nil)
    (person-died       nil)
    (otherwise
     (break/debug "Event-type-that-goes-into-db -- new event type:~
                   ~%        ~A" event-type)
     :foo )))

;;;---------
;;; display
;;;---------

(defun display/job-event/variables ()
  ;; presupposes that the object/edge has been dealt out into
  ;; the global variables
  ;;
  (format t "~%~A~
             ~%   event: ~A~
             ~%   title: ~A~
             ~%  person: ~A~
             ~% company: ~A"
          *job-event/source-edge*
          *job-event/event*
          *job-event/title*
          *job-event/person*
          *job-event/company*)
  (when *job-event/status*
    (format t "~%  status: ~A" *job-event/status*))
  (when *job-event/replacing*
    (format t "~%  replacing: ~A" *job-event/replacing*))
  (when *job-event/effective*
    (format t "~% effective: ~A" *job-event/effective*))
  (terpri))

