;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2013-2015  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "subject relatives"
;;;   Module:  "grammar;rules:syntax:"
;;;  version:  June 2015

;; initiated 6/18/93 v2.3
;; (8/9/07) Well something else can go in this file, but just now this
;; version of the rule for "who" is winning over the richer on just introduced
;; by WH-word-semantics when the interaction is driven by a form rule that's
;; keyed off of the two edges' pronoun label. 
;; 0.1 (1/1/08) Trying to do it using context to determine whether the
;;  function of a specific prounoun is relative or interogative.
;; 0.2 (4/9/13) Throwing that over in favor of a completion rule
;; 0.3 (7/24/13) Moving in the syntax rules for subject relatives
;;  from rules-over-referents for consolidation.
;;  (9/7/14) Moved out the syntax rules to one place. 9/27/14 started
;;  adding variables and code for generic relationships in the style
;;  that Jerry Hobbs uses. 
;; 4/24/2015 maybe-copy modified head before binding variable -- needed to
;;   avoid damaging vocabulary entries
;; 6/2/2015 deal correctly with passives in apply-subject-relative-clause,
;;  as in "a protein which is phosphorylated" vs "a protein which
;;  phosphorylates"
;; 6/4/15 Added convert-clause-to-reduced-relative
;; 6/5/2015 rename method to apply-reduced-relative-clause and add semantic constraints



(in-package :sparser)


;;--- Completion rule treatment (appears not to work ??)

;;--- One-off treatment for subject relatives. 
;; Needs generalization for other wh terms. They are individuals, so commonalities
;; could be done by method dispatch off their shadows. 

;; (setq *trace-completion-hook* t)

(defvar *debug-reduced-relative-creation* nil)

