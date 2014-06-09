;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "that comp"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  June 2014

;; initiated 10/22/93 v2.3.  Added def-rule data 3/8/95.
;; Converted uninteresting "+" to a "-" 5/2.  Added instantiation of
;; 'result' 3/11/05. 4/3/13 Added family for just the tag parts.
;; 6/6/14 Removed the tag and late-complement options from that-complement
;; because they didn't seem to generalize and the commented out use of
;; this ETF in sl/reports/object.lisp said that it was too aggressive.

(in-package :sparser)


;; For "report", especially when there's not a parse for the complement
;;   and you want a stub to que off of. 

(define-exploded-tree-family  that-complement
  :description "Appropriate for verbs like \"report\" that take sentential ~
                complements. This schema includes a pattern for the 'tag' ~
                constituent of the subject and verb by themselves should ~
                the grammar not have the rules for parsing the complement."
  :binding-parameters ( agent theme result )
  :labels (s #|subj-verb|# np vg vp s/that-comp)
  :cases
     ((:subject (s (np vp)
                  :head right-edge
                  :binds (agent left-edge)))

      #+ignore (:tag (subj-verb (np vg)
               :head right-edge
                 
               :binds (agent left-edge)))

      #+ignore (:late-complement (s (subj-verb s/that-comp)
                           :head left-edge
                           :binds (theme right-edge)))

      (:that-comp (vp (vg s/that-comp)
                    :head left-edge
                    :instantiate-individual result  
                    :binds (theme right-edge)))

      (:optional-that (s/that-comp ("that" s/that-comp)
                        :daughter right-edge))))


(define-exploded-tree-family just-the-tags
  :description "Provides trees for the subject+verb construction
    that can be freely appended (or prepended) to any clause:
    '... she said',  'she said ...'.  Binding parameters designed
    for case where we're instantiating a category that represents
    the verb."
  :binding-parameters ( agent result )
  :labels ( subj-verb np vg )
  :cases 
    ((:reversed-tag (subj-verb (vg np) ;; "said the minister"
                      :instantiate-individual result
                      :head left-edge
                      :binds (agent right-edge)))
     (:tag (subj-verb (np vg) ;; "the minister said"
              :instantiate-individual result
              :head right-edge
              :binds (agent left-edge)))))
