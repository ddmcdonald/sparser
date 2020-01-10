;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2013-2019  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "subject relatives"
;;;   Module:  "grammar;rules:syntax:"
;;;  version:  November 2017

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

(defparameter *debug-reduced-relative-creation* nil)

;;;---------------------------
;;; Completion rule treatment 
;;;---------------------------
 
;; (setq *trace-completion-hook* t)

(when (current-script :fire)
  (define-completion-action category::who ;; label
                           :look-for-rc-head
    'who-subject-relative-clause-operation)
  ;; Keep it from running more than once
  (inhibit-completion-when-subsumes category::who))

(defun who-subject-relative-clause-operation (wh-edge)
  "If there is an NP to our immediate left, then respan 
   the wh word with the referent of the NP."
  (let* ((start-pos (pos-edge-starts-at wh-edge))
         (end-pos (pos-edge-ends-at wh-edge))
         (leftward-tt (left-treetop-at/edge start-pos)))
    (when (word-p leftward-tt)
      (if (eq leftward-tt word::comma)
        (then ;; //// swallow comma
         (setq start-pos (chart-position-before start-pos))
         (setq leftward-tt (left-treetop-at/edge start-pos)))
        (else
         ;; it's unlikely to be the start of a relative clause
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
                  'who-subject-relative-clause-operation ;; rule
                  wh-edge ;; daughter
                  category::who ;; category
                  category::wh-pronoun ;; form
                  np-referent))) ;; referent
            edge))))))


;;;-------------------------
;;; "that" subject relative
;;;-------------------------

(define-lambda-variable 'that-rel nil
  ;; Event already has slots for time, location, purpose,
  ;; modifiers, and aspect (used by tense). This adds another one
  (category-named 'top))

(defun compose-that-with-vp (relative predicate)
  (if *subcat-test*
      (let* ((that-pos (pos-edge-starts-at (left-edge-for-referent)))
             (leftward-tt (left-treetop-at/edge  that-pos)))
        ;; definitely not a relative clause when it is the first word
        (not (eq leftward-tt *source-start*)))
    (bind-dli-variable 'that-rel t predicate)))
;; earlier version of code for compose-wh-with-vp
;; just invoked 'add-subject-relation' on its arguments
;; and returned the predicate argument (which it renamed
;; 'event'). However that function had never gotten any
;; content and was a no-op.
                      

                               


;;----------- appositives

(defun assimilate-appositive (np appositive)
  (declare (special category::event))
  ;; their referent
  ;; The case in point is the relative clause in *iraqi-girl*,
  ;; but this ought to apply to any post-nominal phrase, particularly
  ;; verb-centric reduced relatives. 
  ;; Given that the trace/wh is in subject position, then 
  ;; anything that's established about the event / predicate
  ;; also applies to the np (particularly the event's time
  ;; and location) and the participation in the event per se.
  (push-debug `(,np ,appositive))
  (when (itypep appositive category::event)
    ;; Setup the event relation
    ;; Copy up time, location, and anything else that's
    ;; to the point
    )
  ;; referent of the combination is the np's referent
  np)


;;;-----------------
;;; Really doing it
;;;-----------------

(defun apply-subject-relative-clause (np-ref vp-ref
                                      &aux (left-edge (left-edge-for-referent))
                                        (right-edge (right-edge-for-referent)))
  (declare (special category::have category::subject-relative-clause vp-ref
                    category::wh-question))
  ;; block "histone 2B ... had high levels ..."
  (when (or
         (and (eq (edge-category right-edge) category::have)
              (eq (edge-form right-edge) category::VP+ED))
         (and (eq (edge-rule left-edge) 'sdm-span-segment)
              ;; have absorbed a number as the right hand end of an unparsed segment
              ;; e.g. AKT1 mutation 3.
              (member (cat-name (edge-category
                                 (car (last (edge-constituents left-edge)))))
                      '(year number))))
    (return-from apply-subject-relative-clause nil))

  (setq np-ref (individual-for-ref np-ref))
  (when (and (itypep vp-ref category::wh-question)
             (value-of 'statement vp-ref))
    (setq vp-ref (value-of 'statement vp-ref)))

  (let ((var (cond
               ((itypep vp-ref 'copular-predication)
                (find-variable-for-category 'item 'copular-predication))
               ((is-passive? right-edge)
                (subcategorized-variable vp-ref :object np-ref))
               (t
                (subcategorized-variable vp-ref :subject np-ref)))))
    (cond
      (*subcat-test*
       var)
      (var
       (cond
         ((and (not (and (edge-p right-edge)
                         (eq category::subject-relative-clause
                             (edge-form right-edge))))
               ;; this check is supposed to disambiguate cases where
               ;;  the context wants a clause, and the vp-ref is
               ;;  a vg+ing or vp+ing, not an explicit subject-relative-clause
               ;;  with a "that" or "which"
               (context-needs-clause? np-ref vp-ref))
          (when (itypep vp-ref 'copular-predication)
            (push-debug `(,np-ref ,vp-ref))
            (break "Extend subj rel for copulas"))
          (let ((clause-ref (bind-dli-variable var np-ref vp-ref)))
            ;;(lsp-break "context-needs-clause? true")
            ;;(revise-parent-edge :form category::s)
            ;; make this into an NP whose head is the vp+ing
            clause-ref))
         (t
          ;; copy down the upstairs subject
          (setq vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                        var    ;; var
                        np-ref ;; val
                        vp-ref ;; pred
                        ))
          ;; link the rc to the np
          (setq np-ref (bind-dli-variable 'predication vp-ref np-ref))
          np-ref))))))

