;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "pers+title-pp"
;;;   Module:  "model forms;sl:whos news:acts:arg str:"
;;;  version:  March 1991               (v1.8.1) 

(in-package :CTI-source)

;; e.g. "continue"

;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/pers!__!title-pp :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

;;--- it doesn't passivize when it has this sense


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/pers!__!title-pp
         (modal  job-event/pers!__!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title-pp
         (have  job-event/pers!__!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title-pp
         (adverb  job-event/pers!__!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title-pp
         (temporal-adverb  pers!__!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title-pp
         (job-event/pers!__!title-pp  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!title-pp
         (pers!__!title-pp  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!title-pp
         (pers!__!title-pp  time)
  :form  vg
  :referent  (:daughter left-edge))

;;;------------------------
;;; compose with pp object
;;;------------------------

(def-cfr job-event/pers!__
         (job-event/pers!__!title-pp  title-pp)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))

