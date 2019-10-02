;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2017-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ditransitive"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  October 2019

;; initiated 4/27/95
;; 0.1 (5/29/95) renamed "np/subject" to be "np/agent" for style consistency

(in-package :sparser)

#| ETSf for verbs with two np objects in fixed order

    ditransitive  ------------ "They elected him president"
    ditransitive/passive
    ditransitive/attribute --- "Make the bottom block red?
|#


(define-exploded-tree-family  ditransitive
  :description "A verb that requires two np objects after the verb to have 
     a complete sentence. Examples are verbs like 'elect' or 'appoint'. 
     The binding parameters are interpreted as: 'agent elected patient goal'"
  :binding-parameters ( agent patient goal )
  :labels ( s vg v-bar vp
            np/agent np/patient np/goal )
  :cases
    ((:subject (s (np/agent vp)
                :head right-edge
                :binds (agent left-edge)))

     (:verb+first-object (v-bar (vg np/patient)
                           :head left-edge
                           :binds (patient right-edge)))

     (:v-bar+second-object (vp (v-bar np/goal)
                             :head left-edge
                             :binds (goal right-edge)))))


(define-exploded-tree-family  ditransitive/passive
  :description "A ditransitive verb (requires two objects after the verb)
    that can be passivized"
  :incorporates ditransitive
  :cases
     ((:passive (s (np/patient vp/+ed)
                  :head right-edge
                  :binds (patient left-edge)))

      (:passive+second-object (vp/+ed (vg/+ed np/goal)
                                  :form vp
                                  :head left-edge
                                  :binds (goal right-edge)))))


(define-exploded-tree-family ditransitive/attribute
  :description "A verb that lets an agent predicate an attribute of the patient.
    E.g. 'make the bottom block red', 'they call him Dan'."
  :binding-parameters ( agent patient attribute )
  :labels ( s vg v-bar vp
            np/agent np/patient ap/attribute )
  :cases
    ((:subject (s (np/agent vp)
                :head right-edge
                :binds (agent left-edge)))

     (:verb+first-object (v-bar (vg np/patient)
                           :head left-edge
                           :binds (patient right-edge)))

     (:v-bar+second-object (vp (v-bar ap/attribute)
                             :head left-edge
                             :binds (attribute right-edge)))))