(define-completion-action category::who ;; label
                          :look-for-rc-head
  'who-subject-relative-clause-operation)

(inhibit-completion-when-subsumes category::who)


;;--- support fns

(defun who-subject-relative-clause-operation (wh-edge)
  (let* ((start-pos (pos-edge-starts-at wh-edge))
         (end-pos (pos-edge-ends-at wh-edge))
         (leftward-tt (left-treetop-at/edge start-pos)))
    ;; If there is an NP to our immediate left,
    ;; then respan the wh word with the referent of the NP

    ;; Either a syntactic rule or a form-rule can compose
    ;; the new spanning edge that we create with the VP
    ;; that's to its right.

    (when (word-p leftward-tt)
      ;; //// swallow comma
      (if (eq leftward-tt word::comma)
        (then 
         (setq start-pos (chart-position-before start-pos))
         (setq leftward-tt (left-treetop-at/edge start-pos)))
        (else
         ;; it's unlikely to be a relative clause start
         ;; so punt e.g "(WHO)"
         (return-from who-subject-relative-clause-operation nil))))

    (when (edge-p leftward-tt)
      ;; if it's two words in a row then this simple scheme
      ;; won't work and we should punt in favor of some DA rule
      (when (noun-category? leftward-tt)
        (let ((np-referent (edge-referent leftward-tt))
              (start-ev (pos-starts-here start-pos))
              (end-ev (pos-ends-here end-pos)))
          (let ((edge
                 (make-completed-unary-edge
                  start-ev end-ev
                  nil ;; rule
                  wh-edge ;; daughter
                  category::who ;; category
                  category::wh-pronoun ;; form
                  np-referent))) ;; referent
            (push-debug `(,edge))
            edge))))))



(defun compose-wh-with-vp (wh-referent predicate-referent)
  ;; We've just completed the composition of a wh term and
  ;; the vp (probably labeled as an s) to its right. That
  ;; edge has already been created, and is bound to the
  ;; global in referent from rule.
  ;; We're providing the referent to that edge as our
  ;; return value, and we want to record the subj+verb relation
  ;; and any other relations that make sense given the
  ;; particulars of the predicate. 
  (declare (special *parent-edge-getting-reference*))
  (if
   *subcat-test*
   t
   (let ((parent *parent-edge-getting-reference*)
         ;; renaming to help make things clear
         (subject wh-referent)
         (event predicate-referent))
     (push-debug `(,subject ,event ,parent))
     ;;(lsp-break "compose-wh-with-vp")
     
     (add-subject-relation event subject)
     
     ;; Referent of the whole edge is the referent of the
     ;; predicate, now with a binding to reflect the relationship
     ;; to the subject (... or should it be called something else?)
     event)))


(defun add-subject-relation (event subject)
  ;;/// where should these go?
  (push-debug `(,subject ,event))
  nil)


(defun assimilate-appositive (np appositive) ;; their referent
  ;; The case in point is the relative clause in *iraqi-girl*,
  ;; but this ought to apply to any post-nominal phrase, particularly
  ;; verb-centric reduced relatives. 
  ;; Given that the trace/wh is in subject position, then 
  ;; anything that's established about the event / predicate
  ;; also applies to the np (particularly the event's time
  ;; and location) and the participation in the event per se.
  (push-debug `(,np ,appositive))
  (when (itypep appositive 'event)
    ;; Setup the event relation
    ;; Copy up time, location, and anything else that's
    ;; to the point
    )
  ;; referent of the combination is the np's referent
  np)


;;;-----------------
;;; Really doing it
;;;-----------------
;;/// 10/27/14 This ought to be a method
(defun apply-subject-relative-clause (np-ref vp-ref)
  (let ((var (if (is-passive? (right-edge-for-referent))
               (object-variable vp-ref)
               (subject-variable vp-ref))))
    (cond
     (*subcat-test* (not (null var))) ;; this rule has no semantic restrictions as of now    
     (var
      (setq np-ref (individual-for-ref np-ref))
      
      ;; copy down the upstairs subject
      ;; Should we check if it was already bound to something?
      (setq  vp-ref (bind-dli-variable var np-ref vp-ref))
      (else
        ;; (push-debug `(,np-ref ,vp-ref))
        ;; (break "Can not find subject var in ~a" vp-ref)
        (when nil
          (format t "~&~%No subject variable recorded on ~a~%~%"
                  vp-ref)))
      
      ;; link the rc to the np
      (setq  np-ref (bind-dli-variable 'predication vp-ref np-ref))
      
      ;; referent of the combination is the np
      np-ref))))

(defun apply-reduced-relative-clause (np-ref vp-ref)
  (cond
   (*subcat-test* 
    (subcategorized-variable vp-ref :object np-ref)) ;; this rule has no semantic restrictions as of now
   (t
    (let ((object-var (object-variable vp-ref)))
      (setq np-ref (individual-for-ref np-ref))
      (if object-var
          ;; copy down the upstairs subject
          ;; Should we check if it was already bound to something?
          (setq  vp-ref (bind-dli-variable object-var np-ref vp-ref))
          (else
            ;; (push-debug `(,np-ref ,vp-ref))
            ;; (break "Can not find subject var in ~a" vp-ref)
            (when nil
              (format t "~&~%No object variable recorded on ~a~%~%"
                      vp-ref)))      )
      
      ;; link the rc to the np
      (setq  np-ref (bind-dli-variable 'predication vp-ref np-ref))
      
      ;; referent of the combination is the np
      np-ref))))

(defun convert-clause-to-reduced-relative ()
  ;; called from assimilate-subject-to-vp-ed when it's looked
  ;; at the form of the vp and concluded that the combination
  ;; is a RR rather than an S. 
  (let ((parent (parent-edge-for-referent))
        (np-edge (left-edge-for-referent))
        (vp-edge (right-edge-for-referent)))
    (unless (eq (edge-category parent)
                (edge-category vp-edge))
      ;; This can happen if we're mistakenly getting
      ;; here in a *subcat-test*
      (error "Timing may be wrong with when referent is ~
              computed and edge parts are assembled. Parent S ~
              is not a projection of VP."))
    (when *debug-reduced-relative-creation*
             (format t "~&-------------------~&Creating reduced relative for:~&")
             (print-edge-as-category-and-text-segment np-edge t)
             (print-edge-as-category-and-text-segment vp-edge t)
             (format t "~&-------------------~&"))
    (let* ((np-ref (edge-referent np-edge))
           (vp-ref (edge-referent vp-edge))
           (ref ;; do the bindings
            (apply-reduced-relative-clause np-ref vp-ref)))
      ;; At this point, the parent is set up to be
      ;; an S, with the np and vp as its daughters.
      ;; Impose the characteristics of the np on what
      ;; would have been the S edge.
      (revise-parent-edge
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent ref)
      ref)))

(defun apply-upstairs-np-to-subject-relative (np-ref vp-ref)
  ;; used by refactor-s-for-buried-relative which is tied to
  ;; a debris analysis pattern. Purpose is to compute and 
  ;; return the referent. Pattern is ( s "that" vp )
  (if (itypep vp-ref 'collection)
    (let ((items (value-of 'items vp-ref)))
      (dolist (item-vp-ref items)
        (apply-upstairs-np-to-subject-relative np-ref item-vp-ref)))

    (let ((subject-var (subject-variable vp-ref)))
      (if subject-var
        ;; copy down the upstairs subject
        ;; Should we check if it was already bound to something?
        (setq  vp-ref (bind-dli-variable subject-var np-ref vp-ref))
        (else
         ;; (push-debug `(,np-ref ,vp-ref))
         ;; (break "Can not find subject var in ~a" vp-ref)
         (when nil
           (format t "~&~%No subject variable recorded on ~a~%~%"
                   vp-ref)))      )
      
      ;; link the rc to the np
      (setq  np-ref (bind-dli-variable 'predication vp-ref np-ref))

      ;; referent of the combination is the np
      np-ref)))


;;;----------------------
;;; Hobbsian connectives
;;;----------------------

(define-lambda-variable 'unspecified-adjunct nil
  ;; Event already has slots for time, location, purpose,
  ;; modifiers, and aspect (used by tense). This adds another one
  (category-named 'event))

(defun unspecified-adjunction (e1 e2) ;; head, adjunct
  ;; returns the referent for the pair. 
  ;;//// distribute conjuncts
  ;;/// look up type of e2 in case we missed a rule that
  ;; would have set one of event's established adjuncts
  (let ((r1 (edge-referent e1))
        (r2 (edge-referent e2)))
    ;; Type check r1 that it's actually an event.
    (setq e1 (individual-for-ref e1))
    (setq  r1 (bind-dli-variable 'unspecified-adjunct r2 r1 category::event))
    r1))

(define-lambda-variable 'reduced-relative nil
  (category-named 'kind)) ;;/// change when super-category-for-POS
;; is and the top is rethreaded.


