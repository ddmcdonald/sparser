;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "subjects"
;;;   Module:  "model forms;acts:arg str:"
;;;  version:  1.1  March 1991

;; borken out into their own file 3/7
;; 1.1  (3/8 v1.8.1)  Fixed wrong arg order in ref. of pers rule

(in-package :CTI-source)

;;;-----------------------------
;;; compose with person subject
;;;-----------------------------

(def-category  job-event/pers!__   :lattice-position :non-terminal)

(def-cfr job-event
         (person  job-event/pers!__)
  :form S
  :referent (:composite job-event+person
                        right-edge left-edge))


;;;------------------------------
;;; compose with company subject
;;;------------------------------

(def-category  job-event/co!__  :lattice-position :non-terminal)

(def-cfr job-event
         (company  job-event/co!__)
  :form S
  :referent (:composite job-event+company
                        right-edge left-edge))


(set-ca-action  category::job-event/co!__
                'search-for-subject/company)


;;;----------------------------
;;; compose with title subject
;;;----------------------------

(def-category  job-event/title!__   :lattice-position :non-terminal)

(def-cfr job-event
         (title job-event/title!__)
   :form S
   :referent (:composite job-event+title
                         right-edge left-edge))


;;;------------------
;;; copula inversion
;;;------------------

(def-cfr is-person ( be person )
  :referent (:daughter right-edge))

(def-cfr job-event ( job-event/pers!__  is-person )
  :referent (:composite job-event+person
                        left-edge right-edge))
