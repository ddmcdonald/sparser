;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  David D. McDonald 
;;;                     & the Brandeis/NMSU "Diederot" project
;;;                     -- all rights reserved
;;;
;;;     File:  "sample gl entry"
;;;   Module:  "model;sl:JV:"
;;;  version:  October 1991

;; initiated 10/30

(in-package :CTI-source)


(define-gl-entry  "establish"

                  (agent
                   thing-established
                   )

  :morphology  (verb
                :nominalization-ending "ment")

  :syntax (transitive-verb
           :subject  agent
           :object   thing-established )

  :semantics
     (:predicate  establish

      :constitutive  ( ... )



      :formal        ( ... )



      :telic         ( ... )



      :agentive      ( ... )



      ))
