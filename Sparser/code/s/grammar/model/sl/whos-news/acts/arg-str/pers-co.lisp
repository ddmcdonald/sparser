;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "pers+co"
;;;   Module:  "model forms;acts:arg str:"
;;;  version:  1.0  March 1991

;; initiated 3/26

(in-package :CTI-source)

;; e.g. "join"

;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/pers!__!co :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

;;-- doesn't passivize in this sense


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/pers!__!co
         (be  job-event/pers!__!co)      ;; "be joining"
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!co
         (modal  job-event/pers!__!co)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!co
         (have  job-event/pers!__!co)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!co
         (adverb  job-event/pers!__!co)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!co
         (temporal-adverb  job-event/pers!__!co)
  :form  vg
  :referent  (:daughter right-edge))



(def-cfr job-event/pers!__!co
         (job-event/pers!__!co  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!co
         (job-event/pers!__!co  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!co
         (job-event/pers!__!co  time)
  :form  vg
  :referent  (:daughter left-edge))

;;;-------------------------------------
;;; compose with first object (company)
;;;-------------------------------------

(def-cfr job-event/pers!__
         (job-event/pers!__!co  company)
  :form  VP
  :referent  (:composite job-event+company
                         left-edge right-edge))