(defparameter *break-on-null-ref-in-context-needs-clause* nil)

(defun context-needs-clause? (np-ref vp-ref)
  (declare (special category::APOSTROPHE-S category::parentheses
                    category::do))
  (let ((before (edges-before (left-edge-for-referent))))
    (declare (special before))
    (loop for e in before
          thereis
            (let ((ref (edge-referent e)))
              (when (and (null ref)
                         (not (member (cat-name (edge-category e))
                                      '(apostrophe-s parentheses semicolon)))
                         *break-on-null-ref-in-context-needs-clause*)
                (lsp-break "null ref in context-needs-clause in ~%  ~s~%-- quiet this by ~
                     setting *break-on-null-ref-in-context-needs-clause* to nil"
                       (current-string)))
              (and ref
                   ;; these previous items want a following clause
                   (or (itypep ref '(:or that whether))
                       (eq (edge-category e) category::do) ;; auxiliary --
                       ;; see "Does phosphorylated BRAF being high precede phosphorylated MAP2K1 reaching... level?"
                       (itypep ref '(:or precede follow)))
                   ;;these items would allow an NP to make a clause
                   (not
                    (and *right-edge-into-reference*
                         (loop for e in
                                 (edges-after *right-edge-into-reference*)
                               thereis
                                 (member (form-cat-name e)
                                         '(vg vp vp+passive vp+past)))))
                   ))))) ;; need to generalize
             

(defun apply-object-relative-clause (np-ref vp-ref)
  (declare (special category::have))
  ;; block "histone 2B ... had high levels ..."
  (when (and (eq (edge-category (right-edge-for-referent)) category::have)
	     (eq (edge-form (right-edge-for-referent)) category::VP+ED))
    (return-from apply-object-relative-clause nil))
  (setq np-ref (individual-for-ref np-ref))
  (let ((var (subcategorized-variable vp-ref :object np-ref)))
    (cond
      (*subcat-test* var)
      (var
       ;; copy down the upstairs subject
       ;; Should we check if it was already bound to something?
       (setq vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                     var np-ref vp-ref))
       ;; link the rc to the np
       (setq np-ref (bind-dli-variable 'predication vp-ref np-ref))
       ;; referent of the combination is the np
       np-ref))))

(defun apply-pp-relative-clause (np-ref pp-vp-ref)
  (declare (special category::have np-ref pp-vp-ref))
  (when (and (eq (edge-category (right-edge-for-referent)) category::have)
	     (eq (edge-form (right-edge-for-referent)) category::VP+ED))
    (return-from apply-pp-relative-clause nil))
  (setq np-ref (individual-for-ref np-ref))
  (let* ((prep (value-of 'relative-prep pp-vp-ref))
         (var (find-subcat-var np-ref prep pp-vp-ref)))
    (cond
      (*subcat-test* var)
      (var
       (setq pp-vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                        var np-ref pp-vp-ref))
       (setq np-ref (bind-dli-variable 'predication pp-vp-ref np-ref))
       np-ref))))

(defun apply-where-relative-clause (np-ref vp-ref)
   (setq np-ref (individual-for-ref np-ref))
   (let ((var :where))
    (cond
      (*subcat-test* var)
      (var
       (setq vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                     var np-ref vp-ref))
       (setq np-ref (bind-dli-variable 'predication vp-ref np-ref))
       np-ref))))


(defun apply-when-relative-clause (np-ref vp-ref)
   (setq np-ref (individual-for-ref np-ref))
   (let ((var :when))
    (cond
      (*subcat-test* var)
      (var
       (setq vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                     var np-ref vp-ref))
       (setq np-ref (bind-dli-variable 'predication vp-ref np-ref))
       np-ref))))

(defun apply-why-relative-clause (np-ref vp-ref)
   (setq np-ref (individual-for-ref np-ref))
   (let ((var :why))
	;; break down where, when and why relative clauses, and make them work better with questions
    (cond
      (*subcat-test* var)
      (var
       (setq vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                     var np-ref vp-ref))
       (setq np-ref (bind-dli-variable 'predication vp-ref np-ref))
       np-ref))))


(defun apply-reduced-relative-clause (np-ref vp-ref)
  (cond
   (*subcat-test* 
    (subcategorized-variable vp-ref :object np-ref)) ;; this rule has no semantic restrictions as of now
   (t
    (setq np-ref (individual-for-ref np-ref))
    (let ((object-var (find-subcat-var np-ref :object vp-ref)))
      (if object-var
          ;; copy down the upstairs subject
          ;; Should we check if it was already bound to something?
        (setq vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                      object-var np-ref vp-ref))
          (else
            ;; (push-debug `(,np-ref ,vp-ref))
            ;; (break "Can not find subject var in ~a" vp-ref)
            (when nil
              (format t "~&~%No object variable recorded on ~a~%~%"
                      vp-ref))))
      (setq np-ref (bind-dli-variable 'predication vp-ref np-ref))
      np-ref))))

#+ignore ;; no longer used
(defun convert-clause-to-reduced-relative ()
  ;; called from assimilate-subject-to-vp-ed when it's looked
  ;; at the form of the vp and concluded that the combination
  ;; is a RR rather than an S. 
  (let ((parent (parent-edge-for-referent))
        (np-edge (left-edge-for-referent))
        (vp-edge (right-edge-for-referent)))
    (declare (special np-edge vp-edge))
    (unless (eq (edge-category parent)
                (edge-category vp-edge))
      ;; This can happen if we're mistakenly getting
      ;; here in a *subcat-test*
      #+ignore
      (format t "~%convert-clause-to-reduced-relative fired on ~s ~s~%  in ~s~%"
	      (note-surface-string np-edge)
	      (note-surface-string vp-edge)
	      (current-string))
      #+ignore
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
  (if (collection-p vp-ref)
    (let ((items (value-of 'items vp-ref)))
      (dolist (item-vp-ref items)
        (apply-upstairs-np-to-subject-relative np-ref item-vp-ref)))

    (let ((subject-var (subject-variable vp-ref)))
      (if subject-var
        ;; copy down the upstairs subject
        ;; Should we check if it was already bound to something?
        (setq vp-ref (create-predication-and-edge-by-binding-and-insert-edge
                      subject-var np-ref vp-ref))
        (else
         ;; (push-debug `(,np-ref ,vp-ref))
         ;; (break "Can not find subject var in ~a" vp-ref)
         (when nil
           (format t "~&~%No subject variable recorded on ~a~%~%"
                   vp-ref))))
      
      ;; link the rc to the np
      (setq np-ref (bind-dli-variable 'predication vp-ref np-ref))

      ;; referent of the combination is the np
      np-ref)))


;;;----------------------
;;; Hobbsian connectives
;;;----------------------

#|
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
|#

(define-lambda-variable 'reduced-relative nil
  (category-named 'linguistic))


