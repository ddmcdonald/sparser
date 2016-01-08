;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "verbs"
;;;   Module:  "model;sl:whos news:job events:"
;;;  version:  June 1993

;; initiated 6/15/93 v2.3

(in-package :sparser)


;;---- "retire"

(define-category  retire-from-position
  :instantiates  job-event
  :specializes  leave-position

  :binds ((person . person)
          (position . position))

  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je )

  :realization (:tree-family intransitive
                :mapping ((s . job-event)
                          (vg . :self)
                          (np/subject . person)
                          (agent . person))

                :main-verb "retire"

                :additional-rules
                  ((:pp-adjunct (s (s as-title)
                                 :head left-referent
                                 :binds (position  right-referent)))
                   )))



;;---- "confirm"

(define-category  confirm-as-job
  :instantiates  job-event
  :specializes  get-position

  :binds ((agent)
          (person . person)
          (position . position))

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

                :main-verb "confirm"

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
  :specializes nil

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

      :main-verb "succeed" ))



;;---- "remain"

(define-category  remain-in-job
  :instantiates  job-event
  :specializes nil

  :binds ((person . person)
          (position . position))

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

                :main-verb "remain" ))
