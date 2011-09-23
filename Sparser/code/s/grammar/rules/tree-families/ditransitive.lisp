;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ditransitive"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  0.1 May 1995

;; initiated 4/27/95
;; 0.1 (5/29) renamed "np/subject" to be "np/agent" for style consistency

(in-package :sparser)


(define-exploded-tree-family  ditransitive
  :description "A verb that requires two objects after the verb to have a complete sentence. Examples are verbs like \"elect\" or \"appoint\". The binding parameters are interpreted as: \"agent elected patient goal\""
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
  :description "A ditransitive verb (requires two objects after the verb) that can be passivized"
  :incorporates ditransitive
  :cases
     ((:passive (s (np/patient vp/+ed)
                  :head right-edge
                  :binds (patient left-edge)))

      (:passive+second-object (vp/+ed (vg/+ed np/goal)
                                  :head left-edge
                                  :binds (goal right-edge)))))

