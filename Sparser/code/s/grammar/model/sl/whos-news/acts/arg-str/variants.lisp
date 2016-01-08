;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "variants"
;;;   Module:  "model forms;acts:arg str:"
;;;  version:  May 1991

;; initiated 5/20

(in-package :CTI-source)

;;;------------------------------
;;; alternative complement types
;;;------------------------------

;;----- title/plural

(def-cfr job-event/pers!__
         (job-event/pers!__!title title/plural)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))


(def-cfr job-event/co!__
         (job-event/co!__!title title/plural)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))



;;------  be "on" a commission rather than get a title

(def-cfr on-company ("on" company)
  :referent (:daughter right-edge))

(def-cfr on-company ("on" thisCo)
  :referent (:daughter right-edge))

(def-cfr on-company ("on" defCo)
  :referent (:daughter right-edge))


;; "serve"
(def-cfr job-event/pers!__
         ( job-event/pers!__!title-pp  on-company )
  :referent (:composite job-event+company
                        left-edge right-edge))

;; "remain"
(def-cfr job-event/pers!__
         ( job-event/pers!__!title  on-company)
  :referent (:composite job-event+company
                        left-edge right-edge))

