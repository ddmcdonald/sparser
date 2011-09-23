;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "arg str"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  February 1991               (v1.8.1) 

(in-package :CTI-source)


;;;---------------------------------------------------------
;;; subcategorization frames of the various job event-types
;;;---------------------------------------------------------

(def-category  job-event/co!__pers!title-pp)
(def-category  job-event/co!__pers!title)
(def-category  job-event/co!__!title)
(def-category  job-event/co!__)

(def-category  job-event/co!__!pers)

(def-category  job-event/pers!__!title-pp)
(def-category  job-event/pers!__!title)
(def-category  job-event/pers!__!pers)
(def-category  job-event/pers!__)

(def-category  job-event/pers!__!co)

(def-category  job-event/title!__)

(def-category  job-event)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

(def-cfr job-event/pers!__!title-pp
         (be job-event/co!__pers!title-pp)
  :form  vg
  :referent  (:daughter right-edge))

(def-cfr job-event/pers!__!title
         (be job-event/co!__pers!title)
  :form  vg
  :referent  (:daughter right-edge))

(def-cfr job-event/pers!__
         (be job-event/co!__!pers)
  :form  vg
  :referent  (:daughter right-edge))

(def-cfr job-event/title!__
         (be/neg job-event/co!__pers!title)
  :form  vg
  :referent  (:daughter right-edge))


;;;-------------
;;; progressive
;;;-------------

;;-- "is retiring"  "is retired"
;;
(def-cfr job-event/pers!__
         (be job-event/pers!__)
  :form  vg
  :referent  (:daughter right-edge))


;;;----------------
;;; soak up modals
;;;----------------

;;-- "will retire"
;;
(def-cfr job-event/pers!__!title-pp
         (modal job-event/pers!__!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


;;;-----------------
;;; soak up adverbs
;;;-----------------

(def-cfr job-event/co!__pers!title
         (adverb job-event/co!__pers!title)
  :referent (:daughter right-edge))

(def-cfr job-event/pers!__!title
         (adverb job-event/pers!__!title)
  :referent (:daughter right-edge))

(def-cfr job-event/title!__
         (adverb job-event/title!__)
  :referent (:daughter right-edge))



;;;---------------------------------
;;; compose the title direct object
;;;---------------------------------

(def-cfr job-event/pers!__
         (job-event/pers!__!title-pp  title-pp)
  :form VP
  :referent (:composite job-event+title
                        left-edge right-edge))


(def-cfr job-event/pers!__
         (job-event/pers!__!title  title)
  :form VP
  :referent (:composite job-event+title
                        left-edge right-edge))


(def-cfr job-event/co!__
         (job-event/co!__!title title)
  :form VP
  :referent (:composite job-event+title
                        right-edge left-edge))


;;--------- swallow a following "to"
;; (tyler)   "[pers] was named to (the additional post of...)"
;;
(def-cfr job-event/pers!__!title
         (job-event/pers!__!title "to")
  :form vg+prep
  :referent (:daughter left-edge))




;;;----------------------------
;;; compose with title subject
;;;----------------------------

(def-cfr job-event
         (title job-event/title!__)
   :form S
   :referent (:composite job-event+title
                         right-edge left-edge))


;;;-----------------------------------
;;; compose with person direct object
;;;-----------------------------------

(def-cfr job-event/pers!__
         (job-event/pers!__!pers person)
  :form VP
  :referent (:composite job-event+replacing
                        left-edge right-edge))

(def-cfr job-event/co!__!title
         (job-event/co!__!pers!title person)
  :form VP
  :referent (:composite job-event+person
                        left-edge right-edge))

(def-cfr  job-event/co!__!title
          (job-event/co!__pers!title person)
          ;; !! the only difference here is a "!" --something
          ;; somewhere is inconsistent
  :form VP
  :referent (:composite job-event+person
                        left-edge right-edge))


;;;-----------------------------
;;; compose with person subject
;;;-----------------------------

(def-cfr job-event (person job-event/pers!__)
  :form S
  :referent (:composite job-event+person
                        left-edge right-edge))


;;;------------------------------
;;; compose with company subject
;;;------------------------------

(def-cfr job-event (company job-event/co!__)
  :form S
  :referent (:composite job-event+company
                        right-edge left-edge))


;;;------------------------------------
;;; compose with company direct object
;;;------------------------------------

(def-cfr job-event/pers!__  (job-event/pers!__!co co)
  :form S
  :referent (:composite job-event+company
                        left-edge right-edge))
