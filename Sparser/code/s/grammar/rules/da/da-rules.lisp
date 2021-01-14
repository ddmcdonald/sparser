;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  January 2020

;; initiated 9/18/15 for da patterns and interpreters that had been
;; stashed in biology. Small tweaks and additions of the same kind
;; through 11/22/15

(in-package :sparser)

(defvar *show-failed-fronted-pp-attachment* nil)
(defvar *show-failed-find-base-np-vp-edge* nil)

(defparameter *warn-attach-leading-pp-to-clause* nil)
(defparameter *warn-on-cant-find-corresponding-clauses* nil)
(defparameter *show-finding-corresponding-clauses* nil)
(defparameter *conjoined-s-failures* nil)


(defstruct edge-spec
  ;; a compact encoding of edge construction and handling
  ;; decoded by standardized-apply-da-function-action the master
  ;; action handler
  category form referent target dominating direction preposed)

(defun display-edge-spec (spec &optional (stream *standard-output*))
  (format stream "~&edge-spec~
                  ~%  category: ~a~
                  ~%  form: ~a~
                  ~%  referent: ~a~
                  ~%  target: ~a~
                  ~%  direction: ~a~
                  ~%  preposed: ~a~%"
          (edge-spec-category spec)
          (edge-spec-form spec)
          (edge-spec-referent spec)
          (edge-spec-target spec)
          (edge-spec-direction spec)
          (edge-spec-preposed spec)))

;;;-------------------------------------------------
;;; debris analysis rules and their interpretations
;;;-------------------------------------------------

;;;----------------------
;;; rules centering on S
;;;----------------------

(define-debris-analysis-rule attach-to-comp-comma-to-s
    :pattern (to-comp "," s)
    :action (:function attach-to-comp-comma-to-s  first second third))

