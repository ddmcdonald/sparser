;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  August 2016

;; initiated 9/18/15 for da patterns and interpreters that had been
;; stashed in biology. Small tweaks and additions of the same kind
;; through 11/22/15

(in-package :sparser)

;;;-------------------------------------------------
;;; debris analysis rules and their interpretations
;;;-------------------------------------------------

(defvar *show-failed-fronted-pp-attachment* nil)

(defstruct edge-spec category form referent target dominating direction)


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

(defun attach-leading-pp-to-clause (pp comma clause)
  (declare (ignore comma))
  (let* ((clause-referent (edge-referent clause))
	 (pobj-edge (edge-right-daughter pp))
	 (pobj-referent
          (if (eq pobj-edge :long-span) ;; conjunction of PPs
              nil
              (edge-referent pobj-edge)))
	 (prep-edge (edge-left-daughter pp))
	 (prep-word (edge-left-daughter prep-edge)))
    
    (when (itypep clause-referent 'copular-predication)
      ;; This trick works to 'get through' to a single edge over dec #33
      ;; but having taken the predication apart we're going to have to put it together
      ;; again. Indeed the distribution of the conjoined value individual over
      ;; the predication it is in should probably precede the distribution
      ;; of the pp, which needs to be tailored to know which part takes
      ;; the preposition. Or maybe reassemble the predication afterwards?
      (push-debug `(,pobj-referent ,prep-word ,clause-referent ,pp ,clause))
      (setq clause-referent (value-of 'value clause-referent)))

    (cond
      ((null pobj-referent) ;; punt at the moment for conjoined PPs
       nil)
      
      ((is-basic-collection? clause-referent) ;; Dec #33 goes through here
       (or
        (distribute-pp-to-conjoined-clauses pp clause prep-word pobj-referent clause-referent
                                            'attach-leading-pp-to-clause)
        (distribute-pp-to-first-conjoined-clause pp clause
                                                 'attach-leading-pp-to-clause)))
      (t
       (let ((var-name
              (or (subcategorized-variable clause-referent prep-word pobj-referent)
                  (failed-pp-attachment pp clause-referent)))
             edge )
         (when var-name
           (setq edge (make-edge-spec
                       :category (edge-category clause)
                       :form (edge-form clause)
                       :referent (bind-dli-variable var-name pobj-referent clause-referent)))
           (tr :comma-3tt-pattern edge)
           edge))))))


(define-debris-analysis-rule attach-leading-pp-no-comma-to-clause
  :pattern ( pp  s )
  :action (:function attach-leading-pp-no-comma-to-clause first second))

(defun attach-leading-pp-no-comma-to-clause (pp clause)
  (attach-leading-pp-to-clause pp nil clause))

(defun failed-pp-attachment (pp clause-referent)
  (when *show-failed-fronted-pp-attachment*
    (format t "~&~&<<<<<<<>>>>>> attaching leading PP ~s to clause ~s without defined variable~&"
	    (retrieve-surface-string pp)
	    (retrieve-surface-string clause-referent)))
  nil)

(defun distribute-pp-to-conjoined-clauses (pp clause prep-word pobj-referent clause-referent rule-name)
  (let* ((clauses (value-of 'items clause-referent))
	 (vars (loop for c in clauses
		  collect
		    (or (subcategorized-variable c prep-word pobj-referent)
                        ;; otherwise, not all the clauses will accept the PP
                        (return-from distribute-pp-to-conjoined-clauses nil))))
	 (new-interp
	  (make-an-individual
	   'collection
	   :items
	   (loop for c in clauses as var-name in vars
	      collect ;; create a mention-history for the new interpretation
		(let* ((new-c (bind-dli-variable var-name pobj-referent c))
		       (c-mention (relevant-mention (list clause) c)))
		  (when c-mention
		    (update-mention-referent c-mention new-c t))
		  new-c))
	   :number (length clauses)
	   :type (itype-of (car clauses))))
	 edge) ;;(lsp-break "1st")
    (setq edge (make-edge-spec
                :category (edge-category clause)
		:form (edge-form clause)
		:referent new-interp))
    (tr :comma-3tt-pattern edge)
    edge))

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
    ;;(lsp-break "2d")
    (when var-name
      (setq new-left (when var-name (bind-dli-variable var-name pobj-referent left-clause)))
      (setq new-items
	    (cons new-left (cdr (value-of 'items (edge-referent clause)))))
      (setq new-interp
	    (make-an-individual
	     'collection
	     :items new-items
	     :number (length new-items)
	     :type (itype-of (car new-items))))
      (make-edge-spec
       :category (edge-category clause)
       :form (edge-form clause)
       :referent new-interp
       :target left-clause
       :dominating (if (eq clause (edge-used-in left-clause))
                       clause
                       (lsp-break "bad used-in"))
       :direction :left))))


(define-debris-analysis-rule oblique-s-subject-to-vp
  :pattern (s vp)
  ;; fails if the subject isn't oblique
  :action (:function attach-olique-s-as-subject-to-vp first second))

(defun attach-olique-s-as-subject-to-vp (s vp) ;; dynamic model #43,44
  (let ((verb-edge (find-verb s)))
    ;; sort of a gerund detector ///abstract to syntax/category-predicates
    (when verb-edge
      (when (memq (cat-name (edge-form verb-edge))
                  '(vg+ing vp+ing))
        (let* ((var (subject-variable vp))
               (i (bind-variable var (edge-referent s) (edge-referent vp))))
          (make-edge-spec
           :category (edge-category vp)
           :form (edge-form s)
           :referent i))))))


(define-debris-analysis-rule attach-comma-pp-following-clause
  :pattern ( s "," pp )
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-comma-pp-following-clause third first))

(defun attach-comma-pp-following-clause (clause comma pp)
  (declare (ignore comma))
  (attach-pp-following-clause clause pp
                              (pos-edge-starts-at clause)
                              (pos-edge-ends-at pp)))


(define-debris-analysis-rule attach-comma-pp-comma-following-clause
  :pattern ( s "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-comma-pp-comma-following-clause third first))

(defun attach-comma-pp-comma-following-clause (clause comma-1 pp comma-2)
  (declare (ignore comma-1))
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

(defun interpret-s-comma-s (s1 comma s2)
  (declare (ignore comma))
  (make-edge-spec
   :category (edge-category s1)
   :form (edge-form s1)
   :referent (referent-of-two-conjoined-edges
              (edge-referent s1)
              (edge-referent s2))))


(define-debris-analysis-rule conjoin-clause-and-vp
  :pattern ( s and vp )
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
  ;; get the value of the subject or (perhaps) the subject
  ;; variable of the s. Look up the s variable of the vp
  (unless s-edge
    ;; This occurred when s-and-vp was run middle-out from
    ;; the conjunction. The constituent to the left of the
    ;; "and" was not an 's' so we should never have gotten
    ;; here. /// Need to take a serious look at that
    ;; matching code
    (throw :no-da-pattern-matched :trie-exhausted))
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
    ;;WAS (conjoin-two-edges s-edge vp-edge :conjoin-clause-and-vp :pass :conjoin-clause-and-vp)
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (referent-of-two-conjoined-edges
                (edge-referent s-edge)
                (edge-referent vp-edge)))))


(define-debris-analysis-rule conjoin-clause-and-vp+passive
  :pattern ( s and vp+passive )
  :action (:function conjoin-clause-and-vp+passive first second third))

(defun conjoin-clause-and-vp+passive (s-edge  and vp-edge)
  (conjoin-clause-and-vp s-edge  and vp-edge))


(define-debris-analysis-rule attach-trailing-participle-to-clause-base
  :pattern ( s vp+ing )
  :action (:function attach-trailing-participle-to-clause-base first second))

(defun attach-trailing-participle-to-clause-base (s vp)
  (attach-trailing-participle-to-clause-with-conjunction s nil vp))


(define-debris-analysis-rule attach-trailing-participle-to-clause-with-conjunction-comma
  :pattern ( s "," vp+ing )
  :action (:function attach-trailing-participle-to-clause-with-conjunction-comma first second third))

(defun attach-trailing-participle-to-clause-with-conjunction-comma (s comma vp)
  (attach-trailing-participle-to-clause-with-conjunction s comma vp))


(define-debris-analysis-rule attach-trailing-participle-to-clause-with-conjunction-and
  :pattern ( s and vp+ing )
  :action (:function attach-trailing-participle-to-clause-with-conjunction-and first second third))

(defun attach-trailing-participle-to-clause-with-conjunction-and (s and vp)
  (attach-trailing-participle-to-clause-with-conjunction s and vp))


;;; subordinate clause

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-clause-base
  :pattern ( subordinate-clause vp+ing )
  :action (:function attach-trailing-participle-to-subordinate-clause-base first second))

(defun attach-trailing-participle-to-subordinate-clause-base (s vp)
  (attach-trailing-participle-to-clause-with-conjunction s nil vp))

(define-debris-analysis-rule attach-trailing-participle-to-subordinate-clause-with-conjunction-comma
  :pattern ( subordinate-clause "," vp+ing )
  :action (:function attach-trailing-participle-to-subordinate-clause-with-conjunction-comma first second third))

(defun attach-trailing-participle-to-subordinate-clause-with-conjunction-comma (s comma vp)
  (attach-trailing-participle-to-clause-with-conjunction s comma vp))


(define-debris-analysis-rule attach-trailing-participle-to-subordinate-clause-with-conjunction-and
  :pattern ( subordinate-clause and vp+ing )
  :action (:function attach-trailing-participle-to-subordinate-clause-with-conjunction-and first second third))

(defun attach-trailing-participle-to-subordinate-clause-with-conjunction-and (s and vp)
  (attach-trailing-participle-to-clause-with-conjunction s and vp))

(defun attach-trailing-participle-to-clause-with-conjunction (s-edge conj vp-edge)
  ;; The participle (vp+ing) is presumably missing it's subject,
  ;; which we'll take to be the whole clause. 
  ;;//// motivated by second sentence in figure-7 where the participle
  ;; is a conjunction, as is the clause. Semantically that one reads
  ;; as the entire clause being the cause of (each of) the elements of
  ;; the participle. But this should be reconsidered if other cases
  ;; have a different relationship.
  (let ((clause-ref (edge-referent s-edge)))

    ;; Look up the subject variable(s) of the vp / participle and 
    ;; bind it to the whole matrix (clause) referent.
    (cond
     ((itypep (edge-referent vp-edge) 'collection)
      ;; distribute this over the conjunction. Need a general way / macro
      ;; for doing this
      (let* ((daughter-edges (if (eq :long-span (edge-right-daughter vp-edge))
                                 (loop for e in (edge-constituents vp-edge)
                                    unless (eq (cat-name (edge-form e)) 'conjunction)
                                      collect e)
                                 (list (edge-left-daughter vp-edge)
                                   (edge-right-daughter vp-edge))))
             (new-items
              (loop for edge in daughter-edges
                collect (make-lambda-predicate edge))))
        ;; now remake the collection
        (let ((new-conjunct 
               (apply #'referent-of-two-conjoined-edges new-items)))
          (setf (edge-referent vp-edge) new-conjunct))))

     (t ;; simple vp
      (setf (edge-referent vp-edge)
            (make-lambda-predicate vp-edge))))

    ;; Say that the clause has an event-relation to the vp.
    ;; Which is pretty weak, but it's already in place
    ;; THIS NEXT CALL PRODUCES NIL WHEN CLAUSE-REF IS A COLLECTION (from a conjunction of clauses)
    ;; as in 
    ;;"The human genome encodes at least 10 proteins that bind RAS and activate its intrinsic GTPase activity, 
    ;;  resulting in the formation of inactive RAS:GDP and attenuating RAS signaling (reviewed in King et al, 2013)."
    (setq clause-ref (add-adjunctive-clause-to-s clause-ref (edge-referent vp-edge)))
    ;; we really need to create a new "category::causally-related" and fill in
    ;; two variables, cause and effect, and then use that as the :referent below
    ;; 
    (let ((edge (make-edge-spec
                 :category (edge-category s-edge)
                 :form (edge-form s-edge)
                 :referent clause-ref)))
      edge)))


(define-debris-analysis-rule attach-preceding-participle-with-comma-to-clause
  :pattern ( vp+ing "," s )
  :action (:function attach-preceding-participle-with-comma-to-clause first second third))

(define-debris-analysis-rule attach-preceding-participle-with-comma-to-clause
  :pattern ( vp+ing "," subordinate-clause )
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
          (make-edge-spec
           :category (edge-category s-edge)
           :form (edge-form s-edge)
           :referent (referent-of-two-conjoined-edges
                      (edge-referent s-edge)
                      vp+ing-ref)))))))

;;------------------- more s rules -------------------------------
(define-debris-analysis-rule attach-comma-appositive-np-under-s
  :pattern ( s "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(defun attach-comma-appositive-np-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))


(define-debris-analysis-rule attach-comma-appositive-proper-noun-under-s
  :pattern ( s "," proper-noun)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-proper-noun-under-s
           first second third))

(defun attach-comma-appositive-proper-noun-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))


(define-debris-analysis-rule attach-comma-appositive-np-comma-under-s
  :pattern ( s "," np ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function attach-comma-appositive-np-comma-under-s first second third fourth))

(defun attach-comma-appositive-np-comma-under-s (s comma-1 np comma-2)
  (attach-appositive-np-under-s s comma-1 np (pos-edge-ends-at comma-2)))

(defun attach-appositive-np-under-s (s-edge comma-edge np-edge end-pos)
  (push-debug `(,s-edge ,comma-edge ,np-edge))
  ;; (setq s-edge (car *) comma-edge (cadr *) np-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun
  (unless
      ;;DEC-TEST-2 "Sorafenib is a drug that inhibits V600EBRAF at 40 nM, CRAF at 13 nM,
      ;; don't treat CRAF as an appositive
      (loop for e in (ev-edges (pos-starts-here end-pos))
         thereis (member (cat-name (edge-form e)) '(spatial-preposition preposition pp)))
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
  (push-debug `(,pp-edge ,comma-edge ,np-edge))
  ;; (setq pp-edge (car *) comma-edge (cadr *) np-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun 
  (let ((target (find-target-satisfying (right-fringe-of pp-edge) #'np-target?)))
    ;; don't know why this is prinitng out -- remove it
    ;;(format t "dominating-edge for ~s is ~s" target (edge-used-in target))
    (when target
      (make-edge-spec 
       :category (edge-category target)
       :form (edge-form target)
       :referent (bind-dli-variable 'appositive-description (edge-referent np-edge)
                                    (edge-referent target))
       :target target
       :direction :right))))


(define-debris-analysis-rule attach-appositive-comma-proper-noun-under-pp
  :pattern ( pp "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
	   attach-appositive-comma-proper-noun-under-pp
           first second third fourth))

(defun attach-appositive-comma-proper-noun-under-pp (pp comma-1 proper-noun comma-2)
  (attach-appositive-comma-np-endpos-under-pp pp comma-1 proper-noun (pos-edge-ends-at comma-2)))




;;; NP rules

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
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-proper-noun-comma-np-comma-as-appositive
           first second third fourth))

(defun attach-proper-noun-comma-np-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-np-comma-proper-noun-comma-as-appositive
  :pattern ( np "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-np-comma-proper-noun-comma-as-appositive
           first second third fourth))

(defun attach-np-comma-proper-noun-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))


(define-debris-analysis-rule attach-proper-noun-comma-proper-noun-comma-as-appositive
  :pattern ( proper-noun "," proper-noun ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-proper-noun-comma-proper-noun-comma-as-appositive
           first second third fourth))

(defun attach-proper-noun-comma-proper-noun-comma-as-appositive (np1 comma-1 np2 comma-2)
  (attach-appositive-to-np np1 comma-1 np2 comma-2))

(defun attach-appositive-to-np (base-np comma-edge np-edge trailing-comma)
    (make-edge-spec 
          :category (edge-category base-np)
          :form (edge-form base-np)
          :referent
          (bind-dli-variable 'appositive-description (edge-referent np-edge) (edge-referent base-np))
          ))

;;------------------------- S -----------------------
(define-debris-analysis-rule s-commma-subj-relative
    :pattern (s "," subject-relative-clause)
    :action (:function s-commma-subj-relative first second third))

(defun s-commma-subj-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((s (edge-referent s-edge))
         (s-var (subcategorized-variable (edge-referent srel-edge) :subject s)))
    (cond (s-var
           (make-edge-spec 
            :category (edge-category s-edge)
            :form (edge-form s-edge)
            :referent
            (bind-dli-variable
             'predication
             (make-lambda-predicate srel-edge s-var)
             s)
            ))
          (t
           (let* ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?))
                  (t-var (when target
                           (subcategorized-variable (edge-referent srel-edge) :subject (edge-referent target)))))
             (when t-var
               (make-edge-spec 
                :category (edge-category target)
                :form (edge-form target)
                :referent (bind-dli-variable :predication
                                             (make-lambda-predicate srel-edge)
                                             (edge-referent target))
                :target target
                :direction :right)))))))


(define-debris-analysis-rule s-commma-where-relative
    :pattern (s "," where-relative-clause)
    :action (:function s-commma-where-relative first second third))

(defun s-commma-where-relative (s comma where-relative)
  (s-commma-where-when-relative s comma where-relative))


(define-debris-analysis-rule s-commma-when-relative
    :pattern (s "," when-relative-clause)
    :action (:function s-commma-when-relative first second third))

(defun s-commma-when-relative (s comma when-relative)
  (s-commma-where-when-relative s comma when-relative))

(defun s-commma-where-when-relative (s-edge comma-edge srel-edge)
  (declare (ignore comma-edge))
  (let* ((s (edge-referent s-edge))
         (s-var (subcategorized-variable (edge-referent srel-edge)
                                         (if (eq (cat-name (edge-form srel-edge))
                                                 'where-relative-clause)
                                             :where
                                             :when)
                                         s)))
    (cond (s-var
           (make-edge-spec 
            :category (edge-category s-edge)
            :form (edge-form s-edge)
            :referent (bind-dli-variable 'predication
                                         (make-lambda-predicate srel-edge s-var)
                                         s)))
          (t
           (let* ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?))
                  (t-var (when target
                           (subcategorized-variable
                            (edge-referent srel-edge)
                            (if (eq (cat-name (edge-form srel-edge))
                                    'where-relative-clause)
                                :where
                                :when)
                                                    (edge-referent target)))))
             (when t-var
               (make-edge-spec 
                :category (edge-category target)
                :form (edge-form target)
                :referent
                (bind-dli-variable :predication
                                   (make-lambda-predicate srel-edge t-var)
                                   (edge-referent target))
                :target target
                :direction :right)))))))

;;--------------- NP
(define-debris-analysis-rule np-commma-subj-relative
    :pattern (np "," subject-relative-clause)
    :action (:function np-commma-subj-relative first second third))

(defun np-commma-subj-relative (np-edge comma-edge srel-edge)
  (declare (comma-edge))
  (let* ((np (edge-referent np-edge))
	 (s-var (subcategorized-variable (edge-referent srel-edge) :subject np)))
      (when s-var
	(make-edge-spec 
	 :category (edge-category np-edge)
	 :form (edge-form np-edge)
	 :referent
	 (bind-dli-variable 'predication
			    (make-lambda-predicate srel-edge s-var)
			    np)))))


(define-debris-analysis-rule np-comma-pp-comma
  :pattern ( np "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
  :action (:function np-comma-pp-comma first second third fourth))

(defun np-comma-pp-comma (np comma-1 pp comma-2)
  (attach-pp-to-np-with-commas np comma-1 pp comma-2))


(define-debris-analysis-rule proper-noun-comma-pp-comma
  :pattern ( proper-noun "," pp ",")
  ;; The action can fail. Returning nil ought to suffice
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
	  (subcategorized-variable np
				   prep-word
				   pobj-referent)))
    (cond
      (var-name
       (setq np (bind-dli-variable var-name pobj-referent np))
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent np))
      (t 
       ;;(lsp-break "attach-pp-to-np-with-commas fails")
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
	  (subcategorized-variable np
				   prep-2-word
				   pobj-2-referent)))
    (cond
      (var-name
       (setq np (bind-dli-variable var-name pobj-2-referent np))
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent np
        :target np-edge
        :direction :right
        ))
      (t 
       ;;(lsp-break "attach-pp-to-np-with-commas fails")
       nil))))


(define-debris-analysis-rule proper-noun-comma-vg+ed-comma
  :pattern (proper-noun "," vp+ed ",")
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           proper-noun-comma-vg+ed-comma first second third fourth))

(defun proper-noun-comma-vg+ed-comma (np intial-comma vp+ed final-comma)
  (declare (special category::np))
  (let* ((modified-vp-ref (make-lambda-predicate vp+ed))
         (modified-np-ref (bind-dli-variable 'modifier modified-vp-ref (edge-referent np))))
    (make-edge-spec
     :category (edge-category np)
     :form category::np
     :referent modified-np-ref)))


(define-debris-analysis-rule np-vp+ed
  :pattern (np vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           np-vp+ed first second))

(defun np-vp+ed (np vp+ed)
  (declare (special category::np))
  (let* ((np-ref (edge-referent np))
         (vp-ref (edge-referent vp+ed))
         (vp-subj-var-for-np
          (can-fill-vp-subject? vp-ref np-ref np)))
    (if
     vp-subj-var-for-np
     ;; this test is a heuristic, to block
     ;; "another MAPK inhibitor, PD 98059, also inhibited ASPP2 function"
     (let ((ref (assimilate-subject np-ref vp-ref vp+ed)))
       (when ref
         (make-edge-spec
          :category (edge-category vp+ed)
          :form category::s
          :referent ref))))
    (let* ((target (find-target-satisfying
                    (right-fringe-of np)
                    #'(lambda (sub-np) (and (edge-referent sub-np)
                                            (np-target? sub-np)
                                            (subcategorized-variable vp-ref :object
                                                                     (edge-referent sub-np))))))
           (target-np (when (edge-p target) (edge-referent target))))
      (if target ;; the relevant edge is embedded
          (let ((obj-var (subcategorized-variable vp-ref :object target-np) ))
            (when obj-var
              (make-edge-spec
               :category (edge-category target)
               :form category::np
               :referent (bind-dli-variable 'predication
                                            (make-lambda-predicate vp+ed obj-var)
                                            target-np)
               :target target
               :direction :right)))
          (let ((obj-var (subcategorized-variable vp-ref :object np-ref)))
            (when obj-var
              ;; the top np is to be post-modified
              (make-edge-spec
               :category (edge-category np)
               :form category::np
               :referent (bind-dli-variable 'predication
                                            (make-lambda-predicate vp+ed obj-var)
                                            np-ref))))))))



(define-debris-analysis-rule pronoun-vp+ed
  :pattern (proper-noun vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           proper-noun-vp+ed first second))

(defun proper-noun-vp+ed (proper-noun vp+ed)
  (np-vp+ed proper-noun vp+ed))


(define-debris-analysis-rule np-vg+ed
  :pattern (np vg+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           np-vg+ed first second))

(defun np-vg+ed (np vg+ed)
  (declare (special category::vg+ed))
  (unless (adverb-at? (pos-edge-starts-at vg+ed))
    ;; this test is a heuristic, to block
    ;; "another MAPK inhibitor, PD 98059, also inhibited ASPP2 function"
    (let* ((*right-edge-into-reference* vg+ed)
           (*left-edge-into-reference* np)
           (interp (assimilate-subject (edge-referent np)
                                       (edge-referent vg+ed))))
      (declare (special *right-edge-into-reference* *left-edge-into-reference*))
      (when interp
        (make-edge-spec
         :category (edge-category vg+ed)
         :form category::vg+ed
         :referent interp
         )))))


(define-debris-analysis-rule proper-noun-vg+ed
  :pattern (proper-noun vg+ed )
  :action (:function proper-noun-vg+ed first second))

(defun proper-noun-vg+ed (pronoun vg+ed)
  (np-vg+ed pronoun vg+ed))


(define-debris-analysis-rule pp-vg+ed
    :pattern (pp vp+ed )
    :action (:function ;; providing all edges should let the constituents
             ;; field keep them connected in the web graph
             pp-vg+ed first second))

(defun pp-vg+ed (pp-edge vp+ed)
  (declare (special category::np))
  (let ((target (find-target-satisfying (right-fringe-of pp-edge) #'np-target?)))
    (declare (special right-fringe-of-pp target target-ref))
    (when nil
      target
      (unless (edge-used-in target)
        (lsp-break "null dominating edge ~s" target))
      (make-edge-spec
       :category (edge-category target)
       :referent (bind-dli-variable
                  'predication
                  (make-lambda-predicate vp+ed)
                  (edge-referent target))
       :form (edge-form target)
       :target target
       :direction :right))))



(define-debris-analysis-rule s-vp+ed
  :pattern (s vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-vp+ed first second))

(defun s-vp+ed (s-edge vp+ed)
  (let ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?)))
    (when target       
      (make-edge-spec
       :category (edge-category target)
       :form category::np
       :referent (bind-dli-variable 'predication
                                    (make-lambda-predicate vp+ed)
                                    (edge-referent target))
       :target target
       :direction :right))))


(define-debris-analysis-rule s-comma-vp+ed
  :pattern (s "," vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           s-comma-vp+ed first second third))


(defun s-comma-vp+ed (s comma vp+ed)
  (declare (ignore comma))
  (s-vp+ed s vp+ed))


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

(defun subordinate-comma-clause (sc comma s)
  (declare (ignore comma))
  (create-event-relation s sc))


(define-debris-analysis-rule subordinate-comma-subordinate-clause
  :pattern (subordinate-clause "," subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))

(defun subordinate-comma-subordinate-clause (sc comma sc-2)
  (declare (ignore comma))
  (create-event-relation sc-2 sc))


(define-debris-analysis-rule subordinate-semicolon-subordinate-clause
  :pattern (subordinate-clause ";" subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))


(define-debris-analysis-rule subordinate-semicolon-subordinate-clause
  :pattern (s ";" subordinate-clause )
  :action (:function subordinate-comma-subordinate-clause first second third))


(define-debris-analysis-rule clause-and-subordinate
  :pattern ( s and subordinate-clause  )
  :action (:function clause-and-subordinate  first second third))

(defun clause-and-subordinate (s and sc)
  (create-event-relation s sc))


(define-debris-analysis-rule clause-comma-subordinate
  :pattern ( s "," subordinate-clause )
  :action (:function clause-comma-subordinate  first second third))

(defun clause-comma-subordinate (s comma sc)
  (declare (ignore comma))
  (create-event-relation s sc))


(define-debris-analysis-rule clause-subordinate
  :pattern ( s subordinate-clause )
  :action (:function clause-subordinate first second))

(defun clause-subordinate (s sc)
  (create-event-relation s sc))


(define-debris-analysis-rule clause-and-clause
  :pattern ( s and s  )
  :action (:function clause-and-subordinate  first second third))


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

(defun create-event-relation (event-edge sub-clause-edge
                              &optional (conj (value-of 'SUBORDINATE-CONJUNCTION (edge-referent sub-clause-edge))))
  (make-edge-spec
   :category category::event-relation
   :form category::s
   :referent (make-event-relation conj (edge-referent event-edge)
                                  (edge-referent sub-clause-edge))))


(define-debris-analysis-rule clause-subordinate-relative-clause
  :pattern ( s subordinate-relative-clause )
  :action (:function clause-subordinate-relative-clause  first second))

(defun clause-subordinate-relative-clause (s sub-clause-edge)
  (let* ((target (find-target-satisfying
                  (right-fringe-of s)
                  #'(lambda (e)
                      (and (np-target? e)
                           (subcategorized-variable (edge-referent sub-clause-edge) :subject (edge-referent e))))))
	 (conj (value-of 'SUBORDINATE-CONJUNCTION (edge-referent sub-clause-edge)))
	 (event (edge-referent s))
	 (sub-event ))
    (when target 
      (setq sub-event
            (make-lambda-predicate sub-clause-edge
                                   (subcategorized-variable (edge-referent sub-clause-edge)
                                                            :subject (edge-referent target))))
					 
      (make-edge-spec
       :category category::event-relation
       :form category::s
       :referent (make-event-relation conj event sub-event)))))


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
       :referent (make-event-relation conj event sub-event)))))


(define-debris-analysis-rule clause-comma-subordinate-event-relation
  :pattern ( s "," subordinate-conjunction event-relation)
  :action (:function clause-comma-subordinate-event-relation  first second third fourth))

(defun clause-comma-subordinate-event-relation (s comma sconj event-relation)
  (declare (ignore comma))
  (create-event-relation s event-relation (edge-referent sconj)))

(defun make-event-relation (conj event sub-event)
  (make-simple-individual ;; make-non-dli-individual
   category::event-relation
   `((relation ,conj) (event ,event) (subordinated-event ,sub-event))))


(define-debris-analysis-rule np-conj-pp
    ;; for the case where the rightmost NP in a conjunction can
    ;; take a PP, but was conjoined early
    :pattern (np pp)
    :action (:function np-conj-pp first second))

(defun np-conjunction-edge? (e)
  (and (eq (cat-name (edge-form e)) 'np)
       (individual-p (edge-referent e))
       (is-basic-collection? (edge-referent e))))

(defun np-conj-pp (np-containing-edge pp-edge)
  (let ((np-conj-edge
         (find-target-satisfying
          (right-fringe-of np-containing-edge)
          #'np-conjunction-edge?)))
    (declare (special np-conj-edge))
    (when np-conj-edge
      (let* ((np-ref (edge-referent np-conj-edge))
             (prep (identify-preposition pp-edge))
             (*pobj-edge* (edge-right-daughter pp-edge))
             (pobj-referent (edge-referent *pobj-edge*))
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
                  ((edge-p (edge-right-daughter np-conj-edge))
                   (edge-right-daughter np-conj-edge))
                  ((edge-constituents np-conj-edge)
                   (car (last (edge-constituents np-conj-edge))))))))
        (declare (special np-ref label last-np))
        (when (and var-to-bind target)
          (make-edge-spec
           :category (itype-of last-np)
           :form category::np
           :referent (bind-dli-variable var-to-bind pobj-referent last-np)
           :target target
           :direction :right
           ))))))


(define-debris-analysis-rule s-with-np-conj-pp
    ;; for the case where the rightmost NP in a conjunction can
    ;; take a PP, but was conjoined early
    :pattern (s pp)
    :action (:function np-conj-pp first second))



#+ignore
(define-debris-analysis-rule np-comma-np-comma-and-np
  :pattern ( np "," np "," and np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           np-comma-np-comma-and-np
           first second third fourth))

(define-debris-analysis-rule s-comma-np-comma-and-np
  :pattern ( s "," np "," and np)  
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           s-comma-np-comma-and-np
           first second third fourth fifth sixth))

(defun s-comma-np-comma-and-np ( s comma-1 np-1 comma-2 and-wd np-2)
  (declare (ignore comma-1 comma-2))
  (let* ((target (find-target-satisfying (right-fringe-of s) #'np-target?))
         (collection
          (make-an-individual 'collection
                              :items `(,(edge-referent target)
                                        ,(edge-referent np-1)
                                        ,(edge-referent np-2))
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
       :direction :right))))


;; low priority rules for treating present-participles as subjects -- try to get the subject of the participials first

(defun make-subj-vp-rule-pair (subj vp)
  (let ((rule-name (intern (format nil "~s-~s" subj vp))))
    `(progn
       (define-debris-analysis-rule ,rule-name
           :pattern (,subj ,vp)
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


;;;;; make it possible for ADJPs to post-modify NPs, when needed

(define-debris-analysis-rule NP-ADJECTIVE
    :pattern (NP ADJECTIVE)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule NP-ADJP
    :pattern (NP ADJP)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule S-ADJP
    :pattern (S ADJP)
    :action (:function postmodifying-adj first second))


(define-debris-analysis-rule VP-ADJP
    :pattern (VP ADJP)
    :action (:function postmodifying-adj first second))

(define-debris-analysis-rule PP-ADJP
    :pattern (PP ADJP)
    :action (:function postmodifying-adj first second))

(defun postmodifying-adj (first-edge adjp-edge)
  (when (not (preposed-aux?)) ;; if we have a preoposed-aux, this is a question
    (let* ((adjp (edge-referent adjp-edge))
           (target
            (find-target-satisfying
             (right-fringe-of first-edge)
             #'(lambda (e)
                 (and (np-target? e)
                      (subcategorized-variable adjp :subject (edge-referent e)))))))
      (when target
        (let ((ref (adj-postmodifies-noun (edge-referent target) adjp adjp-edge)))
          (make-edge-spec
           :category (edge-category target)
           :form (edge-form target)
           :referent ref
           :target target
           :direction :right))))))

#|
(define-debris-analysis-rule YES-NO-NP-ADjP
    :pattern (PREPOSED-AUXILIARY NP ADJP)
    :action (:function yes-no-adj first second third))

(define-debris-analysis-rule YES-NO-NP-ADJECTIVE
    :pattern (PREPOSED-AUXILIARY NP ADJECTIVE)
    :action (:function yes-no-adj first second third))


(defun yes-no-adj (aux-edge np-edge adjp-edge)
  (when (preposed-aux?) ;; if we have a preoposed-aux, this is a question
    (let* ((adjp (edge-referent adjp-edge))
           (target np-edge))
      (when target
        (let ((ref (assimilate-subject (edge-referent target) adjp adjp-edge)))
          (make-edge-spec
           :category (edge-category target)
           :form (edge-form target)
           :referent ref))))))
|#


(define-debris-analysis-rule comparative-adj-than-np
    :pattern (COMPARATIVE-ADJECTIVE "than" np)
    :action (:function comparative-adj-than-np first second third))

(defun comparative-adj-than-np (comp-edge than-edge np-edge)
  (declare (special comp-edge than-edge np-edge))
  (make-edge-spec
           :category (edge-category comp-edge)
           :form (edge-form comp-edge)
           :referent
           (bind-dli-variable 'compared-to (edge-referent np-edge) (edge-referent comp-edge))))


(define-debris-analysis-rule interjection-comma-s
    :pattern (interjection "," S)
    :action (:function add-initial-interjection first second third))

(defun add-initial-interjection (interjection-edge comma s-edge)
  (declare (ignore comma))
  (let* ((interjection (edge-referent interjection-edge))
         (s (edge-referent s-edge)))
    (make-edge-spec
     :category (edge-category s-edge)
     :form (edge-form s-edge)
     :referent (bind-dli-variable 'modifier interjection s))))



;;;--------------------
;;; Common subroutines
;;;--------------------

(defun make-lambda-predicate (vp-edge &optional (svar (subject-variable (edge-referent vp-edge))))
  (create-predication-by-binding svar **lambda-var** (edge-referent vp-edge) vp-edge))

(defun unpack-subject-control (subject vp vp-edge)
  (setf (edge-referent vp-edge)
        (bind-dli-variable (subject-variable vp) **lambda-var** vp)))

(defun find-target-satisfying (fringe pred)
  (loop for edge in fringe
     when (funcall pred edge)
     return edge))

(defun np-target? (edge)
  (and
   (member (cat-name (edge-form edge)) '(proper-noun np))
   ;; test below is because of some strange cases where an item in the
   ;;  fringe in not in the tree
   (or (null (edge-used-in edge))
   ;; test below is to block finding of "FAK" below "phosphorylated FAK"
       (not (np-target? (edge-used-in edge))))))

(defun right-fringe-of (edge)
  (all-edges-on (pos-ends-here (pos-edge-ends-at edge))))

(defun adverb-at? (position)
  (declare (special category::adverb))
  (loop for e in (all-edges-on (pos-starts-here position))
     thereis (and (edge-p e) (eq (cat-name (edge-form e)) 'adverb))))

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
