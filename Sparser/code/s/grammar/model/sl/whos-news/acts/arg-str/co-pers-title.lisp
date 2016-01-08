;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "co+pers+title"
;;;   Module:  "model forms;sl:whos news:acts:arg str:"
;;;  version:  March 1991               (v1.8.1) 

(in-package :CTI-source)

;; e.g. "appoint"  "elect"  "name"

;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/co!__!pers!title  :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

(def-cfr job-event/pers!__!title
         (be job-event/co!__!pers!title)
  :form  vg
  :referent  (:daughter right-edge))


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/co!__!pers!title
         (modal  job-event/co!__!pers!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title
         (have  job-event/co!__!pers!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title
         (adverb  job-event/co!__!pers!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title
         (temporal-adverb  job-event/co!__!pers!title)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title
         (job-event/co!__!pers!title  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/co!__!pers!title
         (job-event/co!__!pers!title  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))



(def-cfr job-event/co!__!pers!title
         (job-event/co!__!pers!title  time)
  :form  vg
  :referent  (:daughter left-edge))

;;;----------------------------------
;;; verb-preposition (particle) pair 
;;;----------------------------------

#|  -- have to get the pp explicitly  --  5/21
(def-cfr job-event/co!__!pers!title
         (job-event/co!__!pers!title "to")
  :form  vg+prep
  :referent  (:daughter left-edge))  |#


;;;------------------------------------
;;; compose with first object (person)
;;;------------------------------------

(def-cfr job-event/co!__!title
         (job-event/co!__!pers!title  person)
  :form  vg
  :referent  (:composite job-event+person
                         left-edge right-edge))


;;;------------------------------------
;;; compose with second object (title)
;;;------------------------------------

(def-cfr job-event/co!__
         (job-event/co!__!title title)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))

(def-cfr job-event/co!__
         (job-event/co!__!title title-pp)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))

(def-cfr job-event/co!__
         (job-event/co!__!title comma-title-pp)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))

(def-cfr job-event/co!__
         (job-event/co!__!title comma-to-title)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))


;;;-----------------------------------------
;;; reanalysis of stranded partial treetops
;;;-----------------------------------------

(set-ca-action  category::job-event/co!__!title
                'look-for-incorporated-title)

(defun look-for-incorporated-title (v-bar)
  ;; context check
  (when (eq (edge-category (edge-right-daughter v-bar))
            category::person)
    (let ((right-fringe-person (edge-right-daughter v-bar))
          (original-verb       (edge-left-daughter  v-bar)))

      (cond
       ((eq (edge-right-daughter right-fringe-person)
            :capitalized-sequence)) ;; person direct from fsa
       ((eq (edge-right-daughter right-fringe-person)
            :context-sensitive))    ;; person formed from name
       ((symbolp (edge-right-daughter right-fringe-person)))
       (t
        (when (and (eq (edge-category (edge-right-daughter
                                       right-fringe-person))
                       category::comma-title)
                   (eq (edge-category original-verb)
                       category::job-event/co!__!pers!title))
          
          ;; we know at this point that the reanalysis is valid
          ;; because there's no other way to get to this category
          ;; of V-bar except via a two complement verb, of which
          ;; in this domain there is only the one taking a person
          ;; followed by a title, the title in this case having
          ;; been swallowed by the person as an additional
          ;; adjunct.  
          (reanalyze-title-adjoined-to-person-as-2d-complement
           original-verb right-fringe-person)))))))


(defun reanalyze-title-adjoined-to-person-as-2d-complement (verb
                                                            person)
  ;; lift the title from the person and put it on the v-bar, which
  ;; is spanned by a new node.
  (let ((comma-title        (edge-right-daughter person))
        (person-up-to-comma (edge-left-daughter  person))
        (v+person/rule
         (lookup/cfr/resolved category::job-event/co!__!title
                              `(,category::job-event/co!__!pers!title ,category::person)))
        (v-bar+title/rule
         (lookup/cfr/resolved category::job-event/co!__
                              `(,category::job-event/co!__!title ,category::title)))
        v+person v-bar+title )

    (setq v+person (make-default-binary-edge verb
                                             person-up-to-comma
                                             v+person/rule))

    (setq v-bar+title (make-default-binary-edge v+person
                                                (edge-right-daughter
                                                 comma-title)
                                                v-bar+title/rule))
    ;(break "phew")
    ))

