;;; -*- Mode:LISP; Syntax:Common/Users/ddm/sparser/Sparser/code/s/grammar/rules/tree-families/verbs-taking-pps.lisp-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "verbs taking pps"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  April 2009

;; initiated 5/2/95.  Complex slashed symbol done 6/22. 3/17/05 added variant
;; with just a pp as the second post-verb argument. 4/20/09 moved in transitive/pp
;; and added transitive/specializing-pp. 6/1/09 added intransitive-with-preposition

(in-package :sparser)

;;--- Intransitive

(define-exploded-tree-family intransitive-with-preposition
  :description "Instranitive verb that takes a preposition that is essential to 
     its meaning but does not contribute an argument. 'move along'"
  :binding-parameters ( agent )
  :labels ( s vp vg np/subject prep )
  :cases
    ((:subject (s  (np/subject vp)
                 :head right-edge
                 :binds (agent left-edge)))
     (:verb+prep (vp (vg prep)
		   :head left-edge))))
		   


;;--- Transitives

(define-exploded-tree-family  transitive/pp
  :description "A verb that takes a subject and an object that is marked by ~
                a specific preposition. Examples are 'check for' or 'look in'"
  :binding-parameters ( agent theme )
  :labels ( s vp vg np/subject prep pp/np )
  :cases
     ((:subject (s  (np/subject vg)  ;; incorporate it?
                 :head right-edge
                 :binds (agent left-edge)))
      (:pp (pp/prep/pp/np (prep pp/np) ;; "for an open circuit"
			    :head right-edge))
      (:verb+pp-object (vp (vg prep/pp/np)
			     :head left-edge
			     :binds (theme right-edge)))))

(define-exploded-tree-family  transitive/specializing-pp
  :description "A verb that takes a subject and an object that is marked by ~
                a specific preposition. Examples are 'check for' or 'look in'"
  :binding-parameters ( agent theme )
  :labels ( s vp vg np/subject prep pp/np )
  :cases
     ((:subject (s  (np/subject vg)  ;; incorporate it?
		 :form s
                 :head right-edge
                 :binds (agent left-edge)))
      (:vp+prep/object (vg/prep (vg prep)
			   :form vg
			   :instantiate-individual left-edge
			   :head left-edge
			   :subtype prep))			   
      (:verb+pp-object (vp (vg/prep pp/np)
			     :form vp
			     :head left-edge
			     :binds (theme right-edge)))))



;;--- Di-transitives

(define-exploded-tree-family  ditransitive/pp-or-np
  :description "Fits a verb that takes a subject and two objects, ~
                where the second 'object' can be either an np or a pp. ~
                The first object can be promoted (passivized); the second ~
                can as well provided that it is negative. When there is a pp, ~
                the preposition serves as a 'case marker' rather than carrying ~
                independent information.  Unlike a verb like 'give', ~
                the two complements to the verb do not change their positions. ~
                Examples are 'name' and 'appoint'."
  :binding-parameters ( agent patient goal )
  :labels ( s vp v-bar vg np/agent np/patient np/goal prep pp/goal )
  :cases
    ((:subject (s (np/agent vp)
                :head right-edge
                :binds (agent left-edge)))

     (:verb+first-object (v-bar (vg np/patient)
                           :head left-edge
                           :binds (patient right-edge)))

     (:v-bar+second-object (vp (v-bar np/goal)
                             :head left-edge
                             :binds (goal right-edge)))

     (:pp (pp/prep/pp/goal (prep pp/goal)
             :head right-edge ))

     (:v-bar+pp-object (vp (v-bar prep/pp/goal)
                            :head left-edge
                            :binds (goal right-edge)))

     (:verb+pp-object (vp/+ed (vg/+ed prep/pp/goal)
                            :head left-edge
                            :binds (goal right-edge)))

     (:verb+second-object (vp/+ed (vg/+ed np/goal)
                            :head left-edge
                            :binds (goal right-edge)))
     
     (:passive (s (np/patient vp/+ed) 
                 :head right-edge
                 :binds (patient left-edge)))

     (:promoting-second-object  (s (np/goal vg/+ed)
                                 :head right-edge
                                 :binds (goal left-edge)))))



(define-exploded-tree-family  ditransitive/pp
  :description "Fits a verb that takes a subject and two objects, ~
                where the second 'object' is a pp. ~
                The first object can be promoted (passivized); the second ~
                can as well provided that it is negative. When there is a pp, ~
                the preposition serves as a 'case marker' rather than carrying ~
                independent information.  Unlike a verb like 'give', ~
                the two complements to the verb do not change their positions. ~
                Example is 'join'."
  :binding-parameters ( agent patient goal )
  :labels ( s vp v-bar vg np/agent np/patient prep pp/goal )
  :cases
    ((:subject (s (np/agent vp)
                :head right-edge
                :binds (agent left-edge)))

     (:pp (pp/prep/pp/goal (prep pp/goal)
             :head right-edge ))

     (:v-bar+pp-object (vp (v-bar prep/pp/goal)
                            :head left-edge
                            :binds (goal right-edge)))

     (:verb+pp-object (vp (vg prep/pp/goal)
                            :head left-edge
                            :binds (goal right-edge)))

     (:verb+first-object (v-bar (vg np/patient)
                           :head left-edge
                           :binds (patient right-edge)))

     (:verb+omitting-patent (v-bar (vg prep/pp/goal)
                              :head left-edge
                              :binds (goal right-edge)))
     
     (:passive (s (np/patient vp/+ed) 
                 :head right-edge
                 :binds (patient left-edge)))))