(defun attach-to-comp-comma-to-s (to-comp-edge comma-edge s-edge)
  (declare (ignore comma-edge))
  (let* ((complement  ;;(value-of 'comp (edge-referent to-comp-edge))
	   (edge-referent to-comp-edge))
	 (to-comp-var ;; e.g. for "acts to dampen..."
	  (or
	    (subcategorized-variable (edge-referent s-edge) :to-comp complement)
	    'purpose)))
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (bind-dli-variable to-comp-var complement (edge-referent s-edge)))))


(define-debris-analysis-rule attach-leading-pp-to-clause
  :pattern ( pp "," s )
  :action (:function attach-leading-pp-to-clause first second third))

(define-debris-analysis-rule attach-leading-pp-no-comma-to-clause
  :pattern ( pp  s )
  :action (:function attach-leading-pp-no-comma-to-clause first second))

#| This rule exposes a bug in threading a new pattern into the
   trie whether you evaluate it incrementally or as part of
   a complete reload.
     Entry point is thread-pattern-into-existing-trie, which looks
   for the point where the trie diverges, then the make-arc routine
   gets fed a nil. FWIW, the rule that the extend routine had in
   its hand at that  point was s-with-np-conj-pp
(define-debris-analysis-rule attach-trailing-pp-to-clause
  :pattern ( s pp )
  :action (:function attach-leading-pp-no-comma-to-clause second first))  |#

(defun attach-leading-pp-no-comma-to-clause (pp clause)
  (attach-leading-pp-to-clause pp nil clause))

(defun attach-leading-pp-to-clause (pp comma clause)
  (declare (ignore comma) (special *debug-questions*))
  (when (eq (edge-rule pp) 'elevate-spanning-edge-over-paired-punctuation)
    ;; parenthetical PP -- ignore for now
    (return-from attach-leading-pp-to-clause nil))
  (let* ((clause-referent (edge-referent clause))
	 (pobj-edge (edge-right-daughter pp))
	 (pobj-referent
          (if (eq pobj-edge :long-span) ;; conjunction of PPs
              nil
              (edge-referent pobj-edge)))
	 (prep-edge (edge-left-daughter pp))
	 (prep-word (edge-left-daughter prep-edge)))

    (let (*edge-spec*)
      (cond
        ((and
          ;; to handle DEC 33
          ;; "In A375 cells, endogenous C-RAF:B-RAF heterodimers were measurable and inducible
          ;;  following treatment with PLX4720 (Supplementary Fig. 9)."
          ;; this trick does NOT work for PP copular-predications
          (copular-predication-clause? clause clause-referent)) ;;(break "1st")
         (setq *edge-spec*
               (make-edge-spec
                :category (edge-category clause)
                :form (edge-form clause)
                :referent (bind-dli-variable 'circumstance
                                             pobj-referent clause-referent)
                :target clause
                :direction :left
                :preposed pp)))
         
        ((null pobj-referent) ;; punt at the moment for conjoined PPs
         nil)
      
        ((is-basic-collection? clause-referent)
         ;;(break "2")
         (setq *edge-spec*
               (or
                (distribute-pp-to-conjoined-clauses pp clause prep-word
                                                    pobj-referent
                                                    clause-referent
                                                    'attach-leading-pp-to-clause)
                (distribute-pp-to-first-conjoined-clause
                 pp clause
                 'attach-leading-pp-to-clause))))
        (t
         (let ((var-name
                (or (subcategorized-variable clause-referent
                                             prep-word pobj-referent)
                    (failed-pp-attachment pp clause-referent))) ) ;;(break "3")
           (if var-name
             (then
               (setq *edge-spec*
                     (make-edge-spec
                      :category (edge-category clause)
                      :form (edge-form clause)
                      :referent (bind-dli-variable var-name
                                                   pobj-referent clause-referent)
                      :target clause
                      :direction :left
                      :preposed pp))
               (tr :comma-3tt-pattern *edge-spec*))
             (else
               ;; If the span of the two constitents is the entire
               ;; sentence, then this pp should be interpreted as applying
               ;; to the entire S rather than be subcategorized as its
               ;; head. /// but we need a representation for that
               ;; so until we get one we'll just fail.
               (when *debug-questions*
                 (format t "~&~%PP + S -- likely sentential adjunct~%~%"))
               nil)))))
      
      *edge-spec*)))

(defun distribute-pp-to-first-conjoined-clause (pp clause rule-name)
  (let* ((left-clause (edge-left-daughter clause))
	 (pobj-edge (edge-right-daughter pp))
	 (prep-edge (edge-left-daughter pp))
	 (pobj-referent (edge-referent pobj-edge))
	 (prep-word (edge-left-daughter prep-edge))
	 (var-name
	  (or
	   (subcategorized-variable (edge-referent left-clause) prep-word pobj-referent)
	   (failed-pp-attachment pp left-clause)))
	 new-left new-items new-interp new-edge)
    (when var-name
      (setq new-left
            (bind-dli-variable var-name pobj-referent (edge-referent left-clause)))
      ;;(break "5")
      (make-edge-spec
       :category (edge-category left-clause)
       :form (edge-form left-clause)
       :referent new-left
       :target left-clause
       :dominating clause
       :direction :left
       :preposed pp))))

(defun distribute-pp-to-conjoined-clauses (pp clause prep-word pobj-referent
                                           clause-referent rule-name)
  (let* ((clauses (value-of 'items clause-referent))
         (clause-edges
          (loop for e in
                  (if (is-basic-collection? (edge-referent clause))
                      (edges-under clause)
                      (edges-under (edge-right-daughter clause)))
                  ;; get rid of edges for "and", etc.
                when (and (edge-p e)
                          (member (edge-referent e) clauses))
                  collect e))
	 (vars (loop for c in clauses
		  collect
		    (or (subcategorized-variable c prep-word pobj-referent)
                        ;; otherwise, not all the clauses will accept the PP
                        (return-from distribute-pp-to-conjoined-clauses nil))))
	 (new-interp
	  (make-an-individual
	   'collection
	   :items
	   (loop for c in clauses
                 as var-name in vars
                 as c-clause in clause-edges                   
	      collect ;; create a mention-history for the new interpretation
		(let* ((new-c (bind-dli-variable var-name pobj-referent c))
		       (c-mention
                        (when (and
                               (eq (edge-referent c-clause)  c)
                               (typep (edge-mention c-clause) 'discourse-mention))
                          (edge-mention c-clause))))
		  (if c-mention
                      (when *show-finding-corresponding-clauses*
                        (format t "~%found corresponding clause ~s for ~s distribute-pp-to-conjoined-clauses~%"
                                c-clause c))
                      (when *warn-on-cant-find-corresponding-clauses*
                        (warn "~%can't find corresponding clause ~s for ~s distribute-pp-to-conjoined-clauses~%"
                              c-clause c)))
                  ;;(lsp-break "dpt")
                  ;; here we smash the mention in the old clause edge so that it has the new interpretation
                  (update-mention-referent c-mention new-c t)
		  new-c))
	   :number (length clauses)
	   :type (itype-of (car clauses))))
	 edge)
    (declare (special clauses clause-edges)) ;;(break "conjoined-clauses")
    (setq edge (make-edge-spec
                :category (edge-category clause)
		:form (edge-form clause)
		:referent new-interp))
    (tr :comma-3tt-pattern edge)
    edge))



(define-debris-analysis-rule oblique-s-subject-to-vp
  :pattern (s vp)
  ;; fails if the subject isn't oblique
  :action (:function attach-oblique-s-as-subject-to-vp first second))

(defun attach-oblique-s-as-subject-to-vp (s vp) ;; dynamic model #43,44
  (let ((verb-edge (find-verb s)))
    ;; sort of a gerund detector ///abstract to syntax/category-predicates
    (when verb-edge
      (when (memq (form-cat-name verb-edge)
                  '(vg+ing vp+ing))
        (let* ((var (subject-variable vp)))
          (if (null var)
              nil
              (let ((i (bind-variable var (edge-referent s) (edge-referent vp))))
                (make-edge-spec
                 :category (edge-category vp)
                 :form (edge-form s)
                 :referent i))))))))


(define-debris-analysis-rule attach-comma-pp-following-clause
  :pattern ( s "," pp )
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-comma-pp-following-clause third first))

(defun attach-comma-pp-following-clause (clause pp)
  (attach-pp-following-clause clause pp
                              (pos-edge-starts-at clause)
                              (pos-edge-ends-at pp)))


(define-debris-analysis-rule attach-comma-pp-comma-following-clause
  :pattern ( s "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-comma-pp-comma-following-clause third first fourth))

(defun attach-comma-pp-comma-following-clause (clause pp comma-2)
  (declare (ignore comma-2))
  (attach-pp-following-clause clause pp
                              (pos-edge-starts-at clause)
                              (pos-edge-ends-at comma-2)))

(defun attach-pp-following-clause (clause pp start end)
  (let* ((pobj-edge (edge-right-daughter pp))
         (pobj-referent
          ;; can have conjunction of PPs and get a :long-span here
          ;; e.g. "with menadione or with both compounds"
          ;;  punt for now
          (when (edge-p pobj-edge)
            (edge-referent pobj-edge)))
         (prep-edge (edge-left-daughter pp))
         (prep-word (edge-left-daughter prep-edge)))
    (when pobj-referent
      (let ((var-name
             (subcategorized-variable (edge-referent clause)
                                      prep-word
                                      pobj-referent)))
        (when var-name
          (let ((edge-spec (make-edge-spec
                            :category (edge-category clause)
                            :form (edge-form clause)
                            :referent (bind-dli-variable var-name pobj-referent (edge-referent clause)))))
            (tr :comma-3tt-pattern edge-spec)
            edge-spec))))))


(define-debris-analysis-rule interpret-s-comma-s
  :pattern ( s "," s )
  :action (:function interpret-s-comma-s first third))

(defun interpret-s-comma-s (s1 s2)
  (make-edge-spec
   :category (edge-category s1)
   :form (edge-form s1)
   :referent (referent-of-two-conjoined-edges s1 s2)))


(define-debris-analysis-rule conjoin-clause-and-vp
  :pattern ( s conjunction vp )
  :action (:function conjoin-clause-and-vp first second third))

(define-debris-analysis-rule conjoin-transitive-clause-without-object-and-vp
  :pattern ( transitive-clause-without-object conjunction vp )
  :action (:function conjoin-clause-and-vp first second third))

;; this should see if there is a buried VP on the right fringe and do a conjunction there
;; e.g.
#+ignore
"This state is considered to be a short-lived transition state intermediate 
     in vivo [36] based on the relatively high GTP:GDP ratio in vivo [37], 
     the ability of GTP to dissociate the GEF-Ras complex in vitro [31], 
     and the assumption that there are no proteins in vivo that might stabilize 
     nucleotide-free Ras and prevent GTP loading. "

(defun conjoin-clause-and-vp (s-edge  and vp-edge)
  (conjoin-clause-vp s-edge vp-edge))

(defun conjoin-clause-vp (s-edge vp-edge)
  ;; get the value of the subject or (perhaps) the subject
  ;; variable of the s. Look up the s variable of the vp
  (declare (optimize (speed 1)(debug 3)))
  (unless s-edge
    ;; This occurred when s-and-vp was run middle-out from
    ;; the conjunction. The constituent to the left of the
    ;; "and" was not an 's' so we should never have gotten
    ;; here. /// Need to take a serious look at that
    ;; matching code
    (throw :no-da-pattern-matched :trie-exhausted))
  (let* ((s-subject (get-subject-from-s-edge s-edge))
         (s-ref (edge-referent s-edge))
         (vp-ref (edge-referent vp-edge)))
    (when (and s-ref vp-ref s-subject)
      (let ((vp-var
             (if (is-passive? vp-edge)
                 (subcategorized-variable vp-ref :object s-subject)
                 (subcategorized-variable vp-ref :subject s-subject))))
        (cond (vp-var
               (setq vp-ref (bind-dli-variable vp-var s-subject vp-ref))
               (set-edge-referent vp-edge vp-ref))
              (t (push (format nil "couldnt attach S subject ~s as subject of conjoined vp ~s in ~s~%"
                               s-subject
                               vp-ref
                               (current-string))
                       *conjoined-s-failures*)))))
    ;; regardless of whether we could set the subject of the
    ;; vp we should create the edge
    ;; This returns a edge and uses referent-of-two-conjoined-edges 
    ;; to make the referent, which basically stuffs them both
    ;; into a collection.
    ;;//// which is not the right thing at all at the sentence
    ;; level but it's a place to start. The actual relationship
    ;; could be causes or follows, for which we need to understand
    ;; more to get it right.
    ;;WAS (conjoin-two-edges s-edge vp-edge :conjoin-clause-and-vp :pass :conjoin-clause-and-vp)
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (referent-of-two-conjoined-edges s-edge vp-edge))))


(define-debris-analysis-rule conjoin-clause-and-vp+passive
  :pattern ( s conjunction vp+passive )
  :action (:function conjoin-clause-and-vp+passive first second third))

(define-debris-analysis-rule conjoin-clause-vp+passive
  :pattern ( s vp+passive )
  :action (:function conjoin-clause-vp first second))

(define-debris-analysis-rule conjoin-clause-and-vg+passive
  :pattern ( s conjunction vg+passive )
  :action (:function conjoin-clause-and-vp+passive first second third))

(define-debris-analysis-rule conjoin-trans-clause-without-object-and-vg+passive
  :pattern ( transitive-clause-without-object conjunction vg+passive )
  :action (:function conjoin-clause-and-vp+passive first second third))

(defun conjoin-clause-and-vp+passive (s-edge  and vp-edge)
  (conjoin-clause-and-vp s-edge and vp-edge))


(define-debris-analysis-rule attach-trailing-participle-to-clause-base
  :pattern ( s vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-participle-to-vp
  :pattern ( vp vp+ing ) ;; for cases like "Please find pathways involving SRF"
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-participle-to-clause-with-comma
  :pattern ( s "," vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-clause-with-conjunction-and
  :pattern ( s conjunction vp+ing )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-transitive-clause-without-object-with-conjunction-and
  :pattern (transitive-clause-without-object conjunction vp+ing )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+ed-to-clause-with-conjunction-and
  :pattern ( s conjunction vp+ed )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+past-to-clause-with-conjunction-and
  :pattern ( s conjunction vp+past )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))

(define-debris-analysis-rule attach-trailing-vp+past-to-transitive-clause-without-object-with-conjunction-and
  :pattern ( transitive-clause-without-object conjunction vp+past )
  :action (:function attach-trailing-participle-to-clause-with-conjunction first second third))




;;; subordinate clauses

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-clause-base
  :pattern ( subordinate-clause vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-s-base
  :pattern ( subordinate-s vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object first second))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-clause-with-conjunction-comma
  :pattern ( subordinate-clause "," vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-s-with-conjunction-comma
  :pattern ( subordinate-s "," vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-clause-with-conjunction-and
  :pattern ( subordinate-clause and vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+ing-to-subordinate-s-with-conjunction-and
  :pattern ( subordinate-s and vp+ing )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-clause-with-conjunction
  :pattern ( subordinate-clause and vp+ed )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-s-with-conjunction-and
  :pattern ( subordinate-s and vp+ed )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+past-to-subordinate-clause-with-conjunction-and
  :pattern ( subordinate-clause and vp+past )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-trailing-vp+past-to-subordinate-s-with-conjunction-and
  :pattern ( subordinate-s and vp+past )
  :action (:function attach-trailing-participle-to-clause-or-object-with-comma first third))

(define-debris-analysis-rule attach-preceding-participle-with-comma-to-clause
  :pattern ( vp+ing "," s )
  :action (:function attach-preceding-participle-with-comma-to-clause first second third))

(define-debris-analysis-rule attach-preceding-participle-with-comma-to-subordinate-clause
  :pattern ( vp+ing "," subordinate-clause )
  :action (:function attach-preceding-participle-with-comma-to-clause first second third))

(define-debris-analysis-rule attach-preceding-participle-with-comma-to-subordinate-s
  :pattern ( vp+ing "," subordinate-s )
  :action (:function attach-preceding-participle-with-comma-to-clause first second third))

(defun attach-preceding-participle-with-comma-to-clause (vp+ing-edge comma-edge s-edge)
  (declare (ignore comma-edge))
  (let* ((s-subj-var (subject-variable s-edge))
         (vp-subj-var (subject-variable vp+ing-edge))
         (s-ref (edge-referent s-edge))
         (vp+ing-ref (edge-referent vp+ing-edge)))
    (when (and s-ref vp+ing-ref s-subj-var vp-subj-var)
      (let ((subject (value-of s-subj-var s-ref)))
        (when subject
          (setq vp+ing-ref (bind-dli-variable vp-subj-var subject vp+ing-ref))
          ;; have just created a new interpretation of an existing edge -- make a mention
          (update-edge-mention-referent vp+ing-edge vp+ing-ref)
          (make-edge-spec
           :category (edge-category s-edge)
           :form (edge-form s-edge)
           :referent (referent-of-two-conjoined-referents 
                      vp+ing-ref
                      (edge-referent s-edge))))))))




(define-debris-analysis-rule attach-comma-appositive-np-under-s
  :pattern ( s "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-pp
  :pattern ( pp "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+ing
  :pattern ( vp+ing "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+ed
  :pattern ( vp+ed "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+past
  :pattern ( vp+past "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp
  :pattern ( vp "," np)
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-proper-noun-under-s
  :pattern ( s "," proper-noun)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-proper-noun-under-s
           first second third))

;; via the tyrosine phosphorylation of an adapter protein, p130 CAS (XREF_BIBR).
(define-debris-analysis-rule attach-comma-appositive-proper-noun-under-pp
  :pattern ( pp "," proper-noun)
  :action (:function
           attach-comma-appositive-proper-noun-under-s
           first second third))


(defun attach-comma-appositive-np-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))

(defun attach-comma-appositive-proper-noun-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))

(defun attach-comma-appositive-np-comma-under-s (s comma-1 np comma-2)
  (attach-appositive-np-under-s s comma-1 np (pos-edge-ends-at comma-2)))

(defun attach-appositive-np-under-s (s-edge comma-edge np-edge end-pos)
  ;; Look up the right fridge of the s for a proper-noun
  (when (and (word-p (pos-terminal end-pos))
             (member (pname (pos-terminal end-pos))
                     '("," "." ";" "?")
                     :test #'equal))    
    (let ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?)))
      (when target
        (make-edge-spec 
         :category (edge-category target)
         :form (edge-form target)
         :referent (bind-dli-variable 'appositive-description (edge-referent np-edge)
                                      (edge-referent target))
         :target target
         :direction :right)))))



;;; PP rules

(define-debris-analysis-rule attach-appositive-comma-np-comma-under-pp
  :pattern ( pp "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
	   attach-appositive-comma-np-comma-under-pp
           first second third fourth))

(defun attach-appositive-comma-np-comma-under-pp (pp-edge comma-1 np-edge comma-2)
  (attach-appositive-comma-np-endpos-under-pp pp-edge comma-1 np-edge (pos-edge-ends-at comma-2)))

(defun attach-appositive-comma-np-endpos-under-pp (pp-edge comma-edge np-edge end-pos)
  ;; Look up the right fridge of the s for a proper-noun
  (unless
      ;; test if this is more likely to be a conjunction.
      ;;  There is an error condition when conjunctions are treated like
      ;;  appositives that causes an circular edge structure -- need to get to the bottom of
      ;;  it, but for now we are avoiding the problem
      (loop for e in (ev-edges (pos-starts-here end-pos))
         thereis (and (edge-p e) (eq (cat-name (edge-category e)) 'and)))
    
    (let ((target (find-target-satisfying (right-fringe-of pp-edge) #'np-target?)))
      (when target
        (make-edge-spec 
         :category (edge-category target)
         :form (edge-form target)
         :referent (bind-dli-variable 'appositive-description (edge-referent np-edge)
                                      (edge-referent target))
         :target target
         :direction :right)))))


(define-debris-analysis-rule attach-appositive-comma-proper-noun-under-pp
  :pattern ( pp "," proper-noun ",")
  :action (:function
	   attach-appositive-comma-proper-noun-under-pp
           first second third fourth))

(defun attach-appositive-comma-proper-noun-under-pp (pp comma-1 proper-noun comma-2)
  (attach-appositive-comma-np-endpos-under-pp pp comma-1 proper-noun (pos-edge-ends-at comma-2)))




;;------------------------- S -----------------------
(define-debris-analysis-rule s-comma-subj-relative
    :pattern (s "," subject-relative-clause)
    :action (:function s-comma-subj-relative first second third))

(define-debris-analysis-rule vp-comma-subj-relative
    :pattern (vp "," subject-relative-clause)
    :action (:function s-comma-subj-relative first second third))

(define-debris-analysis-rule pp-comma-subj-relative
    :pattern (pp "," subject-relative-clause)
    :action (:function s-comma-subj-relative first second third))

(defun s-comma-subj-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge)
           (optimize (debug 3)(speed 1)))
  (when (edge-referent srel-edge) ;; can be null as in "which is consistent "
    (let* ((s (edge-referent s-edge))
           (s-rel (edge-referent srel-edge)) ;; can be null?!
           (target (when (and s-rel
                              (not (is-basic-collection? s-rel)))
                     (find-target-satisfying
                      (right-fringe-of s-edge)
                      #'(lambda(x)
                          (and (np-target? x)
                               (subcategorized-variable
                                s-rel :subject (edge-referent x)))))))
           ;; update-edge-as-lambda-predicate now returns NIL if there is
           ;;  no available binding for the variable (s-var or t-var) on srel-edge
           (t-pred (when target
                     (update-edge-as-lambda-predicate srel-edge target)))
           (s-pred (when (and target
                              (null t-pred)
                              (not (eq (form-cat-name s-edge) 'pp)))
                     (update-edge-as-lambda-predicate srel-edge s))))
      (cond (t-pred
             (make-edge-spec 
              :category (edge-category target)
              :form (edge-form target)
              :referent (bind-dli-variable :predication t-pred (edge-referent target))
              :target target
              :direction :right))
            (s-pred
             (make-edge-spec 
              :category (edge-category s-edge)
              :form (edge-form s-edge)
              :referent (bind-dli-variable 'predication s-pred s)
              ))))))


(define-debris-analysis-rule s-comma-obj-relative
    :pattern (s "," object-relative-clause)
    :action (:function s-comma-obj-relative first second third))

(define-debris-analysis-rule vp-comma-obj-relative
    :pattern (vp "," object-relative-clause)
    :action (:function s-comma-obj-relative first second third))

(define-debris-analysis-rule pp-comma-obj-relative
    :pattern (pp "," object-relative-clause)
    :action (:function s-comma-obj-relative first second third))

(defun s-comma-obj-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge)
           (optimize (debug 3)(speed 1)))
  (when (edge-referent srel-edge)
    (let* ((s (edge-referent s-edge))
           (s-rel (edge-referent srel-edge))
           (target (when (and s-rel
                              (not (is-basic-collection? s-rel)))
                     (find-target-satisfying
                      (right-fringe-of s-edge)
                      #'(lambda(x)
                          (and (np-target? x)
                               (subcategorized-variable s-rel :object (edge-referent x)))))))
           ;; update-edge-as-lambda-predicate now returns NIL if there is
           ;;  no available binding for the variable (s-var or t-var) on srel-edge
           (t-pred (when target
                     (update-edge-as-lambda-predicate srel-edge target)))
           (s-pred (when (and target
                              (null t-pred)
                              (not (eq (form-cat-name s-edge) 'pp)))
                     (update-edge-as-lambda-predicate srel-edge s))))
      (cond (t-pred
             (make-edge-spec 
              :category (edge-category target)
              :form (edge-form target)
              :referent (bind-dli-variable :predication t-pred (edge-referent target))
              :target target
              :direction :right))
            (s-pred
             (make-edge-spec 
              :category (edge-category s-edge)
              :form (edge-form s-edge)
              :referent (bind-dli-variable 'predication s-pred s)
              ))))))


(define-debris-analysis-rule s-comma-where-relative
    :pattern (s "," where-relative-clause)
    :action (:function s-comma-where-relative first second third))

(defun s-comma-where-relative (s comma where-relative)
  (s-comma-where-when-relative s comma where-relative))


(define-debris-analysis-rule s-comma-when-relative
    :pattern (s "," when-relative-clause)
    :action (:function s-comma-when-relative first second third))

(defun s-comma-when-relative (s comma when-relative)
  (s-comma-where-when-relative s comma when-relative))

(defun s-comma-where-when-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((s (edge-referent s-edge))
         (s-subject (get-subject-from-s-edge s-edge))
         (s-pred (when s-subject
                   (update-edge-as-lambda-predicate srel-edge s-subject))))
    (cond (s-pred
           (make-edge-spec 
            :category (edge-category s-edge)
            :form (edge-form s-edge)
            :referent (bind-dli-variable 'predication s-pred s)))
          (t
           (let* ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?))
                  (t-pred (when target (update-edge-as-lambda-predicate srel-edge target))))
             (when t-pred
               (make-edge-spec 
                :category (edge-category target)
                :form (edge-form target)
                :referent
                (bind-dli-variable :predication
                                   t-pred
                                   (edge-referent target))
                :target target
                :direction :right)))))))


;;--------------- NP


(define-debris-analysis-rule attach-np-comma-np-comma-as-appositive
  :pattern ( np "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-np-comma-np-comma-as-appositive
           first second third fourth))

(defun attach-np-comma-np-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-proper-noun-comma-np-comma-as-appositive
  :pattern ( proper-noun "," np ",")
  :action (:function
           attach-proper-noun-comma-np-comma-as-appositive
           first second third fourth))

(defun attach-proper-noun-comma-np-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-np-comma-proper-noun-comma-as-appositive
  :pattern ( np "," proper-noun ",")
  :action (:function
           attach-np-comma-proper-noun-comma-as-appositive
           first second third fourth))

(defun attach-np-comma-proper-noun-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-proper-noun-comma-proper-noun-comma-as-appositive
  :pattern ( proper-noun "," proper-noun ",")
  :action (:function
           attach-proper-noun-comma-proper-noun-comma-as-appositive
           first second third fourth))

(defun attach-proper-noun-comma-proper-noun-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))

(defun attach-appositive-to-np (base-np comma-edge np-edge trailing-comma)
  (unless (and (edge-p (edge-just-to-right-of trailing-comma))
               (member (cat-name (edge-category (edge-just-to-right-of trailing-comma)))
                       '(and or)))
    (make-edge-spec 
     :category (edge-category base-np)
     :form (edge-form base-np)
     :referent
     (bind-dli-variable 'appositive-description (edge-referent np-edge) (edge-referent base-np))
     )))

(define-debris-analysis-rule np-comma-subj-relative
    :pattern (np "," subject-relative-clause)
    :action (:function np-comma-subj-relative first second third))

(define-debris-analysis-rule proper-noun-comma-subj-relative
    :pattern (proper-noun "," subject-relative-clause)
    :action (:function np-comma-subj-relative first second third))

(defun np-comma-subj-relative (np-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))


(define-debris-analysis-rule np-comma-subj-relative-comma
    :pattern (np "," subject-relative-clause ",")
    :action (:function np-comma-subj-relative-comma first second third fourth))

(define-debris-analysis-rule proper-noun-comma-subj-relative-comma
    :pattern (proper-noun "," subject-relative-clause ",")
    :action (:function np-comma-subj-relative-comma first second third fourth))

(defun np-comma-subj-relative-comma (np-edge comma-edge srel-edge comma-2)
  (declare (ignore comma-edge comma-2))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))


;;  object relative NP

(define-debris-analysis-rule np-comma-obj-relative
    :pattern (np "," object-relative-clause)
    :action (:function np-comma-obj-relative first second third))

(define-debris-analysis-rule proper-noun-comma-obj-relative
    :pattern (proper-noun "," object-relative-clause)
    :action (:function np-comma-obj-relative first second third))

(defun np-comma-obj-relative (np-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))

(define-debris-analysis-rule np-comma-obj-relative-comma
    :pattern (np "," object-relative-clause ",")
    :action (:function np-comma-obj-relative-comma first second third fourth))

(define-debris-analysis-rule proper-noun-comma-obj-relative-comma
    :pattern (proper-noun "," object-relative-clause ",")
    :action (:function np-comma-obj-relative-comma first second third fourth))

(defun np-comma-obj-relative-comma (np-edge comma-edge srel-edge comma-2)
  (declare (ignore comma-edge comma-2))
  (let* ((np (edge-referent np-edge))
         (s-pred (update-edge-as-lambda-predicate srel-edge np)))
    (when s-pred
      (make-edge-spec 
       :category (edge-category np-edge)
       :form (edge-form np-edge)
       :referent (bind-dli-variable 'predication s-pred np)))))


(define-debris-analysis-rule np-comma-pp-comma
  :pattern ( np "," pp ",")
  :action (:function np-comma-pp-comma first second third fourth))

(defun np-comma-pp-comma (np comma-1 pp comma-2)
  (attach-pp-to-np-with-commas np comma-1 pp comma-2))


(define-debris-analysis-rule proper-noun-comma-pp-comma
  :pattern ( proper-noun "," pp ",")
  :action (:function proper-noun-comma-pp-comma first second third fourth))

(defun proper-noun-comma-pp-comma (np comma-1 pp comma-2)
  (attach-pp-to-np-with-commas np comma-1 pp comma-2))

(defun attach-pp-to-np-with-commas (np-edge comma-edge-1 pp-edge comma-edge-2)
  (declare (special np-edge comma-edge-1 pp-edge comma-edge-2))
  ;; Look up the right fridge of the s for a proper-noun 
  (let* ((np (edge-referent np-edge))
	 (pobj-edge (edge-right-daughter pp-edge))
	 (pobj-referent (edge-referent pobj-edge))
	 (prep-edge (edge-left-daughter pp-edge))
	 (prep-word (edge-left-daughter prep-edge))
	 (var-name
	  (subcategorized-variable np prep-word pobj-referent)))
    (cond
      (var-name
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent (bind-dli-variable var-name pobj-referent np)))
      (t
       nil))))


;;------------------ PP -------------------

(define-debris-analysis-rule pp-comma-pp-comma
  :pattern ( pp "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function pp-comma-pp-comma first second third fourth))

(defun pp-comma-pp-comma (pp-1-edge comma-edge-1 pp-2-edge comma-edge-2)
  (declare (special np-edge comma-edge-1 pp-edge comma-edge-2))
  ;; Look up the right fridge of the s for a proper-noun 
  (let* ((np-edge (edge-right-daughter pp-1-edge))
         (np (edge-referent np-edge))
	 (pobj-2-edge (edge-right-daughter pp-2-edge))
	 (pobj-2-referent (edge-referent pobj-2-edge))
	 (prep-2-edge (edge-left-daughter pp-2-edge))
	 (prep-2-word (edge-left-daughter prep-2-edge))
	 (var-name
	  (subcategorized-variable np prep-2-word pobj-2-referent)))
    (cond
      (var-name
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent (bind-dli-variable var-name pobj-2-referent np)
        :target np-edge
        :direction :right
        ))
      (t
       nil))))



;;------------------ vp+ed -------------------

(define-debris-analysis-rule proper-noun-comma-vg+ed-comma
  :pattern (proper-noun "," vp+ed ",")
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           proper-noun-comma-vg+ed-comma first second third fourth))

(defun proper-noun-comma-vg+ed-comma (np intial-comma vp+ed final-comma)
  (declare (special category::np))
  (let* ((modified-vp-ref (update-edge-as-lambda-predicate vp+ed (edge-referent np))))
    (when modified-vp-ref
      (make-edge-spec
       :category (edge-category np)
       :form category::np
       :referent (bind-dli-variable 'modifier modified-vp-ref (edge-referent np))))))


(define-debris-analysis-rule np-vp+ed
    :pattern (np vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first second))

;; seems to be obviated by phrase-and-vg+ed
(define-debris-analysis-rule pronoun-vp+ed
  :pattern (proper-noun vp+ed )
  :action (:function
           proper-noun-vp+ed first second))

(defun proper-noun-vp+ed (proper-noun vp+ed)
  (phrase-and-vg+ed proper-noun vp+ed))


(define-debris-analysis-rule np-vg+ed
  :pattern (np vg+ed )
  :action (:function
           np-vg+ed first second))

(defparameter *np-vg+ed-xp* nil)

(defun np-vg+ed (np vg+ed)
  "Have to determine the fate of the vg+ed -- is it a main verb or
   is it a reduced relative and the actual main verb it to our
   right (or preposed?)."
  (declare (special category::s category::vg+ed))

  ;; It's a reduced relative if there's an edge to the right of the vg+ed
  ;; and the np could be its subject.
  ;; "the amount of MAPK1 phosphorylated is eventually high"
  (let ((edge-on-right (edge-just-to-right-of vg+ed)))
    (if (vg-is-reduced-relative? np vg+ed edge-on-right)
        ;; If the vg+ed is a reduced relative then the np is its subject
        ;; not always -- see "The two cell lines used were ..."
      ;; Compare '... which is <vg+ed>"
      (let* ((np-ref (edge-referent np))
             (vg-ref (edge-referent vg+ed))

             (subj-var (subcategorized-variable vg-ref :subject np-ref))
             (obj-var
              (and (null subj-var)
                   (transitive-vp-missing-object? vg-ref vg+ed)
                   (subcategorized-variable vg-ref :object np-ref))))

        ;; cargo-culted from assimilate-subject-to-vp-ed
        (let* ((vp-ref
                (cond
                  (obj-var (create-predication-by-binding obj-var np-ref vg-ref))
                  (subj-var (create-predication-by-binding subj-var np-ref vg-ref))
                  (t (push-debug `(,vg-ref ,np-ref))
                     (push (format nil "Variables for reduce-relative are nil~
                           ~%  np: e~a ~s~
                           ~%  vg+ed: e~a ~s~
                           ~%  xp: e~a ~s"
                                   (edge-position-in-resource-array np)
                                   (string-for-edge np)
                                   (edge-position-in-resource-array vg+ed)
                                   (string-for-edge vg+ed)
                                   (edge-position-in-resource-array edge-on-right)
                                   (string-for-edge edge-on-right))
                           *np-vg+ed-xp*)
                     nil
                     )))
               (i (when vp-ref
                    (bind-variable 'predication vp-ref np-ref))))
          ;; (break "i = ~a" i)
          (when i
            (make-edge-spec
             :category (edge-category np)
             :form category::np
             :referent i))))

      ;; main verb case
      (unless (or (adverb-at? (pos-edge-starts-at vg+ed))
                  (to-be-at? (pos-edge-starts-at np)))
        ;; this test is a heuristic, to block
        ;; "another MAPK inhibitor, PD 98059, also inhibited ASPP2 function"
        (let* ((*right-edge-into-reference* vg+ed)
               (*left-edge-into-reference* np)
               (interp (assimilate-subject (edge-referent np)
                                           (edge-referent vg+ed))))
          (declare (special *right-edge-into-reference* *left-edge-into-reference*))
          ;; "Is MAPK1-bound MAP2K1 sustained?"
          (when interp
            (make-edge-spec
             :category (edge-category vg+ed)
             :form category::s
             :referent interp
             )))))))


;; "the amount of MAPK1 phosphorylated is eventually high"
;;
(defun vg-is-reduced-relative? (np vg xp)
  "The vg is a reduced relative if there's an edge to its right ('xp')
   and the np could be its subject. In our present grammar there are
   a great many cases where a variable would be identified but a
   reduced relative would make no sense. We try to rule these out
   on grammatical grounds."
  (when (and xp (edge-referent xp)) ; rules out semi-colons
    (let ((xp-form (form-cat-name xp)))
      (if (or (np-category? xp) ;; "These data prompted the suggestion that APC may regulate cell migration"
              (adjg-compatible? xp) ; "replication forks assembled early"
              (adjg-head? xp)
              (memq xp-form
                    '(to-comp ; "some investigations failed to demonstrate the role of DCC"
                      vg+ing ; "the Src kinase activity assayed using a kit"
                      infinitive ; "to examine"
                      transitive-clause-without-object
                      comparative ; "more"
                      )))
        nil
        (subcategorized-variable
         (edge-referent xp) :subject (edge-referent np))))))




(define-debris-analysis-rule pp-vg+ed
    :pattern (pp vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first second))

(define-debris-analysis-rule np-comma-vg+ed
    :pattern (np "," vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first third))

(define-debris-analysis-rule pp-comma-vg+ed
    :pattern (pp "," vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             phrase-and-vg+ed first third))

(defun object-target? (x vp-ref)
  (and (np-target? x)
       ;;(edge-used-in x) ;; have two edges over Ras, one is not used
       (subcategorized-variable vp-ref :object (edge-referent x))))

(defun phrase-and-vg+ed (phrase vp+ed)
  (declare (special category::np))
  (unless ;; "is X Vp+ed"
      (loop for e in (edges-before phrase)
                thereis (eq (edge-cat-name e) 'be))
    (let* ((vp-ref (edge-referent vp+ed))
           (fringe (right-fringe-of phrase)) 
           (target
            (find-target-satisfying
             fringe
             #'(lambda (x)
                 (object-target? x vp-ref)))))
      (when target
        #+ignore
        (unless (edge-used-in target)
          (lsp-break "null dominating edge ~s" target))
        (make-edge-spec
         :category (edge-category target)
         :referent (bind-dli-variable
                    'predication
                    (update-edge-as-lambda-predicate vp+ed target :object)
                    (edge-referent target))
         :form (edge-form target)
         :target target
         :direction :right)))))

(define-debris-analysis-rule s-vp+ed
  :pattern (s vp+ed )
  :action (:function
           s-vp+ed first second))

(define-debris-analysis-rule vp-vp+ed
  :pattern (vp vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-vp+ed first second))

(define-debris-analysis-rule adjp-vp+ed
  :pattern (adjp vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-vp+ed first second))

(define-debris-analysis-rule vp-ing-vp+ed
  :pattern (vp+ing vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-vp+ed first second))

(define-debris-analysis-rule s-comma-vp+ed
  :pattern (s "," vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-comma-vp+ed first second third))

(defun s-comma-vp+ed (s comma vp+ed)
  (declare (ignore comma))
  (s-vp+ed s vp+ed))

(defun s-vp+ed (s-edge vp+ed)
  (let* ((target
          (find-target-satisfying (right-fringe-of s-edge)
                                  #'(lambda(x)
                                      (and (np-target? x)
                                           (subcategorized-variable
                                            (edge-referent vp+ed)
                                            :object (edge-referent x))))))
         (target-ref (when target (edge-referent target)))
         (vp (edge-referent vp+ed))
         (pred (when target
                 (update-edge-as-lambda-predicate vp+ed target-ref :object))))
    (when pred
      (make-edge-spec
       :category (edge-category target)
       :form category::np
       :referent (bind-dli-variable 'predication pred (edge-referent target))
       :target target
       :direction :right))))



(define-debris-analysis-rule comma-adverb-comma
  :pattern ( "," adverb "," )
  :action (:function comma-adverb-comma  first second third))

(defun comma-adverb-comma (comma-1 adverb comma-2)
  (declare (ignore comma-1 comma-2))
  (make-edge-spec
   :category (edge-category adverb)
   :form category::adverb
   :referent (edge-referent adverb)))


(define-debris-analysis-rule adverb-comma
  :pattern (adverb "," )
  :action (:function adverb-comma first second))

(defun adverb-comma (word-edge comma)
  (declare (ignore comma))
  (make-edge-spec
     :category (edge-category word-edge)
     :form (edge-form word-edge)
     :referent (edge-referent word-edge)))



(define-debris-analysis-rule subordinate-comma-clause
  :pattern (subordinate-clause "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule ifcomp-comma-clause
  :pattern (ifcomp "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule whethercomp-comma-clause
  :pattern (whethercomp "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-and-clause
  :pattern (subordinate-clause and s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-comma-clause
  :pattern (subordinate-s "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-and-clause
  :pattern (subordinate-s and s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-comma-clause
  :pattern (subordinate-clause "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-and-clause
  :pattern (subordinate-clause and s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-comma-clause
  :pattern (subordinate-s "," s )
  :action (:function subordinate-comma-clause first second third))

(define-debris-analysis-rule subordinate-s-and-clause
  :pattern (subordinate-s and s )
  :action (:function subordinate-comma-clause first second third))

(defun subordinate-comma-clause (sc comma s)
  (declare (ignore comma))
  (create-event-relation s sc))


(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-clause "," subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-s "," subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-ifcomp
  :pattern (subordinate-s "," ifcomp )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-clause "," subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-s "," subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-clause
  :pattern (subordinate-clause ";" subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-s
  :pattern (subordinate-clause ";" subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-s-semicolon-subordinate-s
  :pattern (subordinate-s ";" subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-clause
  :pattern (s ";" subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(define-debris-analysis-rule subordinate-semicolon-subordinate-s
  :pattern (s ";" subordinate-s )
  :action (:function subordinate-comma-subordinate-clause first second third))

(defun subordinate-comma-subordinate-clause (sc comma sc-2)
  (declare (ignore comma))
  (create-event-relation sc-2 sc))


(define-debris-analysis-rule clause-and-subordinate
  :pattern ( s conjunction subordinate-clause  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule clause-and-subordinate-s
  :pattern ( s conjunction subordinate-s  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule transitive-clause-without-object-and-subordinate-s
  :pattern ( transitive-clause-without-object conjunction subordinate-s  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule clause-and-clause
  :pattern ( s conjunction s  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule transitive-clause-without-object-and-clause
  :pattern ( transitive-clause-without-object conjunction s  )
  :action (:function clause-and-subordinate  first second third))

(defun clause-and-subordinate (s conjunction sc)
  (create-event-relation s sc))


(define-debris-analysis-rule clause-comma-subordinate
  :pattern ( s "," subordinate-clause )
  :action (:function clause-comma-subordinate  first second third))

(define-debris-analysis-rule clause-comma-ifcomp
  :pattern ( s "," ifcomp )
  :action (:function clause-comma-subordinate  first second third))

(define-debris-analysis-rule clause-comma-subordinate-s
  :pattern ( s "," subordinate-s )
  :action (:function clause-comma-subordinate  first second third))

(defun clause-comma-subordinate (s comma sc)
  (declare (ignore comma))
  (create-event-relation s sc))


(define-debris-analysis-rule clause-subordinate
  :pattern ( s subordinate-clause )
  :action (:function clause-subordinate first second))

(define-debris-analysis-rule clause-ifcomp
  :pattern ( s ifcomp )
  :action (:function clause-subordinate first second))

(define-debris-analysis-rule question-ifcomp
  :pattern ( question ifcomp )
  :action (:function clause-subordinate first second))

(define-debris-analysis-rule polar-question-ifcomp
  :pattern ( polar-question-form ifcomp )
  :action (:function clause-subordinate first second))

(define-debris-analysis-rule clause-subordinate-s
  :pattern ( s subordinate-s )
  :action (:function clause-subordinate first second))

(defun clause-subordinate (s sc)
  (create-event-relation s sc))




(define-debris-analysis-rule when-relative-clause-comma
    :pattern (when-relative-clause "," s)
    :action (:function when-relative-clause-comma  first second third))

(defun when-relative-clause-comma (wc comma s)
  (declare (ignore comma))
  (create-event-relation wc s))


(define-debris-analysis-rule where-relative-clause-comma
    :pattern (where-relative-clause "," s)
    :action (:function where-relative-clause-comma  first second third))

(defun where-relative-clause-comma (wc comma s)
  (declare (ignore comma))
  (create-event-relation wc s))


(define-debris-analysis-rule s-when-relative-clause
    :pattern (s when-relative-clause)
    :action (:function s-when-relative-clause first second))

(defun s-when-relative-clause (wc s)
   (create-event-relation wc s))


(define-debris-analysis-rule clause-subordinate-relative-clause
  :pattern ( s subordinate-relative-clause )
  :action (:function clause-subordinate-relative-clause  first second))

(define-debris-analysis-rule clause-comma-subordinate-relative-clause
  :pattern ( s "," subordinate-relative-clause )
  :action (:function clause-subordinate-relative-clause  first third))

(defun clause-subordinate-relative-clause (s sub-clause-edge)
  (let* ((target
          (find-target-satisfying
           (right-fringe-of s)
           #'(lambda (e)
               (and (np-target? e)
                    (subcategorized-variable (edge-referent sub-clause-edge)
                                             :subject (edge-referent e))))))
	 (conj (value-of 'subordinate-conjunction (edge-referent sub-clause-edge)))
	 (event (edge-referent s))
	 (sub-event
          (when target
            (update-edge-as-lambda-predicate
             sub-clause-edge
             (edge-referent target)))))
    (when sub-event					 
      (make-edge-spec
       :category category::event-relation
       :form category::s
       :referent (make-event-relation
                   conj s sub-event s)))))


(define-debris-analysis-rule clause-comma-subordinate-np
  :pattern ( s "," subordinate-conjunction np)
  :action (:function clause-comma-subordinate-np  first second third fourth))

(defun clause-comma-subordinate-np (s comma subordinate-conjunction np)
  (declare (ignore comma))
  (create-event-np-relation s subordinate-conjunction np))

(defun create-event-np-relation (event-edge sub-edge sub-np-edge)
  (let* ((conj (edge-referent sub-edge))
         (event (edge-referent event-edge))
         (sub-event (edge-referent sub-np-edge)))
    (when (or (itypep sub-event :process)
              (itypep sub-event :event-relation))
      (make-edge-spec
       :category category::event-relation
       :form category::event-relation
       :referent (make-event-relation conj event sub-event
                                      event-edge sub-np-edge)))))


(define-debris-analysis-rule clause-comma-subordinate-event-relation
  :pattern ( s "," subordinate-conjunction event-relation)
  :action (:function clause-comma-subordinate-event-relation  first second third fourth))

(defun clause-comma-subordinate-event-relation (s comma sconj event-relation)
  (declare (ignore comma))
  (create-event-relation s event-relation (edge-referent sconj)))




#+ignore ;; needs to be folded into the rule above
(define-debris-analysis-rule adjunctive-pp-on-np
  :pattern (np pp)
  :action (:function add-adjunctive-pp first second))

(define-debris-analysis-rule np-conj-pp
    ;; for the case where the rightmost NP in a conjunction can
    ;; take a PP, but was conjoined early
    :pattern (np pp)
    :action (:function np-conj-pp first second))

(defparameter *adjunctive-attachments* nil)
(defparameter *do-adjunctive-attachments* nil)
(defparameter *reduced-known-adjunct-attachments*
  '((INTAKE WITH) (INSTRUCTION IN) (RMB UPON) (ADULT-ENDURANT FROM) (ADDRESS IN) (TRAIT |NEXT TO|)
    (MULTIPLE-LINEAR-REGRESSION INCLUDING) (BEHAVIOR |IN THE LIGHT OF|) (CONSTRAINT TO) (TEND VIA)
    (LEVEL IN) (TEND IN) (AGREEABLENESS VS.) (TRAITDIMENSIONS |IN LINE WITH|) (MAN WITH) (FACTOR OF)
    (ACCEPTANCE OF) (AUTHORITY AROUND) (RESOURCE FOR) (DISEASE AT) (WILLINGNESS IN) (SUBSTANCE DURING)
    (ATTENDANCE AT) (PARTICIPATE IN) (LOAD-ENDURANT ON) (RELEVANCE OF) (CARE-ENDURANT IN)
    (PERCENT VS.) (PARENT OF) (EMAILS WITH) (TIME-UNIT AT) (ROLE-BASED-PERSON PER)
    (CASES-PATHOGEN PER) (ANALYZE ON) (NECESSITY OF) (ASPECT ABOUT) (OVERWHELM BY) (PROVIDER IN)
    (TIME PER) (EMPLOYMENT AT) (FEAR OF) (ADAPTATION OF) (EDUCATION ON) (COMMUNICATION OF) (KEY TO)
    (PANDEMIC |SUCH AS|) (REJECT |DUE TO|) (DIFFERENCE FROM) (SCALE-CL-VERB TO) (RECOMMENDATION OF)
    (INFECT FOR) (DEMOGRAPHICS OF) (UNAWARE OF) (THEIRPRESENTATIONS TO) (SIMILARTRENDS IN)
    (INFLUENCEEXACERBATIONS OF) (ATTITUDE AT) (SAMPLE-SIZE-STAT-MEASURE IN) (INCONGRUENCE BETWEEN)
    (ATTITUDE TO) (DANGEROUS TO) (CONSIDER |IN LIGHT OF|) (CARE-ENDURANT ABOUT) (DISCORD BETWEEN)
    (ROLE-BASED-PERSON ACROSS) (AREA ABOVE) (EMERGE IN) (TEST WITH) (ELIGIBLE FOR)
    (ANXIETY |AS A RESULT OF|) (EMOTION-AUTO |SUCH AS|) (BIO-ACT IN) (WOMAN IN) (BIO-STATE WITH)
    (ENOUGH FOR) (BIGOTRY TOWARDS) (VIEW-AUTO |IN CONTRAST TO|) (PERCENT BETWEEN)
    (RHETORIC THROUGHOUT) (DYNAMICS BETWEEN) (XENOPHOBIA IN) (PERCENT WITHIN) (COMMERCE AT)
    (PUBLICIZE IN) (NOT FROM) (HOSTILITY TOWARDS) (PROLIFERATION OF) (EXPERIMENTAL-SYSTEM VERSUS)
    (RESULT FROM) (FREQUENCY REGARDING) (Z-SCORE-STAT-MEASURE ABOVE) (COLLECTION ON) (REPRESENT WITH)
    (ADMINISTER IN) (RECOMMENDATION BY) (DISAGREEMENT BETWEEN) (CATEGORY OF) (BELIEF |SUCH AS|)
    (RECOMMENDATION |SUCH AS|) (ANCHORAGE AT) (SCALE WITH) (INDICATE AT) (CORONAVIRUS FROM)
    (ANGST FOR) (DAMAGE TO) (THREATEN BY) (PEOPLE ACROSS) (INSIGHT ABOUT) (PROVIDE TO)
    (FRAMEWORK |ALONG WITH|) (TARGET AT) (OVERALL-ENDURANT DURING) (MINDFULNESS DURING) (ATTENTION ON)
    (MINDFULNESS TO) (ASSET TO) (DISTRESS AT) (CONTAINMENT OF) (ANOTHER WITH) (WELL-BEING ON)
    (FRAUGHT WITH) (NATIONALISM AS) (PREPRINT AT) (CHARACTERISTICS TO) (SEMITISM IN) (SIDE OF)
    (COMPARE FOR) (SENSEMAK DURING) (THEORY AS) (TOBELIEVE IN) (CATEGORIZE AS)
    (STANDARD-DEVIATION-STAT-MEASURE ABOVE) (BALANCE IN) (REPRESENTATIVE FOR) (VALUE TO)
    (ALSOCONSISTENT WITH) (RESULTS AS) (SUGGEST FROM) (PLAY-CL-VERB IN) (THEORY INTO) (IDENTIFY FROM)
    (VARIABLE/TERM AS) (DISTINGUISHABLE FROM) (ROBUSTNESS OF) (RIGOR IN) (GAP IN) (THEORY |SUCH AS|)
    (ALIGNMENT ON) (EVIDENCE ON) (RESULTS FROM) (RESIDENT-ENDURANT WITH) (ILLUSTRATE BY)
    (EXPERIMENTAL-SYSTEM FROM) (CHANGE TO) (SPECIALIST FROM) (BELIEF BY) (CONSTRUCT AFTER)
    (BIO-EVENT WITH) (RESPONSE |WITH REGARD TO|) (DISPROVEN BY) (SITUATION ON) (MEANING-ENDURANT IN)
    (ARTICLE-FIGURE OF) (ROLE-BASED-PERSON TO) (WORKER DURING) (BACK BY) (PHENOMENON DESPITE)
    (DISPROPORTION IN) (RELY IN) (MORE-ROBUST TO) (PUNISHMENT TO) (INVOLVE OF) (WORRY IN)
    (MORE-PRONE TO) (ANXIETY ON) (SUGGEST TO) (SHOW ABOUT) (ITEM BY) (SURVIVOR FROM) (WORKER FROM)
    (POPULATION FROM) (SITUATION IN) (HIDDEN FROM) (COMMUNICATION FROM) (FREEDOM |IN VIEW OF|)
    (PREVENT FROM) (ONES WITH) (SCARCITY OF) (PUT-SOMETHING-SOMEWHERE AT) (ODDS FOR) (GROUP AS)
    (FREEDOM IN) (BIO-QUESTION AS) (FREEDOM FOR) (ADEQUATE TO) (WORRY BY) (PERCENT ABOUT)
    (SCARE ABOUT) (EFFECT |BY MEANS OF|) (BEENDETECT IN) (AREA BETWEEN) (COMPARE |BY MEANS OF|)
    (SMOKE PER) (INVITE AT) (VACCINE IN) (TIME-UNIT PER) (PARTICIPATE TO) (DIFFERENCE WITH)
    (SITUATION FOR) (WORKER IN) (EVIDENT IN) (BED-ENDURANT IN) (DESTINE TO) (CARE-ENDURANT ON)
    (RESPONSIBLE OF) (INTERVENTION TO) (EXPOSITION TO)
    (CORRELATION-COEFFICIENT-STAT-MEASURE |SUCH AS|) (PANDEMIC WITH) (ADJUSTMENT TO) (NOT AS)
    (DIFFICULTY IN) (MUSTSTAY AT) (FRIEND AT) (MENTION AS) (UNCERTAINTY IN) (COMPATIBLE WITH)
    (FEMALE PER) (DISCUSSION |ACCORDING TO|) (POPULATION ABOUT) (ROLE-BASED-PERSON ABOUT) (SHOE AT)
    (MEASUREMENT FROM) (PROCEDURE IN) (GROUP AT) (ANSWER/INFO THROUGHOUT) (ANSWER/INFO ALONG)
    (CHARACTERIZE OF) (DECREE IN) (EMPOWERMENT THROUGH) (DESCRIBE BY) (NUMBER-SEQUENCE FROM)
    (RECEIVE FOR) (TREATMENT FOR) (COMMUNITY ON) (BIO-PROMOTE OF) (STUDY DURING) (DELIVERY FROM)
    (EXAMPLE INCLUDING) (RATIONALE FOR) (STRATEGY INCLUDING) (QUARTER OF) (SUSCEPTIBILITY OF)
    (ADOPTION OF) (RAISE ABOUT) (EFFECTIVENESS OF) (INTERMEDIATE-ENDURANT TO) (TEST BETWEEN)
    (COMPUTER AT) (THEPRESENCE OF) (SPOKEN AT) (PLACE INTO) (PHRASE-CL-VERB AS) (AVAILABLE UPON)
    (APPROVAL FOR) (BEHAVIOR ON) (COUNTRY AROUND) (HUMIDITY IN) (CONVENTION FOR) (CONTRIBUTE FROM)
    (TATSUMI FOR) (NAKAGAWA FOR) (TEJIMA FOR) (MITSUYA FOR) (BIO-METHOD DURING) (ALIVE IN)
    (DIFFERENCE OF) (MORTALITY OF) (PERSON WITH) (HOMOGENEOUS ACROSS) (RETRIEVABLE FROM)
    (ASSUMPTION OF) (TEMPERATURE IN) (RETRIEVE ON) (RESEARCHER IN) (RATIO BETWEEN) (RESPECT FOR)
    (TIME-CL-VERB OF) (INCIDENCE OF) (SELECT AS) (SPREAD WITHIN) (ENDORSE BY) (THREATEN AMONG)
    (BEHAVIOR WITHIN) (PERSPECTIVE FROM) (EFFORT AS) (DEVIATION FROM) (FACT OF) (SOURCE THROUGH)
    (CHARACTERISTICS |SUCH AS|) (EXCLUDE FOR) (ANALOGOUS TO) (REGRESS ON) (IDEOLOGY AS)
    (INACCURACY IN) (COVERAGE OF) (KNOW IN) (VIEW ON) (JUDGEMENT OF) (URGENCY IN) (LIBERALS FROM)
    (TRANSFORMATION OF) (FACILITY IN) (MINORITY-AUTO IN) (STRENGTHEN-CL-VERB AFTER)
    (HOME-ENDURANT DESPITE) (OVERREPRESENT IN) (OCCUR AT) (THOSE FROM) (EVENT-RELATION FOR)
    (ALGORITHM TO) (CONDITION ON) (MORTALITY |AS OF|) (MALE VS.) (OCCUR IN) (VARY BY) (AFFAIR BETWEEN)
    (AFFAIR |AS OF|) (95-PERCENT-CONFIDENCE-INTERVAL-STAT-MEASURE BETWEEN) (MORTALITY AMONG)
    (BASELINE TO) (BASELINE FOR) (REPORT FROM) (STUDY TO) (OUTCOME FROM) (SITE OF) (WEBSITE |SUCH AS|)
    (ENCOURAGE BY) (COLLECTION AS) (INDICE FOR) (ESTIMATOR THROUGHOUT) (SCORE BY) (TREATMENT AS)
    (COLLECT DURING) (PAY TO) (VARIABLE/TERM AMONG) (ANTECEDENT-ENDURANT OF) (OUTCOME AMONG)
    (HYGIENE AMONG) (CARE-ENDURANT THROUGH) (ALL ABOUT) (REPRESENTATIVE OF) (CONTENT WITH)
    (RANGE BELOW) (MOTIVATION BY) (COVID-19 TO) (EMPATHY FOR) (COMPANY TO) (ISSUE OF) (APPROACH AT)
    (DIFFERENT IN) (DISEASE FROM) (RENDER |AS TO|) (PATTERN-ENDURANT IN) (ENCOURAGEMENT OF)
    (CANCELLATION OF) (IMPLEMENT ON) (COUNTRY IN) (INSIGHT FROM) (HIGHER FOR) (VALUE-IS-NEGATIVE WITH)
    (SPECIFIC ACROSS) (PERCEPTION FOR) (POSE BY) (AMOUNT-OF-TIME IN) (PATION BY) (STOCKPILE OF)
    (CONFIDENCE IN) (COUNTRY ON) (MOLECULAR-LOCATION OF) (ITY TO) (FACEBOOK IN) (WORLDWIDE |AS OF|)
    (OUTLOOK FOR) (ATTITUDE IN) (GOAL IN) (SAMPLE ACROSS) (ROLE-BASED-PERSON THROUGH) (SPONSE TO)
    (GAP BY) (CATEGORY BY) (IDENTICAL FOR) (RANDOMIZE WITH) (MEASURE FOR) (SAMPLE TO) (EACH IN)
    (ARGUMENT-SUPPORT PAST) (MUCH LIKE) (SOPHISTICATION FOR) (BEHAVIOR AS)
    (BIO-QUESTION |WITH RESPECT TO|) (PREDICT BY) (MISPERCEPTION IN) (ORGANIZATION-AUTO ON)
    (INTENTION |REGARDLESS OF|) (EVIDENT AMONG) (PEOPLE ABOUT) (POLITICIZATION OF) (IDEOLOGY ACROSS)
    (DISAGREEMENT ABOUT) (CONSERVATIVES IN) (MEMBER FROM) (OUTLET |SUCH AS|) (LABEL AS) (ALL VIA)
    (PUBLICATION OF) (FUND FROM) (OBTAIN VIA) (EFFECT IN) (RELATIONSHIP ACROSS) (ACCURACY IN)
    (MIDPOINT IN) (PARADIGM ON) (EVIDENCE IN) (HEADLINE |AS FOR|) (BIO-QUESTION AT) (PREFERENCE FOR)
    (SEE WITH) (RESPONSESBELIEF IN) (RESPONSE BY) (IMPORTANCE AMONG) (TYPE OF) (SEVERE AMONG)
    (NECESSITY WITHIN) (WHICHRELIES ON) (EMERGENCY ON) (ALTRUISM DURING) (EPIDEMIC AMONG)
    (LESSON FROM) (LONELINESS IN) (SYMPTOMATOLOGY IN) (EMPATHY AS) (RESPONDERS TO) (COUPLE BETWEEN)
    (DISCONNECTION AS) (PROCLIVITY FOR) (INDUCE OF) (MEDIATE THROUGH) (LONELINESS WITH)
    (ISSUE-CL-VERB AT) (EXCEPTION FROM) (CONFIDENCE-INTERVAL-STAT-MEASURE FOR) (COMPLAINT IN)
    (FACTOR IN) (EXAMINE WITH) (EVALUATION OF) (DISCONNECTION FROM) (COLLECTION TOWARDS)
    (COMPLIANCE TO) (OVERLAY ON) (PROHIBIT BY) (WASTHSANCTION BY) (COMPLIANCE FROM) (IMPLEMENT AT)
    (CAPTURE |DUE TO|) (AWARENESS AMONGST) (CONTRIBUTOR TO) (PREVALENT AMONG) (IN-LINE WITH)
    (DEPRESSION BY) (RESOURCE INCLUDING) (PREVALENT ACROSS) (USS DURING) (EVENT-RELATION AS)
    (DISEASE WITH) (SAMPLE WITHIN) (RESOURCE IN) (NEWS OF) (OXYGENATION AT) (FRIEND ABOUT)
    (FACILITY FOR) (TEND TO) (DISEASE FOR) (THOSE UNDER) (ROLE-BASED-PERSON OVER) (PASSENGER FROM)
    (IMPLEMENT BY) (PARENT WITH) (PROPORTIONAL TO) (BOTH AS) (DISTRIBUTION AMONG) (GOODS WITH)
    (HYPHENATED-PAIR |IN ADDITION TO|) (INTERACT FOR) (WARD IN) (DISTANCE FOR) (BIO-ENHANCE OF)
    (REVISE FOR) (CARE-ENDURANT FOR) (UNDERTAKEN IN) (ESTABLISH OF) (DAMAGE FROM) (COVID-19 OVER)
    (CORONAVIRUS IN) (BEHAVIOR UNDER) (COUNTERMEASURE AGAINST) (EXTENSIVE IN) (LOCATION WITH)
    (REGRESSION OF) (MUCH |IN TERMS OF|) (COST-ENDURANT |IN TERMS OF|) (WINDOW OF) (PRETATION OF)
    (IMPACT IN) (CHOICE-ENDURANT |SUCH AS|) (RESULTS FOR) (CLASSIFY INTO) (DENSITY IN)
    (MEAN-STAT-MEASURE TO) (EXPERIMENTAL-CONDITION IN) (AUTOCORRELATION OF) (VALUE AS) (CELL-LINE FOR)
    (PANEL OF) (MEASURE-AS-MEASUREMENT FROM) (SERVE BY) (MEMBER OF) (STRONGHOLD IN) (ONSET OF)
    (DIE AS) (TRIBUTION |IN TERMS OF|) (BIO-STATE AFTER) (ARGUMENT-SUPPORT THROUGH) (COUNTY WITH)
    (NUMBER-SEQUENCE WITHIN) (PERSON UNDER) (DATE AS) (CALCULATE AFTER) (MEAN-STAT-MEASURE AT)
    (TEMPERATURE DURING) (PREVALENT IN) (POLLUTION ACROSS) (DISPARITY BETWEEN) (VULNERABILITY OF)
    (CONFOUNDERS AT) (SYNONYMOUS WITH) (BOTH BETWEEN) (FATALITY IN) (DETERMINE BY) (NUMBER ON)
    (OUTBREAK-OF-DISEASE IN) (SMEETS FOR) (CONSIST TO) (CONDUCT WITHIN) (HELPFUL IN)
    (COMMUNICATION REGARDING) (PROVIDE WITHOUT) (LIKELY-ADJ |DUE TO|) (MORE-AFRAID OF) (THOSE OF)
    (ANSWER/INFO OF) (RELEVANT FOR) (R-STAT-MEASURE BETWEEN) (DISRUPT IN) (NOT FOLLOWING)
    (RESPONSE FROM) (CONDUCT INCLUDING) (R-STAT-MEASURE FOR) (ANSWER/INFO TO) (DESCRIBE ABOVE)
    (INTOLERANCE OF) (INFORMATION OF) (SAMPLE-SIZE-STAT-MEASURE OF) (CONDUCT BETWEEN) (DESCRIBE AS)
    (DISPOSE TO) (BOTH AT) (PERHAPS IN) (EFFECT BETWEEN) (SUGGEST AS) (LINK THROUGH) (EFFECT VIA)
    (EFFECT THROUGH) (COMPLY WITH) (BEHAVIOUR LIKE) (DISENGAGEMENT IN) (RECOMMENDATION ON)
    (PSYCHOLOGY AS) (THAT OF) (EMPATHY TOWARDS) (CITIZEN IN) (PREVENT ABOUT) (ORDINAL IN) (SYMPTOM AS)
    (BIO-RANGE BETWEEN) (MEDICINE FOR) (ALL ACROSS) (GOVERNANCE AT) (CHALLENGE INCLUDING) (DRUG FROM)
    (ORGANIZATION-AUTO IN) (OUTBREAK-OF-DISEASE BY) (DYNAMICS IN) (PERIOD AS) (RESTRICTION IN)
    (CAPABILITY OF) (PERCENT TO) (TIME FROM) (DYNAMICS WITH) (STATISTIC ACROSS) (PRIOR-ENDURANT FOR)
    (IMPLEMENT IN) (CALCULATE AS) (TRANSMIT BY) (COUNT-OF AT) (CASES-PATHOGEN FROM) (STATUS WITH)
    (DRUG OF) (CONTROL UNDER) (CASES-PATHOGEN WITH) (PROVINCE IN) (CONTROLLABILITY ABOUT) (DANGER IN)
    (SYMPTOM IN) (CELLULAR-PROCESS IN) (APPRAISAL AS) (PROBLEM BEFORE) (DESIRABLE FOR) (ESTIMATION OF)
    (MOLECULE IN) (APPRAISAL OF) (MONITOR OF) (CENTRE WITHIN) (VARIABLE/TERM ON) (BIO-USE AS)
    (HISTORY OF) (SEVERITY ABOUT) (WRITTEN BY) (PARTICIPATION REGARDING) (TOOKPARTICIPANTS ABOUT)
    (SEVERITY AS) (REGARD AS) (CHEMICAL-REACTION TOWARDS) (ESTIMATION ABOUT) (RISK TO) (EFFECT BY)
    (MEASURE-AS-MEASUREMENT |SUCH AS|) (LINK FOR) (RESPONSE REGARDING) (GLMMTMB FOR) (PORTRAY WITH)
    (ANALYZE |TOGETHER WITH|) (ENDORSE AS) (MEASURE-AS-MEASUREMENT ON) (LIKELIHOOD OF) (LIMIT TO)
    (CONCERN OVER) (PRACTICE OVER) (FINDING REGARDING) (INTERVENTION |SUCH AS|) (DIFFERENT FROM)
    (CONCERN OF) (DISEASE AS) (CONVERGE IN) (REGRESS ONTO) (RECOMMENDATION FOR) (DISTANCE DURING)
    (DISCREPANCY BETWEEN) (PANDEMIC BY) (CLASSIFICATION BY) (MORTALITY FOR) (TERM-NAME FOR) (BEGIN OF)
    (COLLECTION BY) (STRATIFY BY) (SUGGEST IN) (MOLECULE ABOUT) (OPTIMISM FOR) (KNOW AS) (OPTIMISM TO)
    (BIO-PROCESS BEHIND) (SUBSTANTIAL IN) (ASSESS AS) (MODEL WITH) (PRESENCE VERSUS)
    (STANDARDIZE ACROSS) (COHESION IN) (MEAN-STAT-MEASURE PER) (SEND AT) (PRONOUN/PLURAL WITH)
    (REMINDER FOR) (COMPLETE-CL-VERB |UP TO|) (PROGRAM IN) (CODEBOOK WITH) (METHODOLOGY IN)
    (CORROBORATE BY) (CHEMICAL-REACTION IN) (THOSE AT) (DYNAMICS DURING) (HEALTH AT) (PERCENTAGE FOR)
    (REGRESSION FOR) (EMPLOYMENT IN) (PERCENTAGE WITH) (COUNTY PER) (DECREASE BY) (DISTANCE AMONG)
    (UNACAST FOR) (FINDING WITH) (DECREASE AFTER) (CONCEPTUALIZE AS)
    (THISSTUDYEXAMINESTHESOCIOECONOMICANDPOLITICALDETERMINANTSOFENGAGEMENT IN) (EVENT-RELATION BY)
    (PROMINENT IN) (OBSERVATION FROM) (SKA OVER) (CONDUCT FOR) (PRESENTATION TO) (NOMINATE BY)
    (RELIABILITY OF) (INTERVAL OF) (ANXIETY TO) (SALIENCY OF) (PEOPLE TO) (HUMAN FROM) (END OF)
    (TACKLE IN) (LIBERALIZATION OF) (ANALYZE |WITH RESPECT TO|) (EXCEPTION TO)
    (FRAME-CL-VERB |WITH RESPECT TO|) (WINDOW TO) (ENTER IN) (SHOW BELOW) (REGISTRATION AT)
    (IDEOLOGY IN) (VALIDATE OF) (PSYCHOLOGY OF) (INVENTORY OF) (INEQUALITY BY) (THIS PAST)
    (UNCERTAINTY AS) (PEOPLE OF) (THREAT AMONGST) (GEAR AT) (IDENTITY IN) (PATTERN-ENDURANT OF)
    (CORRELATION OF) (INVARIANCE OF) (ARGUMENT-SUPPORT OF) (AFFIRMATION IN) (ADHESION WITH)
    (OUTCOME WITH) (LIFE IN) (MAINTAIN OF) (FRAME-CL-VERB WITH) (VALIDITY OF) (METHOD FOR)
    (SPECTER OF) (TWITTER IN) (LITERACY FOR) (POPULAR AMONG) (ENOUGH ABOUT) (TOPIC IN) (SUGGEST BY)
    (VARIABILITY ACROSS) (SIGNIFICANCE |EXCEPT FOR|) (POPULARITY OF) (DISCUSSION ON) (MARK BY)
    (SEASONALITY OF) (PREVALENCE IN) (ANALYZE IN) (INTRODUCTION IN) (PROVIDE WITH)
    (REPRODUCIBILITY OF) (ENGINE AFTER) (PUBLISHED-ARTICLE WITH) (INTENSITY FROM) (PICK BY)
    (INTERNET TO) (KEYWORD IN) (XENOPHOBIA AGAINST) (CONSTRUCT WITH) (VALUE AT) (COUNTRY UNTIL)
    (DEFINITION IN) (ASSESS WITH) (NOTEWORTHY AS) (WEAKER FOR) (CELL-LINE TO) (HYPOTHESIS ON)
    (CORRELATION FOR) (BEHAVIOR WITH) (LOAD-PERDURANT ON) (PREDICT OF) (CONSTRUCTION OF)
    (FEEL-PERDURANT BY) (EFFECT-SIZE-STAT-MEASURE OF) (COMPLETE-CL-VERB ON) (INVITATION WITHIN)
    (INCLUSION OF) (COVID-19 AS) (REASON-AUTO BEHIND) (WORLD AS) (VARIANT OF) (EXPLANATION OF)
    (PEOPLE ON) (INCREASE OF) (MAN FROM) (MODEL OF) (ANALYZE INCLUDING) (FESTIVAL IN) (VULNERABLE TO)
    (ARTICLE-FIGURE IN) (INFECT BY) (COEFFICIENT IN) (TIME-UNIT BY) (EXPERIMENTATION WITH)
    (CHARACTERIZE BY) (TRANSMISSION IN) (OCCUR THROUGH) (COUNTRY OF) (SYNDROMESFIRST |OUTSIDE OF|)
    (TRANSMISSION OF) (BIO-MECHANISM OF) (CHANCE OF) (TAKEN BY) (CONNECTION WITH) (BIO-MECHANISM TO)
    (BORDER WITH) (ALL ON) (EXPERIMENT WITH) (IMPORTANCE |IN THE LIGHT OF|) (RESPONSE AGAINST)
    (ANXIOUSNESS AMONG) (BELIEF LIKE) (RESTRICTION THROUGHOUT) (DISTRIBUTION IN) (INFORMATION LIKE)
    (EXPLORATION BY) (SENSITIVITY IN) (SYMPTOM REGARDING) (INFORMATION FROM) (OVERESTIMATION IN)
    (HYPOTHESIS REGARDING) (WERESATISFACTORY WITH) (RESULTS IN) (EXAMINE BY) (PROPERTY OF)
    (DISTRIBUTION OF) (EXCLUDE |DUE TO|) (DRIVE BY) (STATUS FOR) (CONSISTENCY OF) (VALIDITY FOR)
    (ADOPT FROM) (SENSITIVITY TOWARDS) (CHECKLIST FOR) (CONSISTENCY FOR) (INSPIRE BY) (ASSURE BY)
    (DURATION FOR) (NOTICE FROM) (COLLECTION THROUGH) (SENSITIVITY |ALONG WITH|) (PROPOSE AS)
    (STORY OF) (REPORT ACROSS) (CASES-PATHOGEN OF) (RESEARCH OF) (DEAL THROUGH)
    (DISCUSS |IN THE LIGHT OF|) (TEND OF) (ROLE-BASED-PERSON FROM) (COLLECT AT) (COLLECTION AMONG)
    (EMOTION-AUTO IN) (PREDICTOR FOR) (DESCRIPTIVE-STAT-MEASURE FOR) (ORIENTATION ON) (HEALTH THROUGH)
    (AVERAGE FOR) (BIO-QUESTION |IN LIGHT OF|) (ANXIETY IN) (PREDICTOR OF) (MEMBER IN) (FEELING AT)
    (IMPLICATE IN) (INSTILL ACROSS) (FEATURE OF) (BODY OF) (WORK FROM) (THOSE WITHOUT) (CLOSURE OF)
    (COUNTRY AS) (COUNTRY ACROSS) (SYMPTOM OF) (RANGE FROM) (PROCESSING OF) (INTENSITY OF)
    (SIMILAR ACROSS) (ANXIETY AT) (ESTIMATOR WITH) (REGRESSION WITH) (EXPOSURE TOWARD)
    (PRESENTATION IN) (DISCUSSION OF) (FEELING TOWARD) (CONSISTENT ACROSS) (OPENNESS TO)
    (COMPETITION OVER) (DISTANCE TO) (EXPOSURE IN) (PANDEMIC OF) (SCATTERPLOTS AT) (DATA AT)
    (PRELIMINARY |DUE TO|) (CONCLUSION AT) (RHO-STAT-MEASURE BETWEEN) (RHO-STAT-MEASURE OF)
    (COMPUTE FOR) (POPULATION ON) (DIE |DUE TO|) (ACCESSIBLE FROM) (COUNTRY WITH)
    (BIO-MAKE-STATEMENT WITH) (OUTBREAK-OF-DISEASE |SUCH AS|) (PROXIMITY WITH) (AWARE OF)
    (PREDICTIVE OF) (AMERICANS WITH) (CORRELATION FROM) (MATERIALS FOR) (VISIBLE AMONG) (PROXIMITY TO)
    (BIO-ACT AS) (VULNERABILITY TO) (PREDICTOR BETWEEN) (SUPPORTIVE OF) (DECLARATION OF) (MAKER IN)
    (MOTIVE-ENDURANT FOR) (INTERPRETATION OF) (DANGER TO) (OPTIMISM |ALONG WITH|) (TIME-UNIT INTO)
    (RESPONSE AT) (DIVERGENCE BETWEEN) (SPEND UNDER) (PESSIMISM |IN RELATION TO|) (SATISFACTION WITH)
    (RESIDUALS FROM) (INDICATE OF) (SIDE BY) (REPORT FOR) (PESSIMISM FROM) (EFFECTIVENESS IN) (BE AT)
    (BE WITH) (SCALE FROM) (LOCATION OF) (COMMITTEE AT) (WELL-BEING DURING) (IMPORTANCE AS)
    (SAMPLE |IN COMPARISON WITH|) (PREPAREDNESS IN) (VULNERABILITÄTEN IN) (LEBENSMITTELVERSORGUNG IN)
    (MOLECULE FOR) (ASSISTANCE IN) (ADVICE LIKE) (DATABASE ON) (HOPE-ENDURANT FOR) (THING IN)
    (THINK-ENDURANT ABOUT) (AFRAID OF) (PEOPLE FOR) (CHARACTERISTICS OF) (DISEASE OF) (PERCENT IN)
    (REMAIN IN) (STRATEGY FOR) (BIO-QUESTION |WITH REGARD TO|) (COVID-19 FROM) (PANDEMIC AS)
    (RECOMMENDATION INTO) (BIO-AGENT IN) (PAYOFF IN) (PAYOFF OVER) (CONNECT IN) (TIME-UNIT IN)
    (PEOPLE PER) (LIKELIHOOD BY) (MORTALITY FROM) (ANALYZE FOR) (VALUE THROUGH) (NUCLEOTIDE PER)
    (BIO-FUNCTIONALITY WITH) (INDEX-CL-VERB THROUGH) (BIO-PROCESS FOR) (TIGHTNESS THROUGH)
    (TRAJECTORY OF) (NATION WITH) (DATA IN) (CELLULAR-PROCESS TO) (VERIFY OF) (ATTITUDE AS)
    (MORE-AWARE OF) (FREQUENCY IN) (SENSE OF) (NATURAL TO) (AFOREMENTIONEDCONCERN FOR)
    (WASASSOCIAT WITH) (APPEAR OF) (LIMITATION TO) (MEAN-STAT-MEASURE IN) (EVENT-RELATION OF)
    (VARIABLE/TERM FROM) (DISEASE OUT) (NOT FOR) (VISUALIZE IN) (OBTAIN FOR) (REPORT IN) (ENTER AS)
    (RUN INCLUDING) (RUN FOR) (ERROR IN) (MEET BY) (GENERALIZATION BY) (NOISE IN) (LEVEL VS.)
    (ATTENTION TO) (PREDICT ON) (TUN OF) (CHECK BY) (PERFORM |IN RELATION TO|)
    (DESIGN |IN ACCORDANCE WITH|) (QUALITY OF) (GROUP-PERDURANT INTO) (ROLE-BASED-PERSON INTO)
    (AVAILABLE IN) (OPPORTUNITY FOR) (LOSE OF) (STATUS BEFORE) (CONSIDER AS) (INTENTION AMONG)
    (COLLECTION INTO) (PSYCHOLOGICALREACTION TO) (EMERGENCY LIKE) (STRESSOR AS) (CHEMICAL-REACTION TO)
    (PERCEIVE AS) (DURATION |ALONG WITH|) (PLAY-CL-VERB BY) (LITERATURE ON) (LOCK DOWN) (COUNTRY LIKE)
    (BE FOR) (FEEDBACK ON) (DEPICT IN) (CHOICE-ENDURANT OF) (BOTH |IN TERMS OF|) (INCONSISTENT WITH)
    (LIMIT IN) (EFFECT ON) (FINDING ON) (BELIEF VIA) (ANALYZE WITH) (INTERACT ON) (THINK-ENDURANT OF)
    (COLLECT BETWEEN) (THEORY IN) (WORK IN) (PERIOD FOR) (MEASURE-AS-MEASUREMENT LIKE) (HOC FOR)
    (CONCLUSION FROM) (TECHNIQUE ON) (BEHAVIOR THROUGH) (MOLECULE TO) (BIO-PROCESS ABOUT) (DENOTE AS)
    (CALCULATE ON) (PREDICTOR IN) (PREDICTOR FROM) (MODEL AS) (DESCRIPTIVE-STAT-MEASURE OF)
    (RELATION WITH) (KNOW ON) (INTERCORRELATIONS AMONG) (BELIEF OF) (INTERVENTIONPRIOR TO)
    (INTRODUCTION TO) (AOT WITH) (TAKEN FROM) (ANXIETY WITH) (CONSPIRACY REGARDING) (REPORT ON)
    (GROUP ON) (INTERVENTION ON) (OUTCOME FOR) (ENDORSEMENT OF) (SEEM BY) (ACTOR BEHIND)
    (FRUITFUL FOR) (STRAIN OF) (UPTAKE OF) (TECHNIQUE IN) (FLATTEN-AUTO OF) (LIMIT |DUE TO|)
    (WORSEN OF) (CHANGE |DUE TO|) (LIFE WITH) (HEALTH TO) (NOT IN) (ISOLATE IN) (RESULTS REGARDING)
    (RESULTS ON) (DISCUSS BY) (PEARSON-CORRELATION OF) (HYPHENATED-PAIR IN) (ROLE-BASED-PERSON OF)
    (SCALE BY) (STANDARD-ERROR-STAT-MEASURE OF) (ROLE-BASED-PERSON ON) (EVALUATE WITH) (SIMILAR IN)
    (POLICY ON) (T-TEST OF) (HIGHER IN) (OUTDEGREE IN) (VARIABLE/TERM WITH) (VALUE IN) (ITEM ON)
    (DISCUSS IN) (T-TEST WITH) (CAPTURE BY) (SOCIABILITY WITH) (ITEM WITH)
    (CRONBACHS-ALPHA-STAT-MEASURE OF) (LIST IN) (MIDPOINT OF) (COMPETITION AMONG) (ITEM IN) (ASK IN)
    (WORD-CL-VERB OF) (RELATION TO) (QUESTIONNAIRE IN) (COMPENSATION FOR) (POINT FOR)
    (BIO-PROCESS WITHIN) (STRESSOR |SUCH AS|) (NETWORK BETWEEN) (MINIMIZE |DUE TO|) (RELATIONSHIP OF)
    (PRONE TO) (BIO-MAKE-STATEMENT OF) (ISOLATION IN) (PANDEMIC IN) (HABIT |SUCH AS|) (EFFICACY IN)
    (COMMUNITY AGAINST) (IMPLICATE OF) (COVID-19 WITH) (INDICATE BY) (DATA OF) (INFORMATIVE FOR)
    (ALL OVER) (R-SQUARED-STAT-MEASURE FOR) (DIE BEYOND) (DIE FOR) (DIE PER) (SIZE PER)
    (MEAN-STAT-MEASURE FOR) (PROBABILITY OF) (DIE FROM) (RESPONSE IN) (DOCUMENT ACROSS) (SEVERITY OF)
    (IDEOLOGY WITHIN) (RESOURCE |ON ACCOUNT OF|) (PANDEMIC THROUGH) (REGRESSION ON) (RELEVANT TO)
    (DWARF BY) (QUESTIONNAIRE BY) (WEAKER IN) (MARKER OF) (EMERGE FOR) (AVERAGE INTO)
    (REPUBLICAN-ENDURANT AT) (DEMOCRAT AT) (STORYLINES FOR) (MOTIVE-ENDURANT REGARDING)
    (INTERFACE WITH) (DISMISSIVE TOWARDS) (APATHETIC TO) (WORK AT) (CURIOUS |IN LIGHT OF|)
    (APATHY TOWARDS) (INTENTION AS) (RELATION BETWEEN) (MEDIATE BY)
    (95-PERCENT-CONFIDENCE-INTERVAL-STAT-MEASURE FOR) (ITEM FROM) (NORM TO) (CORRELATION BETWEEN)
    (RELATION AMONG) (HYPHENATED-PAIR ON) (BEHAVIOUR IN) (PANDEMIC TO) (EMERGENCY |SUCH AS|)
    (ATTITUDE UNDER) (PESSIMISM AS) (COMPLEMENT WITH) (ROBUST TO) (SUSCEPTIBILITY TO) (COMPUTE BY)
    (MOLECULE TOWARDS) (STIMULUS FOR) (SEPARATE IN) (FRAMEWORK FOR) (THRESHOLD FOR) (GOAL OF) (NOT TO)
    (NORM |IRRESPECTIVE OF|) (WAY OF) (PROPOSE BY) (THINK-PERDURANT |TOGETHER WITH|) (ANALYZE ABOVE)
    (INFORMATION IN) (LOCATION ON) (CORRELATE WITH) (BOTH AGAINST) (FACT FROM) (OBSERVE WITH)
    (CORRELATION AMONG) (RELATIONSHIP AMONG) (BIO-METHOD FOR) (PERCENTAGE OF) (BIO-METHOD AGAINST)
    (SCALE ON) (ASK FOR) (AGE-CL-VERB BETWEEN) (RELATIONSHIP TO) (COLLECT AS) (BEHAVIOR AGAINST)
    (LINK BETWEEN) (COVER BY) (DIE OF) (CONNECTION BETWEEN) (REASON-AUTO WITH) (REFLECT IN)
    (DRAWN FROM) (ABILITY TO) (REASON-AUTO VS.) (VACCINE FOR) (EXPERT-ENDURANT FROM) (BOTH BY)
    (DISCRIMINATE DURING) (BIO-QUESTION IN) (STATUS WITHIN) (NETWORK OF) (AVAILABLE FROM) (FEELING ON)
    (ASK TO) (QUESTIONNAIRE AT) (PERFORMER IN) (PRECONDITION FOR) (SUBSCALES BETWEEN)
    (ROLE-BASED-PERSON AT) (AMAZE AT) (KNOW OF) (ATTENTION IN) (NATURE OF) (INFORMATION WITH)
    (EMPATHY IN) (STIGMA FROM) (PEOPLE NEAR) (TAKEN INTO) (COMPARE BETWEEN) (CONTAGION AS)
    (OBSERVE IN) (TEST UNDER) (ANXIETY FROM) (BIO-FUNCTION AS) (ANXIETY OF) (RELATIONSHIP FROM)
    (STANDARDIZE IN) (WILLINGNESS AS) (LEVEL AS) (ANALYZE AS) (DISTRIBUTION REGARDING)
    (OVEREXPOSURE TO) (BEHAVIOUR FOR) (OBSERVE DURING) (ROLE-BASED-PERSON AS) (OBSERVE THROUGHOUT)
    (MOTIVATOR FOR) (NETWORK FOR) (DIVISION OF) (COVID-19 BY) (SAY OF) (ACCEPTABILITY THROUGH)
    (BIO-CONTEXT OF) (ORGANIZATION OF) (GROUP TO) (COLLECT WITHIN) (CATEGORIZE INTO) (PARTY VS.)
    (GATHER OF) (RECRUIT FROM) (IDEOLOGY |IN TERMS OF|) (GOVERN BY) (GOVERNOR TO) (NEWS IN)
    (ACQUIRE OF) (REASON-AUTO |ACCORDING TO|) (NEW IN) (BACK TO) (RELATIVE-ENDURANT TO)
    (RELATIONSHIP BETWEEN) (ASPECT OF) (VARIANCE BEYOND) (CONFIRM BY) (EMERGE BETWEEN)
    (APPRECIATION OF) (CHANGE OF) (ADJUSTMENT FOR) (STRUCTURE OF) (VARIANCE OVER) (PROVINCE OF)
    (LAUNCH DURING) (APPROVE BY) (RECRUIT VIA) (PERCENT FOR) (SERVE AS) (OUTCOME IN) (REDUCE OF)
    (CRISIS IN) (KIND-ENDURANT OF) (THEORY ON) (CONGRUENT WITH) (ROLE-BASED-PERSON |OUT OF|)
    (ANSWER ON) (OPINION ON) (INTRODUCE BY) (ATTITUDE TOWARDS) (MENTALITY AS) (DISTINCT FROM)
    (BIO-PROMOTE BY) (TEST AS) (BOTH TO) (INTRODUCE AS) (ITEM |DUE TO|) (ATTITUDE TOWARD)
    (ADVICE FROM) (VIRUS FROM) (POLICY DURING) (QUALIFY BY) (REFLECT BY) (TIGHTNESS VS.) (ONSET IN)
    (REPROGRAM OF) (ROLE-BASED-PERSON FOR) (HYPHENATED-PAIR OF) (PRODUCT PER) (DIE DURING)
    (PERSPECTIVE ON) (INEQUITY IN) (BIO-UTILIZE BY) (RESPONSIBILITY IN) (CONSIDER REGARDING)
    (HYPHENATED-PAIR CA.) (BIO-PROCESS IN) (THANKFUL FOR) (PARTICIPATION IN) (ARGUMENT-SUPPORT BY)
    (ENROL AT) (MORTALITY IN) (AWARENESS OF) (DISEASE IN) (OBSTACLE FOR) (ACCESSIBILITY FOR)
    (PREDICT IN) (RISK OF) (BED-ENDURANT PER) (REQUIRE OF) (REMAIN AS) (TREATMENT IN) (AGE ON)
    (EFFECT WITH) (MUNICIPALITY WITH) (COMORBIDITY IN) (SEVERITY IN) (OCCUR BETWEEN) (COVID-19 IN)
    (COMORBIDITY ON) (EFFECT FOR) (APPROXIMATION WITHIN) (PLOT AGAINST) (AVAILABLE FOR)
    (COLLECTION TO) (DEFINE AS) (CASES-PATHOGEN IN) (EXPERIMENTAL-CONDITION INCLUDING)
    (POPULATION WITH) (LINK TO) (STUDY WITH) (SUBSTANCE OF) (BOTH FOR) (RESPONSE ABOUT)
    (INDICATOR FOR) (DISTANCE WITHIN) (CLINICS WITH) (DETERMINANT OF) (ARGUMENT FOR) (EMERGENCY UNDER)
    (THOUGHTLESSNESS BY) (TEMPERATURE THROUGHOUT) (CITY IN) (PROCESS-RATE IN) (SHOW AT)
    (DISTRIBUTION ACROSS) (BIAS TOWARDS) (CASES-PATHOGEN TO) (CAPITAL-ENDURANT |SUCH AS|) (EXAMPLE OF)
    (TRANSMISSION BEFORE) (PEOPLE FROM) (REPORT |OUTSIDE OF|) (COMBINATION OF) (PROHIBITION OF)
    (DEVELOPMENT OF) (CONTROVERSIAL FROM) (NOT WITH) (BIO-FIT TO) (PERFORM IN) (SUMMARIZE OF)
    (CONTROL FOR) (BIO-EXCHANGE OF) (AIRPORT WITH) (CITY WITH) (CONNECTION TO) (ROUTE AS)
    (INFORMATION ON) (VALUE FOR) (DATA FOR) (TRANSPORTATION AMONG) (CELL-GROWTH OF) (SURVIVAL OF)
    (BIO-PROCESS AT) (LIST AS) (RESTRICTION ON) (CONDUCT IN) (THOSE WITH) (CAUSE BY) (DECISION FOR)
    (OUTBREAK-OF-DISEASE OF) (MEAN-STAT-MEASURE OF) (AWARENESS DURING) (RESOURCE |SUCH AS|)
    (RESULT IN) (EXAMINE OF) (MAJORITY-AUTO OF) (IDEATION WITH) (EXPOSURE AS) (ANXIETY |DUE TO|)
    (THEORY OF) (RAMIFICATION OF) (AGREEMENT WITH) (LOGISTIC-REGRESSION WITH) (BIO-QUESTION REGARDING)
    (NOT AT) (GATHER OVER) (DISRUPT |DUE TO|) (ASSESS THROUGH) (EXPOSURE TO) (EXPLORATORY IN)
    (FOUNDATION FOR) (DEPRESSION AMONG) (MOST-RELEVANT UNDER) (DIE BY) (DIE AMONG) (DISRUPT TO)
    (NEED FOR) (BEHAVIOR AMONG) (COLLECTION FROM) (APPROACH TO) (EFFECT-SIZE-STAT-MEASURE FOR)
    (BEHAVIOUR BY) (ET-AL. OF) (AREA FOR) (TIME-UNIT DURING) (INCREASE IN) (ENFORCE |AS A RESULT OF|)
    (BEHAVIOUR BEFORE) (SUM WITHIN) (DATA FROM) (BEHAVIOR DURING) (BEFOREAND DURING) (BOTH IN)
    (LIFESTYLE AT) (DETAIL OF) (ARGUMENT-SUPPORT FROM) (BOOSTRESEARCH BY) (GRATEFUL TO)
    (IMPORTANCE TO) (ENFORCE BY) (CONFINEMENT ON) (EXPERIMENTAL-SYSTEM INCLUDING) (INTERVENTION IN)
    (WELLBE THROUGH) (PERIOD IN) (TIME-UNIT OF) (DESCRIBE OF) (GROUP THROUGH) (QUESTIONNAIRE FOR)
    (COLLECTION OF) (FOCUSSES ON) (INFORMATION FOR) (PLATFORM |SUCH AS|) (INVITATION VIA)
    (ACADEMICS AT) (GROUP FOR) (WELLBE VIA) (BEHAVIOUR DURING) (GENERATE OF) (DISRUPT OF) (FACULTY OF)
    (UNIVERSITY FOR) (SCIENCE AT) (STANDARD-DEVIATION-STAT-MEASURE OF) (REPORT BY)
    (ROLE-BASED-PERSON ABOVE) (HIGH IN) (PREVALENCE OF) (ROLE-BASED-PERSON DURING) (SHUTDOWN OF)
    (HALF OF) (STANDARD-DEVIATION-STAT-MEASURE FOR) (REPORT AS) (CONFIDENCE-INTERVAL-STAT-MEASURE OF)
    (ESTIMATE BY) (SCORE FROM) (SERIES OF) (BIO-AGENT FOR) (CONFIRM IN) (INTERACT DURING)
    (ASSISTANCE DURING) (A-LITTLE DURING) (COMMITMENT TO) (CHARACTERIZE AS) (TIME OF)
    (PEARSON-CORRELATION AMONG) (FREQUENCY FOR) (SPECIFY AS) (SCALE INCLUDING) (REPORT WITH)
    (PRESENTATION WITH) (NEED BEFORE) (GIVE ON) (RESPONSE FOR) (ALL IN) (MONEY-AUTO FOR)
    (GRADERS WITH) (VARIABILITY IN) (UNDERSTAND OF) (BUFFER AGAINST) (BURDENSOMENESS ON)
    (COMPLIANCE WITH) (VIEW OF) (CONSEQUENCE FOR) (CITY OF) (BEHAVIOR IN) (RELIANCE ON) (ROLE IN)
    (EXPLANATION BY) (END TO) (BELIEF TO) (SAMPLE FROM) (MEASURE-AS-MEASUREMENT IN) (CORRELATION WITH)
    (UNRELATE TO) (FILL OUT) (SCALE TO) (ITEM OF) (VERSION OF) (IMPULSIVITY IN) (GENE-CODE AS)
    (DATA BY) (CRONBACHS-ALPHA-STAT-MEASURE FOR) (STRATEGY BEFORE) (TAKEN AGAINST)
    (BEHAVIOR |REGARDLESS OF|) (PEOPLE WITH) (EVIDENCE FROM) (FAITH IN) (GROUP IN) (AFFLICT BY)
    (FINDING FROM) (WORK-ON IN) (UNFOLD AMONGST) (EXTENT TO) (STUDY BY) (SOCIALIZATION THROUGH)
    (ASPECT DURING) (DECISION AT) (FREQUENCY AMONG) (COLLECTION FOR) (RESPONSE WITH)
    (COPE-ENDURANT WITH) (BIO-QUESTION ABOUT) (MOTIVATION AT) (SHOW IN) (CATEGORY BETWEEN)
    (CATEGORIZATION BY) (HOLDER FOR) (DETAIL FOR) (CRITERION FOR) (CONDUCT |ACCORDING TO|)
    (MOTIVATION FOR) (ISSUE WITH) (BIO-USE OF) (CURFEW IN) (BIO-ACTIVITY DURING)
    (CHOICE-ENDURANT WITH) (BIO-QUESTION OF) (STATUS |ALONG WITH|) (COME INTO) (LEVEL AT) (GROUP OF)
    (DISTRIBUTE ACROSS) (QUESTIONNAIRE OF) (DISCOVERY IN) (BRIEN FROM) (POWELL FROM) (COLLECTION IN)
    (ABODOLLAHI FOR) (POLICY FOR) (AREDRIVEN BY) (COUNT-OF IN) (COEFFICIENT FOR)
    (STANDARD-ERROR-STAT-MEASURE AT) (CHANGE IN) (POLICY WITH) (GATHER AT) (QUARANTINE FOR)
    (DIVISION INTO) (POLICY IN) (DATE OF) (MOVEMENT FOR) (STATISTIC FOR) (DRUG FOR) (GATHER BY)
    (DATA ON) (CASES-PATHOGEN FOR) (MOBILITY IN) (POLICY |SUCH AS|) (CHANGE-TO IN) (CAUSE OF)
    (INDICATOR IN) (PRESENCE AT) (PEOPLE IN) (DECISION TO) (PROCESS-RATE BEYOND) (LEVEL BELOW)
    (INCONSISTENCY IN) (BIO-RANGE FROM) (STAY AT) (ITEM FOR) (AGE-CL-VERB FROM) (AVOIDANCE OF)
    (IMPLEMENTATION OF) (TIME-OF-DAY OF) (BIO-FIND IN) (INSTRUCT BY)))

(defparameter *known-adjunct-attachments*
  '((QUANTITY (AS)) (INTAKE (WITH)) (WEBSITE (|SUCH AS| IN AT)) (MINDFULNESS (TO DURING ON))
    (RECORD (BY)) (INSTRUCTION (AT IN)) (RMB (UPON)) (MONTH (OF TO))
    (AMOUNT-OF-TIME (IN FOR INTO AFTER BY AT |DUE TO| AS BETWEEN))
    (MONTH-OF-THE-YEAR (BY FOR TO IN |DUE TO|)) (START (FROM)) (CITY (OF WITH TO IN FOR DURING))
    (ADULT-ENDURANT (AS WITHOUT DURING WITH FROM)) (LOCKDOWN (FOR IN)) (ADDRESS (IN)) (RELY (IN FROM))
    (TRAIT (IN |NEXT TO|)) (TERM-NAME (FOR OF)) (MULTIPLE-LINEAR-REGRESSION (INCLUDING))
    (COVID-19
     (AS IN BY WITH ACROSS ABOVE OVER FROM AT ON WITHIN AMONG FOR TO |AS OF| AMONGST |TOGETHER WITH|
      |BY MEANS OF| |DUE TO| BETWEEN VIA))
    (BEHAVIOR
     (|SUCH AS| DURING |REGARDLESS OF| IN AMONG BY AGAINST WITH REGARDING VIA THROUGH |WITH REGARD TO|
      WITHIN ON AS FOR UNDER |IN LIGHT OF| AMONGST AT |ACCORDING TO| |IN THE LIGHT OF|))
    (CONSTRAINT (TO)) (TEND (OF TO TOWARD IN VIA)) (AGREEABLENESS (VS.))
    (TRAITDIMENSIONS (|IN LINE WITH|)) (MAN (FROM WITH)) (FACTOR (IN OF))
    (POPULATION
     (WITH DURING OVER ON AS BELOW AMONG AT ACROSS IN ABOUT FROM |ALONG WITH| |WITH REGARD TO|))
    (COST-ENDURANT (|IN TERMS OF| TO)) (ACCEPTANCE (OF AT)) (AUTHORITY (AROUND)) (WILLINGNESS (AS IN))
    (SUBSTANCE (OF DURING)) (ATTENDANCE (AT)) (GRANT (FROM)) (PARTICIPATE (TO IN))
    (UNCLEAR (|DUE TO|)) (LOAD-ENDURANT (ON)) (RELEVANCE (IN OF))
    (REPORT (WITH AS BY |OUTSIDE OF| ON IN FOR ACROSS FROM |IN CASE OF| OF))
    (CARE-ENDURANT (FOR THROUGH |AS OF| ON ABOUT IN))
    (PERCENT (TO ACROSS FOR IN BY ABOUT WITHIN BETWEEN VS.)) (PARENT (WITH OF)) (EMAILS (WITH))
    (GROUP (OF IN FOR THROUGH TO ON AT AS WITH))
    (TIME-UNIT (OF DURING BEFORE FOR PER WITH TO IN INTO BY FROM FOLLOWING AFTER AT))
    (ASPECT (DURING OF AFTER ABOUT IN)) (NECESSITY (WITHIN OF)) (OVERWHELM (BY)) (PROVIDER (IN))
    (STRESS (THROUGHOUT OF AS)) (AGREEMENT (WITH ON TO AT)) (EMPLOYMENT (IN AT)) (DRIVER (FOR))
    (ADAPTATION (OF)) (TARGET-PROTEIN (FOR OF)) (BE (IN AT OF FOR WITH WITHOUT ON BETWEEN))
    (EDUCATION (IN ON)) (COMMUNICATION (ABOUT REGARDING FROM OF)) (CHARACTERIZE (AS BY OF TO))
    (KEY (TO)) (PANDEMIC (TO WITH AMONG ON THROUGH IN AS OF BY |SUCH AS|)) (REJECT (|DUE TO|))
    (ITEM (FOR OF |DUE TO| |OUT OF| FROM AS IN WITH ON BY ABOVE TO INTO)) (DISENGAGE (|IN TERMS OF|))
    (DIFFERENCE (ON WITH OF FROM)) (SCALE-CL-VERB (TO)) (REPEAT (IN))
    (RECOMMENDATION (FOR INTO ON BY |SUCH AS| OF)) (INFECT (BY FOR)) (FOLLOW (BY UP))
    (EVENT-FOLLOWS (UP)) (RISK (OF TO TOWARDS FROM)) (DEMOGRAPHICS (OF)) (KIND-ENDURANT (OF FOR))
    (UNAWARE (OF)) (THEIRPRESENTATIONS (TO)) (SIMILARTRENDS (IN)) (INFLUENCEEXACERBATIONS (OF))
    (CHARACTERISTICS (OF FROM |SUCH AS| TO AFTER))
    (MOLECULE (TO TOWARDS FOR IN |WITH RESPECT TO| REGARDING ABOUT OF FROM)) (VISIT (FROM TO))
    (EXAMINE (OF BY WITH |TOGETHER WITH| IN)) (ORDER-AUTO (DURING)) (DEPARTMENT (IN |AS A RESULT OF|))
    (DISEASE (IN AS BY OF OUT PER AT WITH INCLUDING ACROSS DURING FROM AMONG AFTER TO))
    (TRANSITION (OF FROM)) (ATTITUDE (TOWARD TOWARDS UNDER AS THROUGH IN OF TO AT))
    (COMPLEMENT (WITH BY)) (SAMPLE-SIZE-STAT-MEASURE (FOR WITH OF IN)) (EMERGE (BETWEEN FOR IN AS))
    (INCONGRUENCE (BETWEEN)) (GROUP-ENDURANT (IN WITHIN FOR OF ABOUT)) (DANGEROUS (AT TO))
    (CONSIDER (REGARDING IN AS TO |IN LIGHT OF|)) (DISCORD (BETWEEN))
    (MEASURE-AS-MEASUREMENT
     (IN AS AGAINST ON LIKE FROM ALONG WITH DURING TO |SUCH AS| FOR WITHIN INCLUDING))
    (SHOP (IN)) (GO (OUT))
    (COUNTRY
     (|IN ADDITION TO| DURING AMONG AT |DUE TO| |AS OF| LIKE BETWEEN OF WITH FOR TO ACROSS AS INTO
      |APART FROM| BY UNTIL BEYOND IN OVER ON AROUND |IN CONTRAST TO|))
    (MEDIAN-STAT-MEASURE (OF)) (AREA (FOR VERSUS WITH BETWEEN ABOVE))
    (BIO-CONCERN (DURING WITH OF TOWARD)) (LEARNING (ABOUT FROM)) (LEARN (FROM)) (DIFFER (FOR FROM))
    (CONJUNCTION (WITH)) (TEST (AS UNDER ACROSS AMONG PER BETWEEN WITH)) (ELIGIBLE (FOR))
    (ANXIETY (DURING AMONG |DUE TO| OF FROM WITH ON AT IN TO AS |AS A RESULT OF|))
    (EMOTION-AUTO (IN |SUCH AS|)) (BIO-ACT (FOR ON AS IN)) (CONTINENT (|IN TERMS OF| WITH))
    (WOMAN (IN))
    (PEOPLE
     (IN WITHOUT AT WITH ACROSS AMONG FROM NEAR DURING AGAINST PER FOR ON OF TO |IN NEED OF| ABOUT
      TOWARD))
    (SENTIMENT (ON)) (CORONAVIRUS (AS BY FROM |SUCH AS| FOR IN ON)) (ENOUGH (ABOUT FOR))
    (TIMEFRAME (FROM)) (BIGOTRY (TOWARDS)) (VIEW-AUTO (|IN CONTRAST TO|))
    (FIND-CL-VERB (WITH FOR AT TO)) (RHETORIC (THROUGHOUT)) (DYNAMICS (DURING WITH IN BETWEEN))
    (XENOPHOBIA (AGAINST IN)) (COMMERCE (AT)) (MEET-PERDURANT (FOR WITH)) (PUBLICIZE (IN))
    (BIO-FIND (IN TO BY)) (BIO-MECHANISM (IN TO OF AT))
    (EVENT-RELATION (BY TO OF FOR LIKE AT DURING FROM AS AGAINST WITH |IN TERMS OF|))
    (OPINION (ON OF)) (NOT (AT WITH TO IN FOR FOLLOWING AS FROM)) (HOSTILITY (TOWARDS))
    (PROLIFERATION (OF)) (EXPERIMENTAL-SYSTEM (INCLUDING FROM VERSUS)) (FACT (FROM OF DURING))
    (RESULT (IN ON FROM)) (PREPOSITIONAL-PHRASE (WITH OF ABOUT))
    (VARIANCE (OVER BEYOND BY |IN COMPLIANCE WITH| ACROSS))
    (ANALYZE (AT TO AS ABOVE WITH FOR INCLUDING IN |WITH RESPECT TO| |TOGETHER WITH| |DUE TO| ON))
    (NUMBER (FOR TO ON |OUT OF|)) (FREQUENCY (AMONG FOR ON IN REGARDING))
    (Z-SCORE-STAT-MEASURE (ABOVE)) (PROBLEM (DURING BEFORE IN FROM AS)) (REPRESENT (WITH))
    (ADMINISTER (IN)) (DISAGREEMENT (ABOUT BETWEEN))
    (BELIEF (TO BY VERSUS ACROSS OF VIA LIKE DESPITE ON |IN COMPARISON WITH| WITH AS |SUCH AS|))
    (NOSE (WITH)) (ANCHORAGE (AT)) (SCALE (DURING TO FROM INCLUDING ON BY IN WITH))
    (INDICATE (BY OF AT)) (AGE (IN ON WITH FROM)) (THREAT (FROM AMONGST TO AMONG |DUE TO|))
    (QUESTIONNAIRE (OF FOR AT IN INCLUDING |EXCEPT FOR| BY ON |IN REFERENCE TO|)) (ANGST (FOR))
    (EMERGENCY (UNDER |SUCH AS| LIKE AS ON BY IN)) (THREATEN (FOR AMONG BY)) (DISTRESS (AT DURING))
    (WELL-BEING (DURING ON BY)) (INSIGHT (TO REGARDING FROM ABOUT))
    (PROVIDE (IN NEAR WITH WITHOUT TO)) (FRAMEWORK (FOR |ALONG WITH|)) (UNCERTAINTY (AS IN WITH))
    (OPTIMISM (|ALONG WITH| TO FOR WITH)) (ORGANIZATION (OF AT))
    (ROLE-BASED-PERSON
     (FROM DURING ABOVE OF WITHOUT FOR |OUT OF| ON AS AT WITHIN INTO ACROSS TO PER OVER THROUGH BY
      ABOUT INCLUDING AFTER VIA))
    (TARGET (AT)) (OVERALL-ENDURANT (DURING)) (ACCESSIBLE (TO FROM VIA)) (ATTENTION (IN TO UNTIL ON))
    (COPE-PERDURANT (DURING)) (ASSET (TO)) (CONTAINMENT (OF)) (ANOTHER (WITH))
    (RESOURCE (|SUCH AS| IN |ON ACCOUNT OF| INCLUDING FOR OF DURING)) (FRAUGHT (WITH))
    (NATIONALISM (AS)) (PREPRINT (AT)) (SEMITISM (IN)) (SIDE (BY OF))
    (COMPARE (BETWEEN |IN TERMS OF| |REGARDLESS OF| |BY MEANS OF| FOR)) (SENSEMAK (DURING))
    (TOBELIEVE (IN))
    (BIO-QUESTION
     (OF ABOUT WITH ON REGARDING IN |WITH REGARD TO| |IN LIGHT OF| AT |WITH RESPECT TO| AS INCLUDING))
    (CATEGORIZE (|IN TERMS OF| INTO AS)) (STANDARD-DEVIATION-STAT-MEASURE (FOR OF ABOVE))
    (BALANCE (IN)) (PREDICTOR (OF IN ON FROM BY BETWEEN AMONG FOR AGAINST AS))
    (VALUE (FOR IN THROUGH AT ACROSS AS TO)) (SKEPTICISM (TOWARDS)) (ALSOCONSISTENT (WITH))
    (RESULTS (|IN LIGHT OF| FROM ABOUT ON REGARDING FOR IN TO AMONG |IN THE LIGHT OF| AS))
    (PLAY-CL-VERB (BY IN)) (NARCISSISM (AS)) (THEORY (OF ON IN |SUCH AS| INTO AS)) (PRODUCT (PER OF))
    (BE-CL-VERB (OF AT IN)) (IDENTIFY (WITH FROM)) (ROBUSTNESS (OF)) (RIGOR (IN))
    (EXPLANATION (BY AT OF IN)) (FACILITATOR (TO)) (GAP (BY IN)) (ALIGNMENT (ON))
    (PEARSON-CORRELATION (AMONG OF BETWEEN)) (EXPECT (OF)) (TASK (WITH)) (POWER (FROM OF))
    (TURK (FOR)) (RATE-PERDURANT (ON ABOVE)) (RUN (FOR INCLUDING IN WITHIN ACROSS)) (ILLUSTRATE (BY))
    (CONTROL (FOR REGARDING AS UNDER ABOUT |WITH REGARD TO| AMONG))
    (IMPORTANCE (TO AS |IN THE LIGHT OF| DURING AMONG IN)) (SPECIALIST (FROM)) (WELL (WITH))
    (RESPONSE (FOR WITH ABOUT IN TO AT AMONG AGAINST FROM REGARDING BY |WITH REGARD TO| AS))
    (PERCEPTION (FROM FOR BETWEEN AS)) (LACK (WITH BY ON)) (CONSTRUCT (FOR WITH AFTER)) (SOME (PAST))
    (BIO-EVENT (BY REGARDING FROM WITH)) (DISPROVEN (BY)) (SITUATION (WITH DURING IN FOR ON))
    (ARTICLE-FIGURE (IN OF)) (PRECIOUS (IN)) (WORKER (IN FROM DURING)) (BACK (TO BY))
    (PHENOMENON (IN DESPITE)) (DISPROPORTION (IN)) (KNOW (OF ON AS IN TO)) (MORE-ROBUST (TO))
    (PUNISHMENT (IN TO)) (INVOLVE (OF)) (ODDS (FOR IN)) (WORRY (FOR BY IN)) (MORE-PRONE (TO))
    (ADOPT (FROM IN)) (POWERLESS (AGAINST)) (MEDICINEAND (ON)) (RESPECT (FOR TO))
    (SHOW (IN AT TO OF BELOW BY ABOUT)) (SURVIVOR (FROM)) (STUDY (BY WITH TO |BY MEANS OF|))
    (HIDDEN (FROM)) (FREEDOM (FOR IN |IN VIEW OF|)) (ACCESS (TO)) (PREVENT (ABOUT FROM))
    (ONES (AS BEFORE WITH)) (SCARCITY (OF)) (PUT-SOMETHING-SOMEWHERE (AT)) (ADEQUATE (TO))
    (SCARE (ABOUT)) (EFFECT (BY TO FOR WITH THROUGH ON IN VIA BETWEEN |BY MEANS OF|))
    (BEENDETECT (IN)) (CHI-SQUARED-TEST (WITHIN))
    (VARIABLE/TERM (BEFORE FOR WITH INCLUDING ON FROM AT AMONG AS)) (SMOKE (PER)) (INVITE (AT))
    (VACCINE (FOR IN)) (GENDER (IN)) (CIGARETTE (PER))
    (MODEL (TO OF AS |IN ADDITION TO| WITH FOR WITHOUT AT)) (EVIDENT (AMONG IN))
    (BED-ENDURANT (AT PER IN)) (DESTINE (TO)) (IMBALANCE (BETWEEN)) (SECTOR (|DUE TO|))
    (ALARM (THROUGHOUT)) (RESPONSIBLE (OF)) (INTERVENTION (IN ON |SUCH AS| VIA TO)) (EXPOSITION (TO))
    (CORRELATION-COEFFICIENT-STAT-MEASURE (|SUCH AS|)) (ADJUSTMENT (FOR TO))
    (VIRUS (FROM AMONG ON IN WITH)) (DIFFICULTY (IN)) (MUSTSTAY (AT)) (FRIEND (ABOUT AT))
    (MENTION (AS)) (COMPATIBLE (WITH)) (FEMALE (WITH PER)) (DISCUSSION (OF ON |ACCORDING TO|))
    (ANSWER/INFO (AMONG TO OF ALONG THROUGHOUT FOR)) (SHOE (AT)) (MEASUREMENT (FROM))
    (NORDESTE (BETWEEN)) (DECREE (IN)) (HYPHENATED-NUMBER (IN)) (EMPOWERMENT (THROUGH))
    (UNDERLYINGPATHOLOGIES (|SUCH AS|)) (DESCRIBE (OF AS ABOVE BY)) (AFFECTINDIVIDUALS (OF))
    (NUMBER-SEQUENCE (WITHIN FROM)) (COHORT (IN FROM)) (RECEIVE (FOR)) (MEET (BY FOR))
    (APPEAR (OF TO)) (TREATMENT (IN OF ON AS FOR)) (WAY (FOR TO OF FROM)) (TWITTER (IN UNDER))
    (COMMUNITY (AGAINST WITH INCLUDING ON)) (BIO-PROMOTE (DURING BY OF)) (BORN (|OUTSIDE OF|))
    (ACTOR (BEHIND IN)) (MODEL-CL-VERB (BY)) (DELIVERY (FROM)) (EXAMPLE (OF INCLUDING))
    (RATIONALE (FOR)) (STRATEGY (BEFORE FROM IN FOR |WITH REGARD TO| AS AT WITH INCLUDING))
    (HYPHENATED-PAIR
     (VERSUS OF CA. IN TO ON WITH THROUGH ACROSS BY |ON THE PART OF| |IN ADDITION TO| AS AT))
    (QUARTER (OF)) (SUSCEPTIBILITY (IN TO OF)) (ADOPTION (OF)) (RAISE (ABOUT)) (RECOMMEND (BY))
    (EFFECTIVENESS (IN OF)) (INTERMEDIATE-ENDURANT (TO)) (COMPUTER (AT)) (THEPRESENCE (OF))
    (SPOKEN (AT)) (PLACE (ON INTO)) (SCORE (FROM ON FOR WITHOUT BY AS)) (PHRASE-CL-VERB (AS))
    (AVAILABLE (FROM FOR PER IN TO WITH UPON)) (APPROVAL (FOR)) (HUMIDITY (IN))
    (THOSE (OF WITH WITHOUT AT UNDER FROM IN)) (CONVENTION (FOR)) (CONTRIBUTE (FROM)) (TATSUMI (FOR))
    (NAKAGAWA (FOR)) (TEJIMA (FOR)) (MITSUYA (FOR)) (BIO-METHOD (AS AGAINST FOR DURING))
    (VALIDATE (OF BY)) (ALIVE (IN)) (STEEPNESS (IN)) (MORTALITY (IN FROM FOR AMONG BY |AS OF| OF))
    (CORRECT (BY)) (HOMOGENEOUS (ACROSS)) (RETRIEVABLE (FROM))
    (DATA (ON FOR BY VIA FROM OF IN BETWEEN AT |IN RELATION TO| PER)) (ASSUMPTION (OF))
    (TEMPERATURE (THROUGHOUT DURING IN)) (RATE-ENDURANT (OF BY IN ON FOR ACROSS PER)) (RETRIEVE (ON))
    (RESEARCHER (IN)) (RATIO (BETWEEN)) (BIO-STATE (WITHOUT WITH AS DURING AFTER FROM OVER))
    (INCIDENCE (OF)) (LIBERALS (FROM IN)) (SELECT (FROM AS)) (ENDORSE (AS BY))
    (NORM (|IRRESPECTIVE OF| TO IN FOR)) (PERSPECTIVE (ON IN FROM)) (EFFORT (IN AT AS))
    (ESTIMATE (BY OF)) (HEALTH (DURING FROM |IN COMPARISON WITH| THROUGH AT TO)) (SKEW (OF))
    (SOURCE (THROUGH)) (ARTICLE-TABLE (INCLUDING)) (EXCLUDE (|DUE TO| FOR)) (ANALOGOUS (TO))
    (MOBBS (IN)) (REGRESS (ONTO ON)) (IDEOLOGY (|IN TERMS OF| ON WITHIN IN WITH ACROSS AS))
    (INACCURACY (IN)) (VIEW (OF |IN FAVOR OF| ON)) (PROCESS-CL-VERB (OF)) (URGENCY (IN))
    (COLLECTION
     (FOR WITHIN IN ON TO OF AMONG WITH DURING FROM AROUND BEYOND AS TOWARD |IN TERMS OF| BY AGAINST
      BETWEEN OVER BEFORE THROUGH ACROSS ABOUT INTO REGARDING PER AT UNDER TOWARDS |SUCH AS|
      FOLLOWING))
    (TRANSFORMATION (OF)) (FACILITY (FOR IN)) (MINORITY-AUTO (IN)) (STRENGTHEN-CL-VERB (AFTER))
    (HOME-ENDURANT (THROUGH IN |EXCEPT FOR| DESPITE)) (OVERREPRESENT (IN))
    (OCCUR (AS BETWEEN THROUGH IN AT)) (ALGORITHM (TO)) (CONDITION (ON)) (URBAN (VS.)) (MALE (VS.))
    (PROCESS-RATE (BEYOND IN BY PER)) (RESID (IN)) (INCREASE (|CLOSE TO| AMONG IN OF FROM WITH))
    (VARY (BY)) (PROPORTION (BY AMONG WITH)) (AFFAIR (|AS OF| BETWEEN)) (SIMILAR (AMONG IN ACROSS BY))
    (RELATIVE-TIME (BEFORE AFTER ON OF)) (95-PERCENT-CONFIDENCE-INTERVAL-STAT-MEASURE (FOR BETWEEN))
    (BASELINE (FOR TO)) (DATE (OF AS FROM TO THROUGH BY)) (DATABASE (BY ON OF))
    (OUTCOME (IN FOR WITH AMONG FROM)) (DEATH (|AS OF| BY OF IN)) (SITE (OF)) (ENCOURAGE (BY))
    (ADHESION (WITH VIA)) (GUIDELINE (AS)) (INDICE (FOR)) (ESTIMATOR (WITH THROUGHOUT))
    (COLLECT (WITHIN AS BETWEEN AT DURING)) (MEDIATOR (|EXCEPT FOR| ON BETWEEN)) (PAY (TO))
    (ANTECEDENT-ENDURANT (OF)) (HYGIENE (AMONG)) (BIO-PATIENT (DURING IN))
    (ALL (TO IN OVER ON ACROSS VIA ABOUT)) (DISTANCE (AMONG WITHIN UNDER TO DURING VIA FOR WITH))
    (REPRESENTATIVE (FOR OF)) (CONTENT (DURING OF WITH)) (RANGE (FROM BY BELOW))
    (MOTIVATION (FOR AT BY)) (EMPATHY (ON AS IN TOWARDS FOR)) (COMPANY (TO))
    (POINT (FOR TOWARDS ACROSS)) (ISSUE (WITH DURING ON OF)) (APPROACH (TO IN NEAR WITHOUT AT))
    (DIFFERENT (FROM IN)) (RENDER (|AS TO|)) (PATTERN-ENDURANT (WITH OF ACROSS IN)) (HIGH (IN FROM))
    (GOVERNMENT (ABOUT WITH IN)) (ENCOURAGEMENT (OF)) (CANCELLATION (OF)) (EVIDENCE (FROM IN TO ON))
    (INTERPRETATION (OF |IN LIGHT OF|)) (HIGHER (IN FOR)) (VALUE-IS-NEGATIVE (WITH))
    (SPECIFIC (TO ACROSS)) (MEDIANVALUE (OF)) (THAT (OF FOR)) (POSE (BY)) (SPHERE (TO)) (PATION (BY))
    (STOCKPILE (FROM OF)) (ABILITY (TO WITH)) (CONFIDENCE (IN)) (MOLECULAR-LOCATION (OF)) (ITY (TO))
    (FACEBOOK (IN)) (WORLDWIDE (|AS OF|)) (OUTLOOK (FOR)) (RECRUIT (VIA FROM THROUGH)) (GOAL (OF IN))
    (SAMPLE (FROM BETWEEN |IN COMPARISON WITH| TO ACROSS)) (SPONSE (TO)) (CATEGORY (OF BETWEEN BY))
    (PROFUNDITY (OF)) (IDENTICAL (FOR)) (RANDOMIZE (WITH)) (MEASURE (FOR)) (ORDER (OF))
    (EACH (|SUCH AS| IN)) (COMPETENCY (IN)) (ARGUMENT-SUPPORT (TO FROM BY OF THROUGH PAST))
    (MUCH (UNDER AS |IN TERMS OF| LIKE)) (SOPHISTICATION (IN FOR)) (PREDICT (IN OF ON BY))
    (INOCULATION (|IN THE FACE OF|)) (MISPERCEPTION (ACROSS IN))
    (INTENTION (AS AMONG |REGARDLESS OF|)) (SCIENCE (TO AT BEHIND)) (POLITICIZATION (OF))
    (FALSEHOOD (AMONG)) (STANDARDIZE (IN ACROSS WITHIN)) (CONSERVATIVES (IN)) (MEMBER (IN OF FROM))
    (OUTLET (|SUCH AS|)) (LABEL (AS)) (PUBLICATION (OF)) (FUND (FROM)) (ARECHAR (FOR))
    (FINDING (FROM ON WITH REGARDING TO)) (OBTAIN (FOR VIA)) (MAKE-UP (UNDER OF)) (TRUE (VERSUS))
    (DISCERNMENT (FOR BETWEEN)) (RATE-AS-EVALUATE (ON FROM))
    (RELATIONSHIP (BETWEEN FROM TO AMONG OF ACROSS)) (ACCURACY (VERSUS INTO IN)) (MIDPOINT (OF IN))
    (PARADIGM (ON)) (HEADLINE (AT |AS FOR|)) (PARTY (VS. OVER)) (PREFERENCE (OF FOR)) (SEE (WITH))
    (RESPONSESBELIEF (IN)) (NOTE (BELOW)) (NEWS (IN OF AT)) (TIME (FOR OF WITH IN BEFORE FROM PER))
    (SEVERE (AMONG)) (EQUIPMENT (FOR)) (WHICHRELIES (ON)) (ADOLESCENTS (DURING)) (ALTRUISM (DURING))
    (EPIDEMIC (ACROSS WITH AMONG)) (LESSON (FROM)) (BIO-ASSOCIATE (FOR)) (LONELINESS (AT OF WITH IN))
    (SYMPTOMATOLOGY (IN)) (RESPONDERS (TO)) (COUPLE (OF BETWEEN)) (DISCONNECTION (FROM AS))
    (FEEL-PERDURANT (BY OF)) (PROCLIVITY (FOR)) (INDUCE (OF)) (DRAWN (FROM IN)) (MEDIATE (BY THROUGH))
    (CELL-LINE (BETWEEN TO FOR THROUGH)) (CONTRAST (BETWEEN)) (ISSUE-CL-VERB (AT))
    (EXCEPTION (|SUCH AS| TO FROM)) (R-SQUARED-STAT-MEASURE (FOR WITH))
    (CONFIDENCE-INTERVAL-STAT-MEASURE (OF FOR)) (COMPLAINT (IN)) (EVALUATION (OF))
    (COMPLIANCE (WITH BY FROM TO)) (TIME-CL-VERB (OF)) (OVERLAY (ON)) (PROHIBIT (BY))
    (WASTHSANCTION (BY)) (IMPLEMENT (ON IN BY AT)) (MONITOR (OF BY)) (CAPTURE (BY |DUE TO|))
    (AWARENESS (DURING OF AMONGST)) (HAVE (AS WITH TO IN)) (CONTRIBUTOR (TO)) (HELPLESS (|DUE TO|))
    (PREVALENT (IN ACROSS AMONG)) (IN-LINE (WITH)) (DEPRESSION (AMONG DURING BY)) (PHARMACY (IN))
    (USS (DURING)) (DISADVANTAGE (TO)) (RESIDENT-ENDURANT (WITH)) (OXYGENATION (AT)) (HANDWASH (WITH))
    (DRINK (FOR)) (PASSENGER (IN FROM)) (PROPORTIONAL (TO))
    (BOTH (IN FOR TO BY AGAINST |IN TERMS OF| AT BETWEEN AS)) (VERSION (BY OF FOR))
    (DISTRIBUTION (ACROSS REGARDING OF IN AMONG)) (GOODS (WITH)) (SEEM (OF BY IN))
    (INTERACT (DURING |FOR THE SAKE OF| IN ON FOR)) (SCANNER (IN)) (WARD (IN)) (DIRECT-CONTROL (OF))
    (BIO-ENHANCE (OF)) (REVISE (FOR)) (UNDERTAKEN (BY IN)) (ESTABLISH (OF)) (DAMAGE (TO FROM))
    (COUNTERMEASURE (|SUCH AS| AGAINST)) (EXTENSIVE (IN))
    (LOCATION (|SUCH AS| ON DURING OF BETWEEN WITH)) (REGRESSION (ON BY WITH FOR OF))
    (COMPLEXITY (WITHOUT)) (PERIOD (IN AS FOR FROM)) (WINDOW (TO OF)) (PRETATION (OF))
    (CHOICE-ENDURANT (WITH AS OF |SUCH AS|)) (CLASSIFY (INTO)) (DENSITY (IN))
    (MEAN-STAT-MEASURE (OF ON FOR IN PER AT TO)) (EXPERIMENTAL-CONDITION (INCLUDING IN))
    (AUTOCORRELATION (OF)) (SUSCEPTIBLE (TO AT)) (PANEL (OF)) (DAY-OF-THE-MONTH (TO AS THROUGH))
    (REGION-OF-MOLECULE (OF BY)) (AIRPORT (WITH IN)) (SERVE (AS BY)) (ERROR (OF ON IN FOR))
    (PARAMETER (IN FOR)) (CASES-PATHOGEN (FOR AMONG BY TO IN PER TILL AMONGST WITH OF FROM ACROSS AS))
    (STRONGHOLD (IN)) (DIE (AMONG BY DURING OF FROM PER FOR BEYOND |DUE TO| AS))
    (TRIBUTION (|IN TERMS OF|)) (ET-AL. (OF AT FOR)) (COUNTY (PER IN WITHIN WITH))
    (PERSON (WITH OUTSIDE UNDER)) (CALCULATE (ON AS AFTER)) (POLLUTION (ACROSS)) (DISPARITY (BETWEEN))
    (VULNERABILITY (TO OF)) (SPEND (UNDER PER)) (CONFOUNDERS (AT)) (SYNONYMOUS (WITH))
    (BELN (|OUT OF|)) (BETA-STAT-MEASURE (AS)) (FATALITY (IN)) (DETERMINE (BY))
    (OUTBREAK-OF-DISEASE (OF AS |SUCH AS| |AS OF| AT BY IN)) (SMEETS (FOR)) (GENERALIZABILITY (OF))
    (CONSIST (TO)) (CONDUCT (|ACCORDING TO| IN FOR BETWEEN INCLUDING WITHIN))
    (DEVELOPMENT (OF REGARDING)) (HELPFUL (IN)) (LIKELY-ADJ (|DUE TO|)) (MORE-AFRAID (OF))
    (RELEVANT (TO FOR)) (R-STAT-MEASURE (FOR BETWEEN)) (DISRUPT (OF TO |DUE TO| IN)) (TOPIC (IN AS))
    (INTOLERANCE (OF)) (RESIDENCE (BY)) (INFORMATION (INCLUDING FOR ON WITH IN BY FROM LIKE OF))
    (DISPOSITION (TOWARDS)) (DISPOSE (TO)) (HARM (FOR)) (PERHAPS (IN)) (SUGGEST (FROM TO BY IN AS))
    (BEHAVIOUR (DURING BEFORE BY TO FOR IN THROUGH LIKE AMONG)) (LINK (TO BETWEEN FOR THROUGH))
    (CONFINEMENT (ON THROUGH AS VIA)) (CONSPIRACY (REGARDING ON THROUGH AS)) (MENTALITY (AS ON))
    (STAY (AT |AWAY FROM|)) (DISENGAGEMENT (IN)) (PSYCHOLOGY (IN OF AS)) (CITIZEN (AT FROM IN))
    (BIO-CONTEXT (OF FOR)) (ORDINAL (IN)) (SYMPTOM (OF THROUGH IN TO AS)) (RECOUNT (IN))
    (MAKE (ABOUT)) (OBSERVE (THROUGHOUT DURING IN WITH OF)) (BIO-RANGE (FROM BETWEEN))
    (MEDICINE (FOR)) (GOVERNANCE (AT)) (CHALLENGE (INCLUDING)) (DRUG (FOR AMONG OF FROM))
    (ORGANIZATION-AUTO (FROM IN)) (OPTIMAL (FOR)) (YEAR (TO FROM)) (MATRIX (FOR)) (TRAVELLER (FROM))
    (TRANSPORTATION (AMONG TO OF)) (ZHAO (FROM)) (CONTACT (WITH)) (ADVOCATION (FROM))
    (COME (INTO FROM |ALONG WITH|)) (CAPABILITY (OF)) (ONSET (OF IN TO)) (STATISTIC (FOR ACROSS))
    (PRIOR-ENDURANT (FOR)) (TRANSMIT (BY)) (COUNT-OF (IN ON |DUE TO| AT)) (DOCUMENT (ACROSS |DUE TO|))
    (STATUS (|ALONG WITH| AMONG WITHIN BEFORE FOR WITH))
    (CHANGE (|WITH RESPECT TO| IN DURING OF |DUE TO| TO ACROSS FROM)) (CHANGE-TO (IN FROM))
    (PEAK (ON)) (CONTROLLABILITY (ABOUT)) (CELLULAR-PROCESS (TO IN)) (APPRAISAL (OF AS))
    (SOLVE (ACROSS)) (GENERALIZABLE (TO)) (DESIRABLE (FOR)) (ESTIMATION (|WITH RESPECT TO| ABOUT OF))
    (PHONE (BEFORE)) (PARTICIPATION (IN REGARDING WITH)) (BIO-USE (IN OF AS WITH)) (AGGRESSION (WITH))
    (RANGEDFROM (TO)) (CENTRE (WITHIN)) (SEVERITY (IN OF AS ABOUT)) (AUTHOR (FOLLOWING))
    (WRITTEN (BY)) (TOOKPARTICIPANTS (ABOUT)) (DANGER (FROM DURING TO IN OF)) (REGARD (TO AS))
    (CHEMICAL-REACTION (TO IN TOWARDS)) (GLMMTMB (FOR)) (SLIDER (|NEXT TO|)) (PORTRAY (WITH))
    (ORIENTATION (TO ON WITH)) (BEHAVIORMEASURES (AGAINST)) (LIMIT (|DUE TO| IN TO))
    (CONCERN (WITH OF OVER)) (PRACTICE (OVER)) (CONVERGE (IN)) (DISCREPANCY (BETWEEN))
    (CLASSIFICATION (BY)) (HETEROGENEITY (ACROSS IN)) (BEGIN (OF)) (CYCLE (BY))
    (BIO-PROCESS (AT IN TO WITHIN ABOUT BEHIND)) (SUBSTANTIAL (IN)) (AGGREGATE (INCLUDING))
    (ASSESS (THROUGH WITH AS)) (PRESENCE (AT VERSUS)) (COHESION (IN)) (COMPONENT (FOR)) (SEND (AT))
    (PRONOUN/PLURAL (IN WITH)) (REMINDER (FOR)) (COMPLETE-CL-VERB (ON |UP TO|)) (PROGRAM (DURING IN))
    (CODEBOOK (WITH)) (METHODOLOGY (IN)) (RESEARCH (FROM INTO OF ON)) (CORROBORATE (BY)) (DEGREE (OF))
    (PERCENTAGE (FOR OF WITH)) (DECREASE (AFTER BY)) (DATASET (OF FROM FOR)) (UNACAST (FOR))
    (CONCEPTUALIZE (AS)) (THISSTUDYEXAMINESTHESOCIOECONOMICANDPOLITICALDETERMINANTSOFENGAGEMENT (IN))
    (PROMINENT (IN)) (SOCIAL (FOR)) (OBSERVATION (ACROSS FROM)) (SKA (OVER)) (BIO-FIT (TO FOR))
    (SALIENCE (ON)) (PRESENTATION (WITH AS IN TO)) (NOMINATE (BY)) (RELIABILITY (FOR OF))
    (INTERVAL (OF)) (SALIENCY (OF ON)) (HUMAN (FROM)) (TACKLE (IN)) (LIBERALIZATION (OF))
    (FRAME-CL-VERB (OF WITH |WITH RESPECT TO|)) (PARALLEL-CL-VERB (IN)) (ENTER (AS IN))
    (CLOSURE (OF WITH)) (SUM (WITHIN |ACCORDING TO|)) (REGISTRATION (AT)) (INVENTORY (OF))
    (INEQUALITY (WITHIN ACROSS BY)) (THIS (AS PAST)) (MAP-PERDURANT (BETWEEN))
    (TOOL-ENDURANT (INCLUDING FOR)) (OFFER (IN)) (GEAR (AT)) (IDENTITY (FROM IN)) (ESSENTIAL (TO))
    (CORRELATION (WITH AMONG BETWEEN FROM FOR OF)) (INVARIANCE (OF)) (AFFIRMATION (IN))
    (MAINTAIN (OF)) (SUMMARIZE (OF IN)) (VALIDITY (FOR OF)) (METHOD (FOR)) (ANIMAL (WITH))
    (EVOLUTION (OF)) (SPECTER (OF)) (LITERACY (FOR)) (POPULAR (IN AMONG)) (CONTRADICTORY (TO))
    (USAGE (AS)) (COVERAGE (OF)) (SIGNIFICANCE (IN |EXCEPT FOR|)) (POPULARITY (OF))
    (PLATFORM (LIKE |SUCH AS| ON)) (MARK (BY)) (SEASONALITY (OF)) (PREVALENCE (OF IN))
    (INTRODUCTION (TO IN)) (VIDEO (ON)) (REPRODUCIBILITY (OF)) (ENGINE (AFTER))
    (PUBLISHED-ARTICLE (WITH)) (INTENSITY (FROM)) (PICK (BY)) (INTERNET (FOR FROM TO))
    (KEYWORD (AS IN)) (SURVEILLANCE (BY)) (DEFINITION (IN)) (MEDIUM (IN)) (ORIGIN (OF)) (PREP (INTO))
    (NOTEWORTHY (AS)) (WEAKER (IN FOR)) (HYPOTHESIS (REGARDING ON)) (LOAD-PERDURANT (ON))
    (CONSTRUCTION (OF)) (EFFECT-SIZE-STAT-MEASURE (FOR OF)) (INVITATION (VIA WITHIN)) (RETEST (OF))
    (INCLUSION (OF)) (REASON-AUTO (|ACCORDING TO| ON VS. WITH BEHIND)) (WORLD (IN AS))
    (GRIND-PERDURANT (FOR)) (GRIND (FOR)) (DIAGNOSE (WITH)) (FESTIVAL (IN)) (VULNERABLE (TOWARDS TO))
    (PARENTHESIS (BELOW)) (COEFFICIENT (FOR IN)) (EXPERIMENTATION (WITH)) (REST (OF)) (DENOTE (AS BY))
    (DEMOCRATIZATION (AS)) (TRANSMISSION (BEFORE OF IN)) (DECLARE (ON))
    (SYNDROMESFIRST (|OUTSIDE OF|)) (CHANCE (OF))
    (TAKEN (AGAINST |AS TO| INTO FROM WITH |IN TERMS OF| BY)) (SPREAD (WITHIN))
    (CONNECTION (TO BETWEEN WITH)) (BORDER (WITH)) (LEAD (FOR)) (EXPERIMENT (WITH))
    (ANXIOUSNESS (AMONG)) (RESTRICTION (ON FROM IN THROUGHOUT)) (EXPLORATION (BY))
    (YOUNGSTER (TOWARDS)) (SENSITIVITY (|UP TO| TOWARDS |ALONG WITH| IN)) (REFERRAL (FOR))
    (OVERESTIMATION (IN)) (WERESATISFACTORY (WITH)) (REDUNDANCY (IN)) (PROPERTY (OF)) (DRIVE (BY))
    (CONSISTENCY (FOR OF)) (CHECKLIST (WITH FOR)) (INSPIRE (BY)) (ASSURE (BY))
    (THEQUESTIONNAIRE (IN INCLUDING)) (DURATION (|ALONG WITH| FOR)) (NOTICE (FROM)) (SENSATION (LIKE))
    (PROPOSE (BY AS)) (STORY (OF)) (SEVERITYALONG (WITH)) (DEAL (THROUGH))
    (DISCUSS (IN BY |IN THE LIGHT OF|)) (IMPAIR (WITHIN)) (DESCRIPTIVE-STAT-MEASURE (OF FOR))
    (AVERAGE (INTO FOR)) (MAJORITY-AUTO (OF WITH)) (ENGAGE (IN)) (LIKELIHOOD (BY OF))
    (FEELING (ON AT)) (IMPLICATE (OF IN)) (INSTILL (ACROSS)) (POSITION (ACROSS)) (BODY (OF))
    (WORK (AT IN FROM)) (LOCATION-OF (IN WITH)) (FEAR (OF IN)) (PROCESSING (OF)) (ITALIANS (ON))
    (NATION (WITH VIA IN)) (EXPOSURE (IN TO AS TOWARD)) (CONSISTENT (ACROSS)) (BIO-ACTIVATE (OF))
    (OPENNESS (TO)) (COMPETITION (AMONG OVER)) (SCATTERPLOTS (AT)) (PRELIMINARY (|DUE TO|))
    (CONCLUSION (FROM AT)) (RHO-STAT-MEASURE (OF BETWEEN)) (COMPUTE (BY FOR)) (GITHUB (UNTIL))
    (SMOKER (IN)) (BIO-MAKE-STATEMENT (OF WITH)) (RECEPTOR (FOR)) (PROXIMITY (TO WITH)) (AWARE (OF))
    (AMERICANS (WITH)) (MATERIALS (FOR)) (VISIBLE (AMONG)) (SUPPORTIVE (OF)) (DECLARATION (OF))
    (MAKER (IN)) (MOTIVE-ENDURANT (TO REGARDING FOR)) (DIVERGENCE (BETWEEN)) (AVOIDANCE (OF TO))
    (SATISFACTION (DURING WITH)) (RESIDUALS (FROM)) (HAPPINESS (AS))
    (PESSIMISM (AS FROM |IN RELATION TO|)) (RESAMPL (WITH)) (AGENCY (AS)) (SELF (VS.))
    (RELATIVE-ENDURANT (TO OF)) (COMMITTEE (AT)) (PREPAREDNESS (IN)) (VULNERABILITÄTEN (IN))
    (LEBENSMITTELVERSORGUNG (IN)) (AMINO-ACID (WITH)) (JUSTIFICATION (FOR))
    (ASSISTANCE (WITH DURING IN)) (ADVICE (FROM LIKE)) (FACULTY (OF AT)) (REFUGE (IN))
    (HOPE-ENDURANT (FOR)) (THING (IN)) (THINK-ENDURANT (OF ABOUT)) (INHABITANT (ACROSS))
    (SAFE-ENDURANT (IN OUTSIDE)) (AFRAID (OF)) (LIMITATION (TO OF)) (REMAIN (AS IN))
    (POSITION-IN-A-SEQUENCE (TO)) (IMPACT (DURING IN)) (LIFE (WITH IN)) (COMPLY (TO WITH))
    (BIO-AGENT (FOR IN)) (PAYOFF (OVER IN)) (COSTLY (TO)) (CONNECT (IN)) (BIO-FUNCTIONALITY (WITH))
    (NUCLEOTIDE (PER)) (INDEX-CL-VERB (THROUGH)) (INHERENT (IN)) (EQUATION (FOR))
    (TIGHTNESS (VS. THROUGH)) (TRAJECTORY (OF)) (VERIFY (OF)) (MORE-AWARE (OF)) (SENSE (OF))
    (NATURAL (TO)) (AFOREMENTIONEDCONCERN (FOR)) (SAMPLEPOPULATIONAND (FROM)) (WASASSOCIAT (WITH))
    (QUANTIFY (BY)) (VISUALIZE (IN)) (COMPLICATION (|DUE TO|)) (GENERALIZATION (BY)) (NOISE (IN))
    (PROCEDURE (IN)) (LEVEL (BELOW AT AMONG IN AS VS.)) (TUN (OF)) (DEVIATION (FROM)) (CHECK (BY))
    (PERFORM (IN |IN RELATION TO|)) (DESIGN (|IN ACCORDANCE WITH|)) (CAPACITY (FOR)) (QUALITY (OF))
    (GROUP-PERDURANT (INTO)) (TURN (TO)) (OPPORTUNITY (FOR)) (LOSE (OF)) (EFFICACY (IN DURING))
    (PSYCHOLOGICALREACTION (TO)) (STRESSOR (|SUCH AS| AS)) (PERCEIVE (AS)) (LOCK (DOWN))
    (FEEDBACK (ON)) (DEPICT (IN)) (ASK (TO FOR DURING IN AS)) (TRUSTWORTHY (AT))
    (WORD-CL-VERB (OF FROM)) (INCONSISTENT (WITH)) (TYPE (OF)) (PATHWAYSTEP (TOWARD IN))
    (DIMENSION (IN BETWEEN INCLUDING)) (LEADERSHIP (IN)) (RESPONSIBILITY (IN FOR FROM)) (MESSAGE (ON))
    (WELLBE (VIA THROUGH ON OF)) (HOC (FOR)) (TECHNIQUE (IN ON)) (SIGNIFICANTRELATIONSHIP (TO))
    (RELATION (AMONG BETWEEN TO WITHIN WITH)) (INTERCORRELATIONS (AMONG)) (INTERVENTIONPRIOR (TO))
    (DISCARD (FROM)) (AOT (WITH)) (FRUITFUL (FOR)) (STRAIN (OF)) (UPTAKE (OF)) (FLATTEN-AUTO (OF))
    (WORSEN (OF)) (CONNECTIVITY (IN)) (ISOLATE (IN)) (MISS (OUT))
    (STANDARD-ERROR-STAT-MEASURE (AT OF)) (EVALUATE (WITH)) (T-TEST (WITH OF))
    (SINGLE-CAPITALIZED-LETTER (WITH ON TO)) (OUTDEGREE (BETWEEN IN)) (MAJOR-CL-VERB (AT))
    (NOMINATION (ACROSS)) (SOCIABILITY (WITH)) (CRONBACHS-ALPHA-STAT-MEASURE (FOR OF))
    (ANSWER (ON WITH)) (LIST (AS IN)) (COMPENSATION (FOR)) (NETWORK (FOR OF WITHIN BETWEEN))
    (MINIMIZE (|DUE TO|)) (SOCIALIZE (BEYOND)) (CRISIS (IN AMONG)) (HABIT (|SUCH AS|)) (SUPPLY (FROM))
    (TRANSPARENCY (DURING)) (OPERATIONALIZE (BY)) (INFORMATIVE (FOR)) (CHOSEN (AS)) (ACCOUNT (BY))
    (RESIDUE-ON-PROTEIN (AT)) (SIZE (PER)) (PROBABILITY (OF)) (RESPONSIVE (WITH IN)) (SETTING (TO))
    (HAIL (AS)) (SCOPE (TO)) (DECADE (OF)) (CONSERVATISM (ON)) (DWARF (BY)) (MARKER (OF))
    (STIMULUS (FOR TO)) (REPUBLICAN-ENDURANT (AGAINST AT)) (DEMOCRAT (AT)) (STORYLINES (FOR))
    (POSSIBILITY (BY)) (FACE (|IN TERMS OF|)) (INTERFACE (WITH)) (DISMISSIVE (TOWARDS))
    (APATHETIC (TO)) (CURIOUS (|IN LIGHT OF|)) (APATHY (TOWARDS)) (BASE (OF IN)) (BIO-CONTROL (FOR))
    (VARIANT (INCLUDING OF)) (ROBUST (TO)) (PUNISH (IN)) (SEPARATE (IN)) (THRESHOLD (FOR))
    (STANOVICH (IN)) (DISTINGUISHABLE (FROM)) (THINK-PERDURANT (|TOGETHER WITH|)) (LOOK-UP (FOR))
    (QUARANTINE (FOR)) (AGE-CL-VERB (FROM BETWEEN)) (ENDORSEMENT (OF)) (COVER (BY)) (REFLECT (BY IN))
    (EVALUATEEVIDENCE (FOR)) (VIROLOGY (TO)) (EXPERT-ENDURANT (IN FROM)) (DISCRIMINATE (DURING))
    (PERFORMER (IN)) (LAY-ENDURANT (ON)) (PRECONDITION (FOR)) (SUBSCALES (BETWEEN)) (AMAZE (AT))
    (NATURE (OF)) (THEME (THROUGHOUT)) (STIGMA (FROM)) (CONTAGION (AS)) (BENEVOLENCE (UNDER))
    (MODERATOR (IN)) (BIO-FUNCTION (AS)) (TAKE (TO)) (OVEREXPOSURE (TO)) (COLLABORATION (DURING))
    (MOTIVATOR (FOR)) (DIVISION (INTO OF)) (SAY (OF BY)) (ACCEPTABILITY (THROUGH)) (SELFIE (AS))
    (READ (IN)) (GATHER (BY AT OVER OF)) (GOVERN (BY)) (GOVERNOR (TO)) (ACQUIRE (OF)) (NEW (IN))
    (CONFIRM (IN BY)) (APPRECIATION (THROUGH OF)) (STRUCTURE (OF)) (VERBAL (VS.)) (PROVINCE (IN OF))
    (LAUNCH (DURING)) (COP-AUTO (WITH)) (REDUCE (|OUT OF| OF)) (HESITANCY (AS)) (CONGRUENT (WITH))
    (INTRODUCE (AS BY)) (CREATE (OF)) (DISTINCT (FROM)) (RAOULT (AS)) (PREDICTIVE (OF))
    (SAFETY (|DUE TO| AGAINST)) (VARIABILITY (IN ACROSS)) (QUALIFY (BY)) (TABLE (FOR))
    (REPROGRAM (OF)) (SEASON (IN)) (RECOVER-AUTO (FROM)) (INEQUITY (IN)) (BIO-UTILIZE (BY))
    (ATTRIBUTABLE (TO)) (MELLITUS (IN)) (THANKFUL (FOR)) (ENROL (AT)) (DECISION (TO AT FOR IN))
    (LETHALITY (IN WITH)) (OBSTACLE (FOR)) (ACCESSIBILITY (FOR)) (REQUIRE (OF)) (IMPROVEMENT (FOR))
    (MUNICIPALITY (IN WITH)) (COMORBIDITY (ON IN)) (POSITIVITY (IN AMONGST))
    (NUMBER-COLON-NUMBER (IN)) (APPROXIMATION (WITHIN)) (PLOT (AGAINST)) (INCREMENT (TO))
    (DIAGNOSIS (OF)) (LANGUAGE (FROM)) (DEFINE (AS)) (SIGNATURE (IN)) (FEATURE (OF)) (COAT (OF))
    (EFFICIENCY (OF)) (INDICATOR (IN FOR)) (AUTONOMOUS (FOR)) (CLINICS (WITH)) (DETERMINANT (OF))
    (ARGUMENT (FOR)) (FAR (FROM)) (THOUGHTLESSNESS (BY)) (BIAS (TOWARDS))
    (CAPITAL-ENDURANT (|SUCH AS|)) (ISOLATION (IN)) (CORRELATE (WITH)) (MOBILITY (IN BY))
    (COMBINATION (OF)) (PROHIBITION (OF)) (BOTTOM (OF)) (CONTROVERSIAL (FROM)) (BIO-EXCHANGE (OF))
    (ROUTE (AS)) (COMPRISE (ON)) (SERIES (OF BY)) (CELL-GROWTH (OF)) (SURVIVAL (OF)) (CAUSE (OF BY))
    (NEED (BEFORE FOR TO)) (IDEATION (WITH)) (MEANS (OF)) (RAMIFICATION (OF))
    (LOGISTIC-REGRESSION (WITH)) (AFFECT (BY)) (EXPLORATORY (IN)) (FOUNDATION (FOR))
    (MOST-RELEVANT (UNDER)) (ADULTS (IN)) (SNACK (BETWEEN)) (SIT (FOR))
    (ENFORCE (BY |AS A RESULT OF|)) (US-STATE (AS)) (BEFOREAND (DURING)) (LIFESTYLE (AT))
    (LIVE (INCLUDING)) (DETAIL (FOR OF)) (BOOSTRESEARCH (BY)) (GRATEFUL (TO)) (TITLE (OF))
    (FOCUSSES (ON)) (ACADEMICS (AT)) (APPROVE (BY)) (GENERATE (OF)) (ORGANISATIONS (FROM))
    (UNIVERSITY (FOR)) (MIDDLE (OF)) (SHUTDOWN (OF)) (STRATIFY (BY)) (HISTORY (OF)) (HALF (OF))
    (NEGLECT (DURING)) (ENTRY (TO)) (A-LITTLE (DURING)) (COMMITMENT (TO)) (BENEFIT (FROM))
    (HELP (DURING)) (VARIETY (OF)) (YOUTH (WITH)) (SPECIFY (AS)) (GIVE (ON)) (PRIOR (TO))
    (MONEY-AUTO (FOR)) (GRADERS (WITH)) (UNDERSTAND (OF)) (CARRY-OUT (INTO)) (BUFFER (AGAINST))
    (ROLE (IN WITHIN)) (RELIANCE (ON)) (END (OF TO)) (LITERATURE (ON)) (UNRELATE (TO)) (FILL (OUT))
    (IMPULSIVITY (IN)) (GENE-CODE (AS)) (CONSEQUENCE (WITH FOR)) (SOCIETY (IN)) (FAITH (IN))
    (AFFLICT (BY)) (COUNSEL (TO)) (WORK-ON (IN)) (UNFOLD (AMONGST)) (EXTENT (TO))
    (SOCIALIZATION (THROUGH)) (MEDICATION (AMONG DURING WITH)) (COPE-ENDURANT (WITH))
    (CATEGORIZATION (BY)) (HOLDER (FOR)) (CRITERION (FOR)) (APPROACH-CL-VERB (BY)) (CURFEW (IN))
    (BIO-ACTIVITY (DURING)) (INSTITUTION (IN)) (MESSENGER (FOR)) (DISTRIBUTE (ACROSS))
    (DISCOVERY (IN)) (BRIEN (FROM)) (POWELL (FROM)) (ABODOLLAHI (FOR))
    (POLICY (|SUCH AS| UNTIL IN DURING WITH ON FOR)) (AREDRIVEN (BY)) (IMPLEMENTATION (OF TO))
    (WAIVER (FOR)) (MOVEMENT (FOR)) (GOOGLE (FROM)) (PRONE (TO)) (INCONSISTENCY (IN))
    (TIME-OF-DAY (OF)) (INSTRUCT (BY))))

(defparameter *ambiguous-adjuncts* nil)


(defparameter *break-adjunctive-pp* nil)
(defun add-adjunctive-pp (head-edge pp-edge)
  (when
      *do-adjunctive-attachments*
    (let* ((prep-word (identify-preposition pp-edge))
           (*pobj-edge* (edge-right-daughter pp-edge))
           (pobj-referent (identify-pobj pp-edge))
           (right-fringe (right-fringe-of head-edge))
           (edge-taking-adjunct (find-target-satisfying right-fringe #'takes-adjunct-target?))
           (ambigs 
             (remove-duplicates
              (loop for fringe in right-fringe when (and (edge-p fringe)
                                                         (individual-p (edge-referent fringe))
                                                         (assoc (cat-name (itype-of (edge-referent fringe)))
                                                                *reduced-known-adjunct-attachments*))
                    collect
                    (list (cat-name (itype-of (edge-referent fringe)))
                          (intern (pname prep-word))))
              :test #'equal)))
      (declare (special right-fringe ambigs))
      

      (cond ((cdr ambigs)
             (when *break-adjunctive-pp*
               (lsp-break "breaking add-adjunctive-pp for ~%s=~s, ~% fringe: ~s~%"
                          (sentence-string (current-sentence))
                          right-fringe))
             (push (list ambigs (sentence-string (sentence))) *ambiguous-adjuncts*)
             nil)
            (edge-taking-adjunct
             (push (list (list
                          (intern (string-upcase (pname prep-word)) :sp)
                          (cat-name (itype-of (edge-referent edge-taking-adjunct)))
                          (cat-name (itype-of pobj-referent))
                          (cat-name (edge-form edge-taking-adjunct)))
                         (format nil "~a ~a in sentence ~s"
                                 (retrieve-surface-string (edge-referent head-edge))
                                 (retrieve-surface-string (edge-referent pp-edge))
                                 (sentence-string (sentence)))
                         (edge-referent head-edge)
                         pobj-referent)
                   *adjunctive-attachments*)
             (make-edge-spec
              :category (edge-category edge-taking-adjunct)
              :form (edge-form edge-taking-adjunct)
              :target edge-taking-adjunct
              :direction :right
              :referent (bind-dli-variable 'adjunctive-modifier
                                           pobj-referent
                                           (edge-referent edge-taking-adjunct)
                                           )))))))


(define-debris-analysis-rule s-with-np-conj-pp
    :pattern (s pp)
    :action (:function np-conj-pp first second))

#+ignore ;; needs to be folded into the rule above
(define-debris-analysis-rule adjunctive-pp-on-s
  :pattern (np pp)
  :action (:function add-adjunctive-pp first second))

(define-debris-analysis-rule adjunctive-pp-on-transitive-clause-without-object
  :pattern (transitive-clause-without-object pp)
  :action (:function add-adjunctive-pp first second))

(defun np-conj-pp (np-containing-edge pp-edge)
  (let* ((prep (identify-preposition pp-edge))
         (*pobj-edge* (edge-right-daughter pp-edge))
         (pobj-referent (when (edge-p *pobj-edge*) (edge-referent *pobj-edge*))))
    (cond ((itypep (edge-category pp-edge) 'but-not)
           (make-edge-spec
            :category (itype-of (edge-referent np-containing-edge))
            :form category::np
            :referent (bind-dli-variable 'excluding pobj-referent
                                         (edge-referent np-containing-edge))
            :target np-containing-edge
            :direction :right))
          ((let ((np-conj-edge
                  (find-target-satisfying
                   (right-fringe-of np-containing-edge)
                   #'np-conjunction-edge?)))
             (when (and np-conj-edge
                        (not (eq np-conj-edge
                                 (edge-left-daughter np-containing-edge)))
                        (not (eq np-conj-edge np-containing-edge)))

               (let* ((np-ref (edge-referent np-conj-edge))
                      (label (identify-preposition pp-edge))
                      (last-np
                       (and np-ref
                            (value-of 'items np-ref)
                            (car (last (value-of 'items np-ref)))))
                      (var-to-bind
                       (when last-np
                         (find-subcat-var pobj-referent label last-np)))
                      (target
                       (when var-to-bind
                         (cond
                           ((and (edge-p (edge-right-daughter np-conj-edge))
                                 (eq (edge-referent (edge-right-daughter np-conj-edge))
                                     last-np))
                            (edge-right-daughter np-conj-edge))
                           ((and (edge-constituents np-conj-edge)
                                 (edge-p (car (last (edge-constituents np-conj-edge))))
                                 (eq (edge-referent (car (last (edge-constituents np-conj-edge))))
                                     last-np))
                            (car (last (edge-constituents np-conj-edge))))))))
                 (when (and var-to-bind target)
                   (make-edge-spec
                    :category (itype-of last-np)
                    :form category::np
                    :referent (bind-dli-variable var-to-bind pobj-referent last-np)
                    :target target
                    :direction :right
                    ))))))
          (t (add-adjunctive-pp np-containing-edge pp-edge)))))



#+ignore
(define-debris-analysis-rule np-comma-np-comma-and-np
  :pattern ( np "," np "," and np)
  :action (:function
           np-comma-np-comma-and-np
           first second third fourth))

(defun adjunct-examples (pair)
  (let ((cat (car pair))
        (prep (intern (string-upcase (pname (second pair))))))
    (loop for adjunct-ex in *adjunctive-attachments*
          when (and
                (eq (caar adjunct-ex) prep)
                (eq (second (car adjunct-ex)) cat))
            collect adjunct-ex)))

(define-debris-analysis-rule s-comma-np-comma-and-np
  :pattern ( s "," np "," and np)  
  :action (:function
           s-comma-np-comma-and-np
           first second third fourth fifth sixth))

(defun s-comma-np-comma-and-np ( s comma-1 np-1 comma-2 and-wd np-2)
  (declare (ignore comma-1 comma-2))
  (let* ((target (find-target-satisfying
                  (right-fringe-of s)
                  #'(lambda(x)
                      (and (np-target? x)
                           ;; avoid bad attachment to a bio-entity in
                           ;; "Transformation is associated with constitutive autophosphorylation of EGFR
                           ;;    , Shc phosphorylation, and STAT pathway activation"
                           (cond ((itypep (edge-referent np-1) 'bio-process)
                                  (itypep (edge-referent x) 'bio-process))
                                 ((itypep (edge-referent np-1) 'bio-entity)
                                  (itypep (edge-referent x) 'bio-entity))
                                 (t t)))))))
    (when target
      (let ((collection
             (make-an-individual 'collection
                                 :items `(,(edge-referent target)
                                           ,(make-maximal-projection
                                             (edge-referent np-1)
                                             np-1)
                                           ,(make-maximal-projection
                                             (edge-referent np-2)
                                             np-2))
                                 :number 3
                                 :type (itype-of (edge-referent target)))))
        (setq collection
              (if *description-lattice*
                  (find-or-make-lattice-description-for-collection collection)
                  collection ))
        (when target
          (make-edge-spec 
           :category (edge-category target)
           :form (edge-form target)
           :referent collection
           :target target
           :direction :right))))))


(define-debris-analysis-rule s-conjunction-np
  :pattern ( s conjunction np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-clause-and-np
  :pattern ( subordinate-clause and np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-s-and-np
  :pattern ( subordinate-s and np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-clause-or-np
  :pattern ( subordinate-clause or np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-s-or-np
  :pattern ( subordinate-s or np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule vp-and-np
  :pattern ( vp and np)  
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule vp-or-np
  :pattern ( vp or np)  
  :action (:function s-conjunction-np
                     first second third))

(defun s-conjunction-np ( s conjunction np)
  (let* ((target
          (find-target-satisfying
           (right-fringe-of s)
           #'(lambda(x)
               (and (np-target? x)
                    (eq (itypep (edge-referent x) 'protein)
                        (itypep (edge-referent np) 'protein))))))
         (collection
          (when target
            (make-an-individual 'collection
                                :items `(,(edge-referent target)
                                          ,(make-maximal-projection
                                            (edge-referent np)
                                            np))
                                :number 2
                                :type (itype-of (edge-referent target))))))
    
    (when collection
      (setq collection
            (if *description-lattice*
                (find-or-make-lattice-description-for-collection collection)
                collection ))
      (when target
        (make-edge-spec 
         :category (edge-category target)
         :form (edge-form target)
         :referent collection
         :target target
         :direction :right)))))


;; low priority rules for treating present-participles as subjects
;; -- try to get the subject of the participials first

(defun make-subj-vp-rule-pair (subj vp)
  (let ((rule-name (intern (format nil "~s-~s" subj vp) :sp))) ; e.g. |vp+ing-vp|
    `(progn
       (define-debris-analysis-rule ,rule-name
           :pattern (,subj ,vp)
           ;; The action can fail. Returning nil ought to suffice
         :action (:function ,rule-name first second))
       ;; handle examples like
       ;; "then shifting attention to a peripheral location should speed lexical decisions "
       (define-debris-analysis-rule
           ,(intern (format nil "SUBORDINATE-CONJUNCTION-~a" rule-name) :sp)
           :pattern (subordinate-conjunction ,subj ,vp)
           ;; The action can fail. Returning nil ought to suffice
           :action (:function ,rule-name first second))

       (defun ,rule-name (,subj ,vp)
         (let* ((*right-edge-into-reference* ,vp)
                (*left-edge-into-reference* ,subj)
                (ref (assimilate-subject (edge-referent ,subj) (edge-referent ,vp))))
           (declare (special *right-edge-into-reference* *left-edge-into-reference*))
           (when ref
             (make-edge-spec 
              :category (edge-category ,vp)
              :form category::s
              :referent ref)))))))

(loop for subj in '(vp+ing vg+ing)
   do
     (loop for vp in '(vp vg vp+passive vg+passive)
        do
          (eval (make-subj-vp-rule-pair subj vp))))


(defun make-subj-vp+ing-rule-pair (subj)
  (let ((rule-name (intern (format nil "~s-VP+ING" subj))))
    `(progn
       (define-debris-analysis-rule ,rule-name
           :pattern (,subj vp+ing)
           ;; The action can fail. Returning nil ought to suffice
           :action (:function ,rule-name first second))

       (defun ,rule-name (,subj  host-vp)
         (let* ((*right-edge-into-reference* host-vp)
                (*left-edge-into-reference* ,subj)
                (ref (assimilate-subject-to-vp-ing (edge-referent ,subj) (edge-referent host-vp))))
           (declare (special *right-edge-into-reference* *left-edge-into-reference*))
           (when ref
             (make-edge-spec 
              :category (edge-category host-vp)
              :form category::s
              :referent ref)))))))

(loop for subj in '(vp+ing vg+ing)
   do
     (eval (make-subj-vp+ing-rule-pair subj)))


;;--- make it possible for ADJPs to post-modify NPs

(define-debris-analysis-rule np-adjective
    :pattern (np adjective)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule np-adjp
    :pattern (np adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule s-adjp
    :pattern (s adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule whethercomp-adjp
    :pattern (whethercomp adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule subordinate-clause-adjp
    :pattern (subordinate-clause adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule vp-adjp
    :pattern (vp adjp)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule pp-adjp
    :pattern (pp adjp)
    :action (:function postmodifying-adj first second))

(defun postmodifying-adj (first-edge adjp-edge) ; examples 
  (let* ((adjp (edge-referent adjp-edge))
         (target
          (find-target-satisfying
           (right-fringe-of first-edge)
           #'(lambda (e)
               (and (np-target? e)
                    (subcategorized-variable adjp :subject (edge-referent e)))))))
    (when target
      (let ((pred
             (create-predication-and-edge-by-binding
              :subject (edge-referent target) adjp adjp-edge))) 
        (make-edge-spec
         :category (edge-category target)
         :form (edge-form target)
         :referent (bind-dli-variable 'predication pred (edge-referent target))
         :target target
         :direction :right)
        ))))


;;;-----------
;;; questions
;;;-----------

#| Most all of these question patterns are processed by functions
that are in q-patterns.lisp. These patterns are not anchored to
the beginning of the sentence as make-this-a-question-if-appropriate
assumed. |#

;;--- patterns starting with preposed-auxiliary

(loop for ap in '(adjp adjective comparative-adjective superlative-adjective
                  comparative superlative
                  comparative-adjp superlative-adjp)
   do (loop for n in '(np proper-noun common-noun)
        do (let ((pattern `(preposed-auxiliary ,n ,ap))
                 (name (s-intern '#:aux-np- ap)))
             (define-debris-analysis-rule/expr name
               pattern
               '(:function polar-postmodifying-adj first second third)))))

(defun polar-postmodifying-adj (be-edge np-edge adjp-edge)
  (declare (special *da-starting-position* *da-ending-position*))
  (when (aux-before-np? :first-np-edge np-edge)
    (if (eq (cat-name (edge-category be-edge)) 'do)
        ;; there should be a verb, not an adjp, so fail
        ;;  possibly figure out whether the verb was swallowed by the np-edge
        ;;  as in "does RAS rise faster ..." where "rise" is mistakenly treated as a noun
        nil
        (let* ((edges (list be-edge np-edge adjp-edge))
               (end-pos (fix-da-ending-pos *da-ending-position*))
               (be (edge-referent (first edges)))  ;; is
               (np (edge-referent (second edges))) ;; the ball
               (adj (edge-referent (third edges))) ;; red
               (copular-adj
                 (let ((*left-edge-into-reference* (first edges))
                       (*right-edge-into-reference* (third edges)))
                   (make-copular-adjective be adj))))
          #+ignore
          (make-polar-adjective-question
           *da-starting-position* end-pos edges)
          (when
              copular-adj
            (make-edge-spec
             :category (edge-category (third edges))
             :form category::polar-question-form
             :referent (assimilate-subject np copular-adj)))))))

(loop for n in '(np proper-noun common-noun)
        do (let ((pattern `(preposed-auxiliary ,n vp+ed))
                 (name (s-intern '#:aux-np-vp+ed)))
             (define-debris-analysis-rule/expr name
               pattern
               '(:function polar-postmodifying-vp+ed first second third))))

(defun polar-postmodifying-vp+ed (be-edge np-edge vp+ed-edge)
  (declare (special *da-starting-position* *da-ending-position*))
  (when (aux-before-np? :first-np-edge np-edge)
    (when (eq (cat-name (edge-category be-edge)) 'be)
      ;; there should be a verb, not an adjp, so fail
      ;;  possibly figure out whether the verb was swallowd by the np-edge
      ;;  as in "does RAS rise faster ..." where "rise" is mistakenly treated as a noun
      (let ((edges (list be-edge np-edge vp+ed-edge))
            (end-pos (fix-da-ending-pos *da-ending-position*)))
        (make-polar-participle-question
         *da-starting-position* end-pos edges)))))

(loop for second-np in '(np proper-noun common-noun pronoun)
   do (loop for n in '(np proper-noun common-noun pronoun)
        do (let ((pattern `(preposed-auxiliary ,n ,second-np))
                 (name (s-intern '#:aux-np- second-np)))
             (define-debris-analysis-rule/expr name
               pattern
               '(:function polar-copular-np first second third)))))

(defun polar-copular-np (be-edge np-edge second-np-edge)
  (declare (special *da-starting-position* *da-ending-position*))
  (when (aux-before-np? :first-np-edge np-edge)
    (if (not (eq (cat-name (edge-category be-edge)) 'be))
        nil
        (let ((edges (list be-edge np-edge second-np-edge))
              (end-pos (fix-da-ending-pos *da-ending-position*)))
          (make-polar-copular-question
           *da-starting-position* end-pos edges)))))

(define-debris-analysis-rule aux-proper-noun-vp-adj
    :pattern (preposed-auxiliary proper-noun vp+ed adjective)
    :action (:function polar-reduced-rel first second third fourth))

(define-debris-analysis-rule aux-np-vg-adj
    :pattern (preposed-auxiliary np vg+ed adjective) ;/// why do we get a vg ?
    ;; "Is the amount of MAPK1 phosphorylated eventually high?"
    :action (:function polar-reduced-rel first second third fourth))

(defun polar-reduced-rel (aux-edge noun-edge vp+ed-edge adj-edge)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (polar-reduced-relative aux-edge noun-edge vp+ed-edge adj-edge
                            *da-starting-position* end-pos)))


(define-debris-analysis-rule aux-s
    :pattern (preposed-auxiliary s)
    :action (:function da/preposed+s first second))

(define-debris-analysis-rule aux-transitive-without
    :pattern (preposed-auxiliary transitive-clause-without-object)
    ;; "Does phosphorylated MAP2K1 behave like phosphorylated MAPK1?"
    :action (:function da/preposed+s first second))

(define-debris-analysis-rule aux-s-prep
    :pattern (preposed-auxiliary s preposition)
    ;; (p "Can you find any apoptotic pathways that stat3 is involved in?")
    :action (:function da/preposed+s/prep first second third))

(defun da/preposed+s/prep (aux-edge s-edge prep-edge)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (polar-aux-s-stranded-prep aux-edge s-edge prep-edge
                               *da-starting-position* end-pos)))

(define-debris-analysis-rule aux-np
    :pattern (preposed-auxiliary np)
    ;; "is ATM in a pathway with MTOR"
    :action (:function decompose-np-for-polar-question first second))
;;###############################################################################
(defun decompose-np-for-polar-question (aux-edge np-edge)
  "Does the np decompose into a simple term and a prepositional phrase.
   If it does we construct the question from those daughters and
   remove their spanning np-edge from the chart so nothing will be
   confused by it later."
  (let ((left (edge-left-daughter np-edge))
        (right (edge-right-daughter np-edge)))
    (when (and (edge-p left)
               (edge-p right)
               (np-category? left)
               (eq (form-cat-name right) 'pp)
               ;; <right> must be last edge, not
               ;; e.g. "is NP sustained"
               (not (edges-after right)))
      (remove-and-unhook-edge-from-chart np-edge (list left right))
      (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
        (polar-copular-pp-question aux-edge left right
                                   *da-starting-position* end-pos)))))




(define-debris-analysis-rule is-s-under-condition
    :pattern (preposed-auxiliary s ifcomp)
    :action (:function da/preposed+s first second)) ;;/// this fn ignores the ifcomp

(define-debris-analysis-rule is-s-vp
    :pattern (preposed-auxiliary s vp)
    ;; Does phosphorylated MAP2K1 being high follow phosphorylated BRAF reaching a high value?"
    :action (:function da-is-s-vp first second third))


(defun da-is-s-vp (aux-edge s-edge vp-edge)
  ;;/// do open variable check here?
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (polar-sentential-subject aux-edge s-edge vp-edge
                              *da-starting-position* end-pos)))


;;--- patterns starting in np (covering a wh)

(define-debris-analysis-rule wh-vg-transitive-no-object
    :pattern (np vg transitive-clause-without-object) ;; np = "what genes"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule np-modal-s
    :pattern (np modal s)
    :action  (:function wh-three-edges first second third))

(defun wh-three-edges (np vg open-vp)
  (declare (special *da-starting-position* *da-ending-position*
                    *da-constituent-edges*))
  (when (wh-edge? np) ;; null return fails the DA rule
    (let ((edges (if (= 3 (length *da-constituent-edges*))
                   *da-constituent-edges*
                   (list np vg open-vp)))
          (end-pos (fix-da-ending-pos *da-ending-position*)))
      (wh-initial-three-edges np edges *da-starting-position* end-pos))))




(define-debris-analysis-rule np-modal-s-prep
    :pattern (np modal s preposition)
    ;; "What tissues can I ask about?"
    :action  (:function wh-three-edges+prep first second third fourth))

(defun wh-three-edges+prep (np modal s prep)
  (when (wh-edge? np)
    (let ((end-pos (pos-edge-ends-at prep))) ;; (fix-da-ending-pos *da-ending-position*)))
      (wh-modal-s-prep np modal s prep *da-starting-position* end-pos))))


(define-debris-analysis-rule np-modal-s-prep-pp
    :pattern (np modal s preposition pp)
    ;; "What diseases can I ask about for microRNA?"
    :action  (:function wh-three-edges+prep+pp first second third fourth fifth))

(define-debris-analysis-rule np-modal-s-prep-pp
    :pattern (np vg s preposition pp)
    ;; "what databases do you rely on for pathway questions?"
    :action  (:function wh-three-edges+prep+pp first second third fourth fifth))

(defun wh-three-edges+prep+pp (np modal s prep pp)
  (when (wh-edge? np)
    (let ((end-pos (pos-edge-ends-at prep))) ;; (fix-da-ending-pos *da-ending-position*)))
      (wh-modal-s-prep-pp np modal s prep pp *da-starting-position* end-pos))))

(defun wh-vg-s-stranded-prep (np vg s prep)
  "what transcription factor databases do you rely on?"
  (when (and (wh-edge? np) (edge-over-aux? vg))
    (let ((end-pos (pos-edge-ends-at prep)))
      (wh-aux-s-stranded-prep np vg s prep *da-starting-position* end-pos))))


(define-debris-analysis-rule wh-be-thing
  :pattern (question-marker vg np) ;; "what color is the block"
  :action (:function apply-question-marker first second third))


;;--- patterns starting with wh-pronoun

(define-debris-analysis-rule wh-vp
    :pattern (wh-pronoun vp)
    ;; ??
    :action (:function wh-vp-edge first second))

(defun wh-vp-edge (whpn vp)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    ;; can we tease out the aux at the beginning of the vp?
    (wh-initial-two-edges whpn (list whpn vp) *da-starting-position* end-pos)))
;;XXX
(defun wh-vp (wh vp)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (when *debug-questions*
      (push-debug `(,wh ,vp))
      (break "wh-vp"))))


(define-debris-analysis-rule whpn-vg-transitive-no-object
    :pattern (wh-pronoun vg transitive-clause-without-object)
    ;; "What does stat regulate"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule  whpn-vg-s
    :pattern (wh-pronoun vg s)
    ;; "How does STAT3 affect c-fos"  "What does ERBB regulate?"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule  whpn-vg-s-prep
    :pattern (wh-pronoun vg s preposition)
    ;; "what does MEK interact with?"
    :action (:function wh-three-edges+prep first second third fourth))

(define-debris-analysis-rule  whnp-vg-s-prep
    :pattern (np vg s preposition)
    ;; "what transcription factor databases do you rely on?"
    :action (:function wh-vg-s-stranded-prep first second third fourth))

(define-debris-analysis-rule wh-modal-s
    :pattern (wh-pronoun modal s)
    ;; "How might a STAT3 mutation affect breast cancer?"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule wh-modal-transitive-clause-without-object
    :pattern (wh-pronoun modal transitive-clause-without-object)
    ;; "What could I use?"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule wh-modal-transitive-clause-without-object
    :pattern (np modal transitive-clause-without-object)
    ;; "How might a STAT3 mutation affect breast cancer?"
    :action (:function wh-three-edges first second third))

(define-debris-analysis-rule whpn-vp-noun-vg+ed
    :pattern (wh-pronoun vg proper-noun vg+ed)
    ;; "Where is STAT3 expressed?"
    :action (:function wh-four-edges first second third fourth))

(define-debris-analysis-rule whpn-vp-noun-vg+ed+prep
    :pattern (wh-pronoun vg proper-noun vg+ed preposition)
    ;; "What is STAT3 expressed in?"
    :action (:function wh-initial-five-edges first second third fourth fifth))

(define-debris-analysis-rule np-is-prop-vg-prep
    :pattern (np vg proper-noun vg+ed preposition)
    ;; "What tissues is STAT3 expressed in?"
    ;;/// why was the "is" promoted to vg?
    ;; Presumably also takes np in proper-noun position
    :action (:function whnp-is-prop-vg-prep first second third fourth fifth))

(defun whnp-is-prop-vg-prep (whnp aux-vp np vg+ed prep)
  (when (wh-edge? whnp)
    (when (edge-over-aux? aux-vp)
      (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
        (whnp-initial-five-edges whnp aux-vp np vg+ed prep
                                 *da-starting-position* end-pos)))))

(define-debris-analysis-rule np-is-np-adj-prep
    :pattern (np vg proper-noun adjective preposition)
    ;; (p "What genes is stat3 upstream from?")
    :action (:function whnp-is-prop-adj-prep first second third fourth fifth))

(defun whnp-is-prop-adj-prep (whnp aux-vp np vg+ed prep)
  (when (wh-edge? whnp)
    (when (edge-over-aux? aux-vp)
      (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
        (whnp-initial-five-edges whnp aux-vp np vg+ed prep
                                 *da-starting-position* end-pos)))))
    
(define-debris-analysis-rule whpn-vg-np-vp+ed
    :pattern (wh-pronoun vg np vp+ed)
    ;; "What are the genes regulated by STAT3?
    :action (:function wh-four-edges/vp  first second third fourth))

(define-debris-analysis-rule whpn-vg-np-vg+ed
    :pattern (wh-pronoun vg np vg+ed)
    ;; "What is insulin's gene named?"
    :action (:function wh-four-edges/vp  first second third fourth))

(define-debris-analysis-rule whpn-vp-noun-vp+ed
    :pattern (wh-pronoun vg proper-noun vp+ed)
    ;; "How is stat3 involved in apoptotic regulation?"
    :action (:function wh-four-edges  first second third fourth))


(defun wh-four-edges (wh vg noun adjp)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (wh-initial-four-edges wh (list vg noun adjp) *da-starting-position* end-pos)))

(defun wh-four-edges/vp (wh vg np vp-ed)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (wh-initial-four-edges/vp+ed wh vg np vp-ed
                                 *da-starting-position* end-pos)))

(define-debris-analysis-rule wh-aux-vp
    :pattern (wh-pronoun verb+present vp)
    ;; (p "How does knocking out p53 cause cancer via its effect on miRNAs?")
    :action (:function wh-aux-vp-setup first second third))

(defun wh-aux-vp-setup (wh-edge aux-edge vp-edge)
  (when (edge-over-aux? aux-edge) ; "does"
    (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
      (wh-initial-three-edges wh-edge (list wh-edge aux-edge vp-edge)
                              *da-starting-position* end-pos))))



;;--- prep-stranding questions

;; "What genes is stat3 upstream of?"
(define-debris-analysis-rule s-plus-prep
    :pattern (s preposition)
    :action (:function s+prep first second))

(define-debris-analysis-rule s-plus-prep
    :pattern (transitive-clause-without-object preposition)
    :action (:function s+prep first second))

(defun s+prep (s-edge prep-edge &optional third)
  ;; Want to feed wh-stranded-prep, so we need to identify
  ;; the wh-edge, which is probably the subject of the s and on
  ;; its left side
  (declare (special *da-starting-position* *da-ending-position*))
  (let ((subject (edge-left-daughter s-edge))
        (predicate (edge-right-daughter s-edge))
        (end-pos (fix-da-ending-pos *da-ending-position*)))
    (unless (eq predicate :long-span)
      ;; encountered in "From the perspective of the practicing immunologist,
      ;; what does systems biology in all its guises have to offer?" where the
      ;; s-edge spanned "what does systems biology"
      (when (wh-edge? subject)
        ;; get rid of unneeded edge that complicates chart
        (remove-and-unhook-edge-from-chart s-edge (list subject predicate))
        (wh-stranded-prep subject ;; wh-edge
                          predicate ;; main-edge
                          prep-edge
                          *da-starting-position* end-pos)))))


;;--- there questions

(define-debris-analysis-rule there-s-prep
    :pattern (there-exists s preposition)
    ;; "Are there any genes stat3 is upstream of?"
    :action (:function there-s-prep first second third))

(defun there-s-prep (is-there s prep)
  (let ((end-pos (fix-da-ending-pos *da-ending-position*)))
    (there-question/stranded-prep is-there s prep
                                  *da-starting-position* end-pos)))



;;;-------------
;;; stray cases
;;;-------------

;;--- interjections

(define-debris-analysis-rule interjection-s
    :pattern (interjection S)
    :action (:function add-initial-interjection/no-comma first second))

(define-debris-analysis-rule interjection-comma-s
    :pattern (interjection "," S)
    :action (:function add-initial-interjection first second third))

(defun add-initial-interjection/no-comma (interjection-edge s-edge)
  (let* ((interjection (edge-referent interjection-edge))
         (s (edge-referent s-edge)))
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (bind-dli-variable 'modifier interjection s))))

(defun add-initial-interjection (interjection-edge comma s-edge)
  (declare (ignore comma))
  (add-initial-interjection/no-comma interjection-edge s-edge))



;;--- quantifiers

(define-debris-analysis-rule quantifier-to-np
    :pattern (quantifier)
    :action (:function raise-quantifier-to-np first))

(defun raise-quantifier-to-np (quantifier-edge)
  (unless (or (itypep (edge-referent quantifier-edge) 'either) ;; more often a part of a conjunction or partitive
              (eq (edge-cat-name quantifier-edge) 'ordinal))
    (let ((edge (make-completed-unary-edge
                 (edge-starts-at quantifier-edge)
                 (edge-ends-at quantifier-edge)
                 :raise-quantifier-to-np ; rule
                 quantifier-edge ; daughter
                 (edge-category quantifier-edge) ; category
                 category::np ; form
                 (edge-referent quantifier-edge)))) ; referent
       (when edge
         (setf (edge-constituents edge) `(,quantifier-edge))
         edge))))


;;--- others

(define-debris-analysis-rule its-a-number
  :pattern (number)
  :action (:function its-a-number first))

(defun its-a-number (word-edge)
  (unless (eq 'np (form-cat-name word-edge))
    (let ((word-category (edge-category word-edge))
          (word-form (edge-form word-edge))
          (word-referent (edge-referent word-edge)))
      (let ((edge (make-completed-unary-edge
                   (edge-starts-at word-edge) ;; the edge vector
                   (edge-ends-at word-edge)
                   :its-a-number ;; rule
                   word-edge     ;; daughter
                   word-category 
                   category::np
                   word-referent)))
        (when edge
          (setf (edge-constituents edge) `(,word-edge))
          ;; (push-debug `(,edge)) (break "look at edge")
          edge)))))


(define-debris-analysis-rule are-there-np
  :pattern (there-exists np)
  :action (:function are-there-np first second))

(defun are-there-np (there-exists np)
  (declare (special category::there-exists category::np category::s))
  ;;(cond ((cddr (all-tts)) nil) ;; don't know if this test is really needed
  ;;(t
  (let* ((i (bind-variable 'value
                           (edge-referent np)
                           (edge-referent there-exists))))
    (make-edge-spec
     :category (edge-category there-exists)
     :form category::s
     :referent i))
  ;;))
  )
    
(define-debris-analysis-rule demonstrative-that-np
  :pattern (demonstrative)
  :action (:function make-that-an-np first))

(defun make-that-an-np (demonstrative)
  (when (and (member (edge-cat-name demonstrative) '(that))
             (not (loop for e in (edges-after demonstrative)
                        thereis
                          (or
                           (member (edge-form-name e)
                                   '(when-relative-clause
                                     where-relative-clause
                                     subordinate-s))
                           (member (edge-cat-name e)
                                  '(when where if because))))))
    (make-edge-spec
     :category (edge-category demonstrative)
     :form category::pronoun
     :referent (edge-referent demonstrative))))






