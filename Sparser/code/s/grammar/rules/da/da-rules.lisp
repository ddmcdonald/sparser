;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  November 2015

;; initiated 9/18/15 for da patterns and interpreters that had been
;; stashed in biology. Small tweaks and additions of the same kind
;; through 11/22/15

(in-package :sparser)

;;;-------------------------------------------------
;;; debris analysis rules and their interpretations
;;;-------------------------------------------------

(define-debris-analysis-rule pp-comma-s
  :pattern ( pp "," s )
  :action (:function attach-leading-pp-to-clause first third))

(defun attach-leading-pp-to-clause (pp clause)
 (let* ((clause-referent (edge-referent clause))
        (pobj-edge (edge-right-daughter pp))
        (pobj-referent (edge-referent pobj-edge))
        (prep-edge (edge-left-daughter pp))
        (prep-word (edge-left-daughter prep-edge)))
   (let ((var-name
          (or (subcategorized-variable clause-referent
                                       prep-word
                                       pobj-referent)
              'modifier)))
     (setq clause-referent 
           (bind-dli-variable var-name pobj-referent clause-referent))
     (let ((edge (make-binary-edge/explicit-rule-components
                  pp clause
                  :category (edge-category clause)
                  :form (edge-form clause)
                  :rule-name :attach-leading-pp-to-clause
                  :referent clause-referent)))
       (tr :comma-3tt-pattern edge)
       edge))))

(define-debris-analysis-rule s-comma-pp
  :pattern ( s "," pp )
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-following-pp-to-clause third first))

(defun attach-following-pp-to-clause (pp clause)
  (let* ((clause-referent (edge-referent clause))
         (pobj-edge (edge-right-daughter pp))
         (pobj-referent (edge-referent pobj-edge))
         (prep-edge (edge-left-daughter pp))
         (prep-word (edge-left-daughter prep-edge)))
    (let ((var-name
           (subcategorized-variable clause-referent
                                    prep-word
                                    pobj-referent)))
      (when var-name
        (setq clause-referent 
              (bind-dli-variable var-name pobj-referent clause-referent))
        (let ((edge (make-binary-edge/explicit-rule-components
                     clause pp 
                     :category (edge-category clause)
                     :form (edge-form clause)
                     :rule-name :attach-following-pp-to-clause
                     :referent clause-referent)))
          (tr :comma-3tt-pattern edge)
          edge)))))


(define-debris-analysis-rule s-comma-s
  :pattern ( s "," s )
  :action (:function conjoin-two-clauses first third))

(defun conjoin-two-clauses (s1 s2)
  ;; Since they are full clauses (see ERK#3), there's no content
  ;; to copy from one to the other, just the utility of joining them
  (conjoin-two-edges s1 s2 :conjoin-s-and-s :pass 'da-rules))


(define-debris-analysis-rule s-and-vp
  :pattern ( s and vp )
  :action (:function conjoin-clause-and-vp first third))

(define-debris-analysis-rule s-and-vp+passive
  :pattern ( s and vp+passive )
  :action (:function conjoin-clause-and-vp first third))

(defun conjoin-clause-and-vp (s-edge vp-edge)
  ;; get the value of the subject or (perhaps) the subject
  ;; variable of the s. Look up the s variable of the vp
  (let* ((s-subj-var (subject-variable s-edge))
         (vp-subj-var (subject-variable vp-edge))
         (s-ref (edge-referent s-edge))
         (vp-ref (edge-referent vp-edge)))
    (when (and s-ref vp-ref 
               s-subj-var vp-subj-var)
      (let ((subject (value-of s-subj-var s-ref)))
        (when subject
          (setq vp-ref (bind-dli-variable vp-subj-var subject vp-ref)))))
    ;; regardless of whether we could set the subject of the
    ;; vp we should create the edge
    ;; This returns a edge and uses referent-of-two-conjoined-edges 
    ;; to make the referent, which basically stuffs them both
    ;; into a collection.
    ;;//// which is not the right thing at all at the sentence
    ;; level but it's a place to start. The actual relationship
    ;; could be causes or follows, for which we need to understand
    ;; more to get it right.
    (conjoin-two-edges s-edge vp-edge :conjoin-clause-and-vp :pass :conjoin-clause-and-vp)))


(define-debris-analysis-rule s-vp+ing
  :pattern ( s vp+ing )
  :action (:function attach-trailing-participle-to-clause first second))

(define-debris-analysis-rule s-comma-vp+ing
  :pattern ( s "," vp+ing )
  :action (:function attach-trailing-participle-to-clause first third))

(defun attach-trailing-participle-to-clause (s-edge vp-edge)
  ;; The participle (vp+ing) is presumably missing it's subject,
  ;; which we'll take to be the whole clause. 
  ;;//// motivated by second sentence in figure-7 where the participle
  ;; is a conjunction, as is the clause. Semantically that one reads
  ;; as the entire clause being the cause of (each of) the elements of
  ;; the participle. But this should be reconsidered if other cases
  ;; have a different relationship.
  (let ((clause-ref (edge-referent s-edge))        
        (vp-ref (edge-referent vp-edge)))

    ;; Look up the subject variable(s) of the vp / participle and 
    ;; bind it to the whole matrix (clause) referent.
    (cond
     ((itypep vp-ref 'collection)
      ;; distribute this over the conjunction. Need a general way / macro
      ;; for doing this
      (let* ((daughter-edges (list (edge-left-daughter vp-edge)
                                   (edge-right-daughter vp-edge)))
             (daughter-refs (loop for edge in daughter-edges
                              collect (edge-referent edge)))
             (new-items
              (loop for edge in daughter-edges
                as ref in daughter-refs
                collect (unpack-subject-control
                         clause-ref ref edge))))
        ;; now remake the collection
        (let ((new-conjunct 
               (apply #'referent-of-two-conjoined-edges new-items)))
          ;; vp-ref MUST be updated here
          (setq vp-ref new-conjunct)
          (setf (edge-referent vp-edge) vp-ref))))

     (t ;; simple vp
      (unpack-subject-control clause-ref vp-ref vp-edge)))

    ;; Say that the clause is causally-related-to the vp.
    ;; Which is pretty weak, but it's already in place
    ;; THIS NEXT CALL PRODUCES NIL WHEN CLAUSE-REF IS A COLLECTION (from a conjunction of clauses)
    ;; as in 
    ;;"The human genome encodes at least 10 proteins that bind RAS and activate its intrinsic GTPase activity, 
    ;;  resulting in the formation of inactive RAS:GDP and attenuating RAS signaling (reviewed in King et al, 2013)."
    (setq clause-ref (add-adjunctive-clause-to-s clause-ref vp-ref))
    ;; we really need to create a new "category::causally-related" and fill in
    ;; two variables, cause and effect, and then use that as the :referent below
    ;; 
    (let ((edge (make-binary-edge/explicit-rule-components
                 s-edge vp-edge
                 :category (edge-category s-edge)
                 :form (edge-form s-edge)
                 :rule-name :attach-trailing-participle-to-clause
                 :referent clause-ref)))
      edge)))

(define-debris-analysis-rule s-comma-np
  :pattern ( s "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-appositive-np-under-s
           first second third))

(defun attach-appositive-np-under-s (s-edge comma-edge np-edge)
  (push-debug `(,s-edge ,comma-edge ,np-edge))
  ;; (setq s-edge (car *) comma-edge (cadr *) np-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun 
  (let ((right-fringe-of-s ;; ordered bottom to top
         (all-edges-on (pos-ends-here (pos-edge-ends-at s-edge))))
        target )
    (declare (special right-fringe-of-s))
    (loop for edge in right-fringe-of-s
      ;; replace eq with acceptable-appositive?
      when (eq (edge-form edge) category::proper-noun)
      do (setq target edge))
    (cond
     (target
      (let ((new-edge
             (make-edge-over-long-span 
              (pos-edge-starts-at target)
              (pos-edge-ends-at np-edge)
              (edge-category target)
              :form (edge-form target)
              :rule 'attach-appositive-np-under-s
              :referent (edge-referent target) ;;!!!!
              :constituents `(,target ,comma-edge ,np-edge))))
        (tuck-new-edge-under-already-knit
         target ;; subsumed
         new-edge
         s-edge
         :right)
        new-edge))
     (t 
      ;;(lsp-break "attach-appositive-np-under-s fails")
      nil))))


(defun attach-pp-to-np-under-s (s-edge comma-edge pp-edge)
  (declare (special s-edge comma-edge pp-edge))
  (push-debug `(,s-edge ,comma-edge ,pp-edge))
  ;;(setq s-edge (car *) comma-edge (cadr *) pp-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun 
  (let ((right-fringe-of-s ;; ordered bottom to top
         (all-edges-on (pos-ends-here (pos-edge-ends-at s-edge))))
        target )
    (declare (special right-fringe-of-s))
    (loop for edge in right-fringe-of-s
      ;; replace eq with acceptable-appositive?
      when (member (edge-form edge) '(category::NP category::proper-noun))
      do (setq target edge))
    (lsp-break "attach-pp-to-np-under-s")
    (cond
     (target
      (let ((new-edge
             (make-edge-over-long-span 
              (pos-edge-starts-at target)
              (pos-edge-ends-at pp-edge)
              (edge-category target)
              :form (edge-form target)
              :rule 'attach-pp-to-np-under-s
              :referent (edge-referent target) ;;!!!!
              :constituents `(,target ,comma-edge ,pp-edge))))
        (tuck-new-edge-under-already-knit
         target ;; subsumed
         new-edge
         s-edge
         :right)
        new-edge))
     (t 
      ;;(lsp-break "attach-appositive-np-under-s fails")
      nil))))



