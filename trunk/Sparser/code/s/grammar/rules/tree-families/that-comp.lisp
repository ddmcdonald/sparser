;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "that comp"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  March 2005

;; initiated 10/22/93 v2.3.  Added def-rule data 3/8/95.
;; Converted uninteresting "+" to a "-" 5/2.  Added instantiation of
;; 'result' 3/11/05

(in-package :sparser)


;; For "report", especially when there's not a parse for the complement
;;   and you want a stub to que off of. 

(define-exploded-tree-family  that-complement
  :description "Appropriate for verbs like \"report\" that take sentential ~
                complements. This schema includes a pattern for the 'tag' ~
                constituent of the subject and verb by themselves should ~
                the grammar not have the rules for parsing the complement."
  :binding-parameters ( agent theme result )
  :labels (s subj-verb np vg vp s/that-comp)
  :cases
     ((:subject (s (np vp)
                  :head right-edge
                  :binds (agent left-edge)))

      (:tag (subj-verb (np vg)
               :head right-edge
               :instantiate-individual result  
               :binds (agent left-edge)))

      (:late-complement (s (subj-verb s/that-comp)
                           :head left-edge
                           :binds (theme right-edge)))

      (:that-comp (vp (vg s/that-comp)
                    :head left-edge
                    :instantiate-individual result  
                    :binds (theme right-edge)))

      (:optional-that (s/that-comp ("that" s/that-comp)
                        :daughter right-edge))))
