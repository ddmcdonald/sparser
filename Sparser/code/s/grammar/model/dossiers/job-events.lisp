;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011,2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "job events"
;;;   Module:  "model;dossiers:"
;;;  version:  July 2016

;; initiated 6/15/93 v2.3 with "retire", "confirm", "succeed", and "remain".
;; 5/2/95 automatically entered "appoint", refining it by hand 5/28.
;; Added "name" 6/22. 12/30/97 Added "resign" as a stright copy of "retire".
;; 0.1 3/17/05 added "join", did position => position-at-co. Uncovered a clash
;;  between a constructed 'as-title' rule (in 'join') and the referenced ones
;;  in the additional-rules fields of earlier cases, and not immediately sure
;;  of the fix, so commenting those out.
;; 0.2 10/9/09 Need to correct for drifts in the ETF
;; 0.3 1/14/11 Starting process of exposing the as-title extensions blocked
;;  in 2005. 1/18 made all the categories uniformly lowercase
;;  [[ Also extending notation to mark name->person ]]

(in-package :sparser)

;;;---------------
;;; intransitives
;;;---------------

;;---- "retire"

(define-category  retire-from-position
  :instantiates  job-event
  :specializes  leave-position

  :binds ((person . person)
          (position . position-at-co))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je )

  :realization (:tree-family intransitive
                :mapping ((s . job-event)
                          (vp . :self) ;; probably the bug is in the ETF (10/09)
                          (np/subject . person)
                          (agent . person))

                :verb "retire"

                :additional-rules
                  ((:pp-adjunct (s (s as-title)
                                 :head left-referent
                                 :binds (position  right-referent))))
                  ))


;;---- "resign"

(define-category  resign-position
  :instantiates  job-event
  :specializes  leave-position

  :binds ((person . person)
          (position . position-at-co))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je )

  :realization (:tree-family intransitive
                :mapping ((s . job-event)
                          (vp . :self)
                          (np/subject . person)
                          (agent . person))

                :verb "resign"

                :additional-rules
                (#| duplicates additional-rule just above
                 (:pp-adjunct (s (s as-title)
                                 :head left-referent
                                 :binds (position  right-referent))) |#
                   (:pp-adjunct (s (s as-position-at-co)
                                 :head left-referent
                                 :binds (position  right-referent))))
		  ))

;;;-------------
;;; transitives
;;;-------------

;;---- "confirm"

(define-category  confirm-as-job
  :instantiates  job-event
  :specializes  get-position

  :binds ((agent)
          (person . person)
          (position . position-at-co))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je )

  :realization (:tree-family transitive/passive  ;; should own the pp
                :mapping ((s . job-event)        ;; rather than use additionql
                          (vp . job-event/agent) ;; rules
                          (vg . :self)
                          (np/subject . person)  ;; needs an "or" ///
                          (np/object . person)
                          (agent . agent)
                          (patient . person))

                :verb "confirm"

                :additional-rules
                  ((:pp-adjunct (s (s as-title)
                                 :head left-referent
                                 :binds (position right-referent)))
                   (:pp-adjunct (s (s in-post)
                                 :head left-referent
                                 :binds (position right-referent))))
                  ))



;;---- "succeed"

(define-category  succeed-to-job
  :instantiates  job-event
  :specializes job-event ;;/// insufficient for reasoning

  :binds ((person-leaving . person)
          (person-arriving . person))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je )
  :realization
     (:tree-family  transitive/passive
      :mapping ((s . job-event )
                (vp . job-event/agent )
                (vg . :self )
                (np/subject . person )
                (np/object . person )
                (agent . person-arriving )
                (patient . person-leaving ))

      :verb "succeed" ))



;;---- "remain"

(define-category  remain-in-job
  :instantiates  job-event
  :specializes retain-position

  :binds ((person . person)
          (position . position-at-co))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je )

  :realization (:tree-family  transitive
                :mapping ((s . job-event )
                          (vp . job-event/agent )
                          (vg . :self )
                          (np/subject . person )
                          (np/object . title )    ;; ignores the systematic
                          (agent . person )       ;; vagueness of partially
                          (patient . position ))  ;; saturated position objects

                :verb "remain" ))



;;;---------------
;;; ditransitives
;;;---------------

;;--- "appoint"

(define-category  appoint-to-position
  :instantiates job-event
  :specializes  get-position

  :binds ((person . person)
          (position . position-at-co)
          (title . title)
          (company . company))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je)
  :realization
     (:tree-family  ditransitive/passive
      :mapping
      ((s . job-event)
       (vp . job-event/agent)
       (v-bar . job-event/title)
       (vg . :self)
       (np/agent . company)
       (np/patient . person)   ;; "appointed [Smith]"
       (np/goal . ( title           ;; "... [president]"
                    to-position ))  ;; "... [to the new position of ...]"
       (agent . company)
       (patient . person)
       (goal . title))

      :verb "appoint"))


;;--- "name"

(define-category  name-to-position
  :instantiates job-event
  :specializes  get-position

  :binds ((person . person)
          (position . position-at-co)
          (title . title)
          (company . company))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je)
  :realization
     (:tree-family  ditransitive/pp-or-np
      :mapping ((s . job-event)
                (vp . job-event/agent)
                (v-bar . job-event/title)
                (vg . :self)
                (np/agent . company)
                (np/patient . person)
                (np/goal . title)
                (prep . "to")
                (pp/goal . position)
                (agent . company)
                (patient . person)
                (goal . title))

      :verb "name" ))


;;--- "join"

#| The as-title rule that this creates duplicates
   the marker category in core/title/rules/  |#
(define-category  join-company
  :instantiates job-event
  :specializes  get-position

  :binds ((person . person)
          (position . position-at-co)
          (title . title)
          (company . company))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je)
  :realization
     (:tree-family  ditransitive/pp
      :mapping ((s . job-event)
                (vp . job-event/agent)
                (v-bar . job-event/title)
                (vg . :self)
                (np/agent . company)
                (np/patient . person)
                (prep . "as")
                (pp/goal . title)
                (agent . person)
                (patient . company)
                (goal . title))

      :verb "join" ))