(define-debris-analysis-rule proper-noun-comma-vg+ed-comma
  :pattern (proper-noun "," vp+ed ",")
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           attach-non-restrictive-relative-clause first second third fourth))

(defun attach-non-restrictive-relative-clause (np intial-comma vp+ed final-comma)
  (declare (special category::np))
  (let* ((np-ref (edge-referent np))
         (vp-ref (edge-referent vp+ed))
         (modified-vp-ref (unpack-subject-control np-ref vp-ref vp+ed))
         (modified-np-ref (bind-dli-variable 'modifier modified-vp-ref np-ref)))
    (setf (edge-referent np) modified-np-ref)
    (let* ((category-to-use (edge-category np))
           (form-to-use category::np)
           (edge (make-edge-over-long-span
                  (pos-edge-starts-at np)
                  (pos-edge-ends-at final-comma)
                  category-to-use
                  :form form-to-use
                  :referent modified-np-ref
                  :rule 'attach-non-restrictive-relative-clause
                  :constituents `(,np ,intial-comma ,vp+ed ,final-comma))))
      edge)))



(define-debris-analysis-rule comma-adverb-comma
  :pattern ( "," adverb "," )
  :action (:function respan-edge-around-one-word second first third))

(defun respan-edge-around-one-word (word-edge left-term right-term)
  (let ((word-category (edge-category word-edge))
        (word-form (edge-form word-edge))
        (word-referent (edge-referent word-edge))
        (new-start-pos (chart-position-before (pos-edge-starts-at word-edge)))
        (new-end-pos (chart-position-after (pos-edge-ends-at word-edge))))
    (let ((edge (make-completed-unary-edge
                 ;; We're ignoring the commas in the edge structure
                 ;;/// this is usually an interjection, how could we
                 ;; indicate that
                 (pos-starts-here new-start-pos) ;; the edge vector
                 (pos-ends-here new-end-pos)
                 :respan-edge-around-one-word ;; rule
                 word-edge ;; daughter
                 word-category 
                 word-form
                 word-referent)))
      (setf (edge-constituents edge) `(,left-term ,word-edge ,right-term))
      ;; (push-debug `(,edge)) (break "look at edge")
      edge)))




(define-category event-relation
  :specializes abstract
  :binds ((relation)
          (event)
          (subordinated-event))
  :documentation "This picks up phrases like 'Thus MEK phosphorylates ERK...'
    though the head decides what to do with it based on the
    composition. Same design as pps."
  )

(mark-as-form-category category::event-relation)

(define-debris-analysis-rule subordinate-comma-clause
  :pattern (subordinate-clause "," s )
  :action (:function create-event-relation third first first third))

(define-debris-analysis-rule clause-and-subordinate
  :pattern ( s and subordinate-clause  )
  :action (:function create-event-relation  first third first third))

(define-debris-analysis-rule clause-comma-subordinate
  :pattern ( s "," subordinate-clause  )
  :action (:function create-event-relation  first third first third))



(defun create-event-relation (event-edge sub-clause-edge first last)
  (let* ((conj (value-of 'conj (edge-referent sub-clause-edge)))
         (event (edge-referent event-edge))
         (sub-event (value-of 'comp (edge-referent sub-clause-edge)))
         (new-start-pos (pos-edge-starts-at first))
         (new-end-pos (pos-edge-ends-at last)))
    (make-edge-over-long-span
     new-start-pos ;; the edge vector
     new-end-pos
     category::event-relation
     :form category::event-relation
     :referent (make-event-relation conj event sub-event)
     :rule 'create-event-relation
     :constituents `(,first ,last))))


(defun make-event-relation (conj event sub-event)
  (make-non-dli-individual
   category::event-relation
   `((relation ,conj) (event ,event) (subordinated-event ,sub-event))))


;;;--------------------
;;; Common subroutines
;;;--------------------

(defun unpack-subject-control (subject vp vp-edge)
  (let* ((downstairs-subj-var (subject-variable vp))
         (new-vp-ref (bind-dli-variable
                      downstairs-subj-var subject vp)))
    (setf (edge-referent vp-edge) new-vp-ref)
    new-vp-ref))
