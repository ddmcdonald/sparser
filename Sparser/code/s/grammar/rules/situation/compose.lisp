;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "compose"
;;;            grammar/rules/situation/
;;;  version:  May 2014

;; Initiated 10/9/13 for the routines that take content from the
;; chart and incorporate it into the situation. Elaborated 10/1013.
;; Revised a bit 12/3/13 on word #2. 1/23/14 Got the head operations
;; running. Differentiated case of referent already being an individual
;; 5/12/14. 

(in-package :sparser)

(defvar *this-is-the-head* nil
  "Set by introduce-next-word when it knows that it's reached
   the last word of the segment. Indicates that we should transfer
   the current peg's contents to the referent we're presently
   incorporating.")

(defgeneric incorporate-referent-into-the-situation (referent rule edge)
  (:documentation "The conduit between the addition of referents
    to the chart and their incorporation into the ongoing situation.
    Called by referent-from-rule after its done everything else 
    it might do, or by referent-from-unary-rule
       N.b. this function is called from the referent computation
    in the tail recursive central control loop, so it has to return
    cleanly (vs. re-enter the loop on its own). Nothing is looking
    at its return value."))

;; Method could be specialized on the type of rule, or if turned into
;; a k-method on the type of referent, though not yet clear what
;; that would buy us. 

(defmethod incorporate-referent-into-the-situation ((referent t) (rule cfr) (edge edge))
  ;; 1st figure out whether we need a new peg
  (let* ((phrase-state (phrasal-state))
         ;; The phrase state is re-initialized to initial at every
         ;; segment boundary by c3-process-segment-and-update-state because
         ;; we expect successive phrases to have different categories.
         (initial? (eq (name phrase-state) :initial-state)) 
         (peg (if initial?
                (setup-a-peg phrase-state)
                (current-peg))))

    ;; set up the appropriate indexical variable given the
    ;; sentence-level state
    (when initial?
      (activate-initial-indexical edge peg))
                
    (tr :incorporate-into-situation referent edge)
    ;; 2d deal with the referent
    (if *this-is-the-head*
      (then ;; transfer everything off the peg
       (tr :c3-phrasal-head referent)
       (incorporate-phrasal-head referent peg edge))
      (else
       ;; add the referent to the peg
       (tr :not-c3-phrasal-head referent)
       (let ((new-state (update-situation-state edge 'phrase)))
         ;; and if necessary include another indexical 
         ;; if we're in a new state
         (unless (eq phrase-state new-state)
           (let ((var (indexical-for-state new-state)))
             (push-debug `(,new-state ,var))
             (add-indexical-to-situation var peg)))
         (add-referent-to-peg referent peg))))))


(defgeneric incorporate-phrasal-head (referent peg edge)
  (:documentation "If the head is a category, then make
    an individual for it. In general this is where we
    transfer from the peg to the (possibly new) individual."))

(defmethod incorporate-phrasal-head ((referent referential-category)
                                     (peg peg) (edge edge))
  (push-debug `(,referent ,peg))
  ;; (setq referent (car *) ongoing-peg (cadr *))
  (let* ((category
          (typecase referent
            (category referent)
            (individual 
             (or (indicated-type-of referent)
                 (itype-of referent)))
            (otherwise
             (error "Unexpected type of referent: ~a~%~a"
                    (type-of referent) referent))))
         ;;/// subsequent reference has to kick in here or before
         (i (make-unindexed-individual category)))
    (push-debug `(,i ,category))
    ;; Does this individual include all the categories required
    ;; by the variables on the peg? If not then the bindings
    ;; will fail so we'd better check here.
    (check-validity-of-individual i peg)

    ;; Make the bindings
    (let ((bindings (transfer-peg-bindings-to-individual peg i)))

      ;; index the individual
      (index/individual i category bindings)

      ;;///// "incorporate it" into the situation latent variables
      ;; and attached procedures and all.

      (push-debug `(,i ,edge))
      ;; Change the referent of the edge so we can pass this
      ;; information up to the poor-man's segment level
      (set-edge-referent edge i)
      i)))

(defmethod incorporate-phrasal-head ((i individual) (peg peg) (edge edge))
  ;; motivating case is "wakil", but also gets "suv"
  (transfer-peg-bindings-to-individual peg i)
  (set-edge-referent edge i)
  i)


;;--- gofer

(defun indicated-type-of (i)
  "Look on the immediate superclass for a 'type-of' binding"
  (when (individual-p i) ;; might be a category
    (let ((c (itype-of i)))
      (value-of 'type-of c))))


;;;-----------------------------------------------------
;;; Add to situation given the composition of two edges
;;;-----------------------------------------------------

(defgeneric incorporate-composition-into-situation
            (left right parent rule edge)
  (:documentation "Called from referent-from-rule after the rule
   has applied, the referent built, any redistributions applied, etc.
   It's the very last thing that happens before the referent is returned
   and the processing of the edge finished. If the value this returns
   is different from the established referent then the returned value
   becomes the referent of the edge."))
; c.f. left-edge-for-referent and the other go-fers

(defmethod incorporate-composition-into-situation ((left-ref t)
                                                   (right-ref t)
                                                   (referent t)
                                                   (rule t) ;; what's the super type of rules?
                                                   (parent-edge edge))
  ;; called from referent-from-rule when *c3* is non-nil

  ;;/// May not need all these parameters
  (push-debug `(,left-ref ,right-ref ,referent ,rule ,parent-edge))
  ;; *edges-from-referent-categories*
  ;; 
  (tr :c3-composing left-ref right-ref)
  (let ((result (compose left-ref right-ref)))
    (unless result
      ;; Happens when we only match on the t,t case of compose
      (push-debug `(,left-ref ,right-ref))
      ;; (setq left-ref (car *) right-ref (cadr *))
      (cerror "Just keep going"
              "No method composes ~a and ~a" left-ref right-ref))
    (tr :c3-composing-result result)
    (or result
        referent)))

                                





