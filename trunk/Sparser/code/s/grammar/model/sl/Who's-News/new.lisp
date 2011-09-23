;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "new"
;;;   Module:  "model;sl:whos news:"
;;;  version:  May 1991      system version 1.8.4

;; done in a hurry 5/7,8

(in-package :CTI-source)


;;;---------------------------------
;;; (ertzatz) adjuncts to job-event
;;;---------------------------------

(def-cfr job-event (job-event at-company)
  :referent (:composite job-event+company
                        left-edge right-edge))

(def-cfr job-event (job-event in-company)
  :referent (:composite job-event+company
                        left-edge right-edge))

(def-cfr job-event (job-event to-company)
  :referent (:composite job-event+company
                        left-edge right-edge))

(def-cfr job-event (job-event company)
  :referent (:composite job-event+company
                        left-edge right-edge))

(def-cfr job-event (job-event of-subsidiary)
  :referent (:composite job-event+company
                        left-edge right-edge))

(def-cfr job-event (job-event of-title)  ;;0;64
  :referent (:composite job-event+title
                        left-edge right-edge))

(def-cfr job-event (job-event title)  ;;0;10
  :referent (:composite job-event+title
                        left-edge right-edge))


;;;--------
;;; people
;;;--------

(def-cfr to-person ("to" person)
  :referent (:daughter right-edge))


;;;----------------------------
;;; names treated as companies
;;;----------------------------

(def-cfr of-name ("of" name)
  :referent (:daughter right-edge))

(def-cfr for-name ("for" name)
  :referent (:daughter right-edge))


(def-cfr title (title of-name)
  :referent (:composite title+company
                        left-edge right-edge))

(def-cfr title (title for-name)
  :referent (:composite title+company
                        left-edge right-edge))


(def-cfr job-event (job-event for-name)
  :referent (:composite je+of-company
                        left-edge right-edge))



(def-cfr company-possessive (name apostrophe-s)
  :referent (:daughter left-edge))


;;;-------------
;;; title stuff
;;;-------------


(def-cfr title (title of-subsidiary)
  :referent (:composite title+company
                        left-edge right-edge))


(def-cfr comma-title-pp ("," title-pp)
  :referent (:daughter right-edge))

(def-cfr job-event (job-event comma-title-pp)
  :referent (:composite job-event+title-pp
                        left-edge right-edge))



;;;-------------------
;;; multiple readings
;;;-------------------

(def-cfr status-of-a-position ("retired"))  ;; (russ)
                                            ;; vs. (belmoral)


;;;------------------------
;;; new subcategorizations
;;;------------------------

(define-cfr category::nominalization/person
            `( ,(resolve/make "resignation") )
  :referent (job-event-named 'resign-from))


(def-cfr job-event/pers!__
         (job-event/pers!__!title title-pp)
  :referent (:composite job-event+title
                        left-edge right-edge))

(def-cfr job-event/CO!__
         (job-event/CO!__!title title-pp)
  :referent (:composite job-event+title
                        left-edge right-edge))


;;;---------
;;; cleanup
;;;---------

(def-cfr job-event (title-of-address job-event)
  :referent (:daughter right-edge))


;;;----------
;;; generics
;;;----------

(def-cfr people ("people")
  :referent people)

(def-cfr people ("man")
  :referent people)

(def-cfr people ("men")
  :referent people)

(def-cfr people ("woman")
  :referent people)

(def-cfr people ("women")
  :referent people)

(def-cfr people ("students")
  :referent people)


(def-cfr people (number people)
  :referent (:daughter right-edge))



;;;----------------
;;; hack hack hack
;;;----------------


(def-cfr whos-news-subtitle ("WHO'S NEWS:"))


(define-name "United")


(def-cfr age (time "old"))


;;;--------------------
;;; specific companies
;;;--------------------

(def-cfr company ("Dean Witter")
  :referent (:eval (make-company 
                    :name (make-name-of-a-company
                           :name1 (define-name "Dean")
                           :all-but-inc
                             (mapcar #'define-name
                                     '("Dean"
                                       "Witter"
                                       ))))))

(def-cfr company ("Grand Met")
  :referent (:eval (make-company 
                    :name (make-name-of-a-company
                           :name1 (define-name "Grand")
                           :all-but-inc
                             (mapcar #'define-name
                                     '("Grand"
                                       "Met"
                                       ))))))

(def-cfr company ("Lintas: New York")
  :referent (:eval (make-company 
                    :name (make-name-of-a-company
                           :name1 (define-name "Lintas")
                           :all-but-inc
                             (mapcar #'define-name
                                     '("Lintas"
                                       "New"
                                       "York"))))))

(def-cfr company ("GM")
  :referent (:eval (make-company 
                    :name (make-name-of-a-company
                           :name1 (define-name "GM")
                           :all-but-inc
                             (list (name-named "GM"))))))

;;;-----------
;;; locations
;;;-----------

(def-cfr in-store ("in-store"))

(def-cfr location ("world-wide"))

(define-city "Washington")


;;;----------
;;; spoilers
;;;----------

(def-cfr spoiler ("vacancy left"))   ;; feb1;140

(def-cfr spoiler (the-board job-event/pers!__))

(def-cfr spoiler ("A second"))  ;; #214

