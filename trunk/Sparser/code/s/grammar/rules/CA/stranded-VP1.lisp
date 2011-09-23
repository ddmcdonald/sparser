;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1998,2011 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "stranded VP"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:  1.0 April 2011

;; initiated 7/16/93 v2.3, fleshed out the edge building 8/4
;; 0.1 (4/26/95) added case for 'subj , vp'
;; 1.0 (5/15) remodularized point where rule and label are looked up
;;     (5/16) added passive variation.
;;     (7/23/98) added appreciation of psi in Subject-rule
;;     (4/7/11) updated it.

(in-package :sparser)


;;--- active

(set-ca-action  category::vp  'vp-ca-dispatch)
  ;; reacts to the form-category on a stranded edge


(defun vp-ca-dispatch (vp-edge)

  ;; common dispatch point for trying to connect up VPs that are
  ;; stranded after their portion of the forest level has gone
  ;; quiescent.  Only two cases for the moment: participles and
  ;; subject search across appositives.  /// add check against
  ;; sentence-start (for imperatives) and gathering information
  ;; from the tense/aspect of the VG. 

  (let ((subj-rule (subject-rule (edge-referent vp-edge))))
    (when subj-rule
      (let ((subj-label (first (cfr-rhs subj-rule))))
        (comma-dispatch-for-subject-search vp-edge
                                           subj-rule
                                           subj-label)))))




;;--- passive

(set-ca-action  category::vp/passive  'vp/passive-ca-dispatch)


(defun vp/passive-ca-dispatch (vp-edge)
  (let ((subj-rule (subject-rule (edge-referent vp-edge)
                                 :passive )))
    (when subj-rule
      (let ((subj-label (first (cfr-rhs subj-rule))))
        (comma-dispatch-for-subject-search vp-edge
                                           subj-rule
                                           subj-label)))))




;;;---------------------------------
;;; looking up the appropriate rule
;;;---------------------------------

(defun subject-rule (unit  &optional passive? )
  (let* ((type (etypecase unit
                 (referential-category unit)
                 (psi (category-lattice-node-belongs-to 
                       (psi-lp unit)))
                 (individual (car (indiv-type unit)))))
         (rules (cadr (member :rules (cat-realization type)))))

    (dolist (cfr rules)
      ;; the list is usually about half a dozen items, with the
      ;; phrasal cases at the beginning, so this serial search
      ;; isn't so bad
      (if passive?
        (when (eq :passive
                  (cadr (member :relation (cfr-plist cfr))))
          (return-from subject-rule cfr))

        (when (eq :subject
                  (cadr (member :relation (cfr-plist cfr))))
          (return-from subject-rule cfr))))

    (tr :couldnt-find-subject-rule unit type)
    nil ))





;;;--------------------------------------
;;; participles adjacent to full clauses
;;;--------------------------------------

(defun search-into-s-for-participles-subject (s-edge vp-edge)
  ;; if the prior edge is a clause then we'll assume
  ;; we're a participle //// without bothering to check the
  ;; form of our verb (i.e. that it's oblique).
  (let ((higher-subject
         (extract-subject-from-clause s-edge)))
              
    (if higher-subject
      (then ;; complete the equivalent clause for this vp
        (tr :upstairs-subject-found higher-subject)
        (span-participial-adjunct vp-edge
                                  s-edge
                                  higher-subject))
      (else
        (tr :higher-subject-not-found s-edge)))))


(defun span-participial-adjunct (vp s subject)

  ;; We care less about the derived constituent structure than
  ;; about getting the right slots filled in the VP's denotation
  ;; We Chomsky-adjoin the vp to the s, and then look up the
  ;; appropriate subject rule (//not checking form passives) and
  ;; do it's semantic part.

  (make-chart-edge :left-edge s   ;;n.b. the comma gets stranded
                   :right-edge vp
                   :category (edge-category s)
                   :form (edge-form s)  ;; note the different fringe ??
                   :referent (edge-referent s)
                   :rule :S-comma-VP )

  (let ((subj-rule (subject-rule (edge-referent vp))))
    ;; if we execute the referent part of the rule we'll get the
    ;; the unit that we would have if the rule had been encountered
    ;; in the normal course of events.   Probably the right thing
    ;; happened just by side-effect since the vp holds the individual
    ;; to which the subject is probably just another binding, 
    ;; but we explicitly set the referent here just in case the
    ;; semantic interpretation changes the type or instantiates a
    ;; new object, though that seems unlikely
    (when subj-rule
      (let ((unit (referent-from-rule nil  ;; left-edge
                                      vp   ;; right-edge
                                      vp   ;; parent-edge
                                      subj-rule
                                      :left-ref  subject)))

        (setf (edge-referent vp) unit)))))
       




;;;--------
;;; traces
;;;--------


(deftrace :comma-to-left-of-vp (vp-edge)
  (when *trace-ca*
    (trace-msg "Triggering CA search because of the comma to the left ~
                of~%the stranded VP: ~A" vp-edge)))

(deftrace :upstairs-subject-found (indiv)
  (when *trace-ca*
    (trace-msg "Identified ~A~
                ~%   as the unit that is the subject of the S to the ~
                left" indiv)))

(deftrace :higher-subject-not-found (prior-edge)
  (when *trace-ca*
    (trace-msg "Could not locate the subject in ~A" prior-edge)))


(deftrace :couldnt-find-subject-rule (unit type)
  (when *trace-ca*
    (trace-msg "Could not find the subject rule for ~A~
                ~%  which is the primary type of ~A"
               type unit)))

