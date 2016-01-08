;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "pers+co+title-pp"
;;;   Module:  "model forms;acts:arg str:"
;;;  version:  1.0  March 1991

;; initiated 3/6

(in-package :CTI-source)

;; e.g. "join" ///nope -- reanalyzed it as not requiring the pp 3/26

;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/pers!__!co!title-pp :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

;;-- doesn't passivize in this sense


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/pers!__!co!title-pp
         (modal  job-event/pers!__!co!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!co!title-pp
         (have  job-event/pers!__!co!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!co!title-pp
         (adverb  job-event/pers!__!co!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!co!title-pp
         (temporal-adverb  job-event/pers!__!co!title-pp)
  :form  vg
  :referent  (:daughter right-edge))



(def-cfr job-event/pers!__!co!title-pp
         (job-event/pers!__!co!title-pp  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!co!title-pp
         (job-event/pers!__!co!title-pp  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!co!title-pp
         (job-event/pers!__!co!title-pp  time)
  :form  vg
  :referent  (:daughter left-edge))

;;;-------------------------------------
;;; compose with first object (company)
;;;-------------------------------------

(def-cfr job-event/pers!__!title-pp
         (job-event/pers!__!co!title-pp  company)
  :form  VP
  :referent  (:composite job-event+company
                         left-edge right-edge))


;;;---------------------------------------
;;; compose with second object (title-pp)
;;;---------------------------------------

(def-cfr job-event/pers!__
         (job-event/pers!__!title-pp  title-pp)
  :form  VP
  :referent  (:composite job-event+title
                         left-edge right-edge))

