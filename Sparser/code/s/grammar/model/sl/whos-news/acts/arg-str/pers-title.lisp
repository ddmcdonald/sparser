;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "pers+title"
;;;   Module:  "model forms;sl:whos news:acts:arg str:"
;;;  version:  February 1991               (v1.8.1) 

(in-package :CTI-source)

;; e.g. "remain", some cases of "name"

;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/pers!__!title :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

;;-- doesn't passivize


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/pers!__!title
         (modal  job-event/pers!__!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title
         (have  job-event/pers!__!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title
         (adverb  job-event/pers!__!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title
         (temporal-adverb  job-event/pers!__!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!title
         (job-event/pers!__!title  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!title
         (job-event/pers!__!title  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!title
         (job-event/pers!__!title  time)
  :form  vg
  :referent  (:daughter left-edge))

;;;----------------------------------
;;; verb-preposition (particle) pair 
;;;----------------------------------

#|  This is needed by verbs like "name" or "elect", which take
   the particle, but in many cases will have had their category
   changed by the action of passive before they see the prep. |#
#|   pulled 5/20 to fit into the segmentation better
(def-cfr job-event/pers!__!title
         (job-event/pers!__!title "to")
  :form  vg+prep
  :referent  (:daughter left-edge))   |#

;; this is to compensate.
;;
(def-cfr to-title ("to" title)
  :referent (:daughter right-edge))


;;;--------------------------------
;;; compose with pp object (title)
;;;--------------------------------

(def-cfr job-event/pers!__
         (job-event/pers!__!title title)
  :form  vp
  :referent  (:composite job-event+title
                         left-edge right-edge))

(def-cfr job-event/pers!__
         (job-event/pers!__!title to-title)
  :form  vp
  :referent  (:composite job-event+title
                         left-edge right-edge))

(def-cfr job-event/pers!__
         (job-event/pers!__!title to-the-board)
  :form  vp
  :referent  (:composite job-event+title
                         left-edge right-edge))

(def-cfr job-event/pers!__
         (job-event/pers!__!title position)
  :form  vp
  :referent  (:composite job-event+title
                         left-edge right-edge))

