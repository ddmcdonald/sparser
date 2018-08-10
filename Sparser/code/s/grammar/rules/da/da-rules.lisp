;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  August 2016

;; initiated 9/18/15 for da patterns and interpreters that had been
;; stashed in biology. Small tweaks and additions of the same kind
;; through 11/22/15


;; TRULY STUPID CHANGE
(in-package :sparser)

;;;-------------------------------------------------
;;; debris analysis rules and their interpretations
;;;-------------------------------------------------

(defvar *show-failed-fronted-pp-attachment* nil)
(defvar *show-failed-find-base-np-vp-edge* nil)

(defstruct edge-spec category form referent target dominating direction preposed)


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

(defparameter *warn-attach-leading-pp-to-clause* nil)
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
    (declare (special clause-referent pobj-edge))
    ;;(lsp-break "attach-leading-pp-to-clause")
    
    #+ignore
    (when (and
           ;; handle DEC 33
           ;; "In A375 cells, endogenous C-RAF:B-RAF heterodimers were measurable and inducible
           ;;  following treatment with PLX4720 (Supplementary Fig. 9)."
           (itypep clause-referent 'copular-predication)
           ;; this trick does NOT work for PP copular-predications
           (not (value-of 'prep clause-referent))
           ;; don't do this for conjunctive copular-predications like
           ;;"Although several groups have reported results regarding the possible
           ;; function of ER-β, and its potential as a prognostic or predictive
           ;; factor in breast cancer, the data remain inconclusive and
           ;; are often contradictory [ xref , xref ]."
           (not (is-basic-collection? clause-referent))
           (value-of 'value clause-referent))
      (when *warn-attach-leading-pp-to-clause*
        (warn "attach-leading-pp-to-clause doesn't work for copular-predication ~% can't attach ~s to ~s in ~s~%"
              (retrieve-surface-string pp)
              (retrieve-surface-string clause-referent)
              (current-string)))
      (return-from attach-leading-pp-to-clause nil))

    (let (*edge-spec*)
      (declare (special *edge-spec*))
      (cond
        ((and
          ;; handle DEC 33
          ;; "In A375 cells, endogenous C-RAF:B-RAF heterodimers were measurable and inducible
          ;;  following treatment with PLX4720 (Supplementary Fig. 9)."
          (itypep clause-referent 'copular-predication)
          ;; this trick does NOT work for PP copular-predications
          )
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
      
        ((is-basic-collection? clause-referent) ;; Dec #33 goes through here
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
                    (failed-pp-attachment pp clause-referent))) )
           (when var-name
             (setq *edge-spec*
                   (make-edge-spec
                    :category (edge-category clause)
                    :form (edge-form clause)
                    :referent (bind-dli-variable var-name
                                                 pobj-referent clause-referent)
                    :target clause
                    :direction :left
                    :preposed pp))
             (tr :comma-3tt-pattern *edge-spec*)))))
      ;;(lsp-break "attach-leading-pp-to-clause 2")
      *edge-spec*)))


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
(defparameter *warn-on-cant-find-corresponding-clauses* nil)
(defparameter *show-finding-corresponding-clauses* nil)

(defun distribute-pp-to-conjoined-clauses (pp clause prep-word pobj-referent clause-referent rule-name)
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
    (declare (special clauses clause-edges))
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
    #+ignore
    (when var-name
      (when (eq clause (edge-used-in left-clause))
        (lsp-break "circular structure produced in distribute-pp-to-first-conjoined-clause")
        (return-from distribute-pp-to-first-conjoined-clause nil)))
    
    ;;(lsp-break "2d")
    (when var-name
      (setq new-left
            (bind-dli-variable var-name pobj-referent (edge-referent left-clause)))
      (make-edge-spec
       :category (edge-category left-clause)
       :form (edge-form left-clause)
       :referent new-left
       :target left-clause
       :dominating clause
       :direction :left
       :preposed pp))))


(define-debris-analysis-rule oblique-s-subject-to-vp
  :pattern (s vp)
  ;; fails if the subject isn't oblique
  :action (:function attach-oblique-s-as-subject-to-vp first second))

(defun attach-oblique-s-as-subject-to-vp (s vp) ;; dynamic model #43,44
  (let ((verb-edge (find-verb s)))
    ;; sort of a gerund detector ///abstract to syntax/category-predicates
    (when verb-edge
      (when (memq (cat-name (edge-form verb-edge))
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

(defparameter *conjoined-s-failures* nil)

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
  (conjoin-clause-and-vp s-edge  and vp-edge))


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




;;; subordinate clause

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

(defun get-subject-from-s-edge (s-edge)
  (declare (special s-edge))
  (let ((real-s-edge (find-base-np-vp-edge s-edge)))
    (when (and (edge-p real-s-edge)
               (edge-p (edge-left-daughter real-s-edge)))
      (edge-referent (edge-left-daughter real-s-edge)))))

(defun find-base-np-vp-edge (e)
  (cond ((member (cat-name (edge-form (edge-left-daughter e)))
                 '(np proper-noun proper-name
                   common-noun common-noun/plural
                   pronoun wh-pronoun
                   vg+ing vp+ing))
         e)
        ((or (member (cat-name (edge-form e)) '(subordinate-s subordinate-clause))
             (member (cat-name (edge-form (edge-left-daughter e)))
                     '(adverb pp to-comp
                       subordinate-clause)))
         (find-base-np-vp-edge
          (second (loop for ee in (edges-under e)
                        unless (or (not (edge-p ee))
                                   (word-p (edge-category ee)))
                        collect ee))))
        ((or (member (cat-name (edge-form e))
                     '(vp vg vp+past vp+ed))
             (member (cat-name (edge-category (edge-left-daughter e)))
                     '(vp vg vp+past vp+ed there-exists)))
         nil)
        ((member (cat-name (edge-form (edge-left-daughter e)))
                 '(s subordinate-s)) ;; possible/likely conjunction
         (find-base-np-vp-edge (edge-left-daughter e)))
        
        (t (when *show-failed-find-base-np-vp-edge*
             (warn "find-base-np-vp-edge failed for ~s in ~s" e (current-string)))
           nil)))
      




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

;;------------------- more s rules -------------------------------
(define-debris-analysis-rule attach-comma-appositive-np-under-s
  :pattern ( s "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-pp
  :pattern ( pp "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(defun attach-comma-appositive-np-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+ing
  :pattern ( vp+ing "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+ed
  :pattern ( vp+ed "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp+past
  :pattern ( vp+past "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-np-under-vp
  :pattern ( vp "," np)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-np-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-proper-noun-under-s
  :pattern ( s "," proper-noun)
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-proper-noun-under-s
           first second third))

(define-debris-analysis-rule attach-comma-appositive-proper-noun-under-pp
  :pattern ( pp "," proper-noun)  ; via the tyrosine phosphorylation of an adapter protein, p130 CAS (XREF_BIBR).
  ;; The action can fail. Returning nil ought to suffice
  :action (:function
           attach-comma-appositive-proper-noun-under-s
           first second third))

(defun attach-comma-appositive-proper-noun-under-s (s comma np)
  (attach-appositive-np-under-s s comma np (pos-edge-ends-at np)))



(defun attach-comma-appositive-np-comma-under-s (s comma-1 np comma-2)
  (attach-appositive-np-under-s s comma-1 np (pos-edge-ends-at comma-2)))

(defun attach-appositive-np-under-s (s-edge comma-edge np-edge end-pos)
  (push-debug `(,s-edge ,comma-edge ,np-edge))
  ;; (setq s-edge (car *) comma-edge (cadr *) np-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun
    (when
        (and (word-p (pos-terminal end-pos))
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
  (push-debug `(,pp-edge ,comma-edge ,np-edge))
  ;; (setq pp-edge (car *) comma-edge (cadr *) np-edge (caddr *))
  ;; Look up the right fridge of the s for a proper-noun
  (unless
      ;; test if this is more likely to be a conjunction
      ;;  there is an error condition when conjunctions are treated like
      ;;  appositives that causes an circular edge structure -- need to get to the bottom of
      ;;  it, but for now we are avoiding the problem
      (loop for e in (ev-edges (pos-starts-here end-pos))
         thereis (and (edge-p e) (eq (cat-name (edge-category e)) 'and)))
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
         :direction :right)))))


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
  (declare (special np-edge trailing-comma))
  (unless (and (edge-p (edge-just-to-right-of trailing-comma))
               (member (cat-name (edge-category (edge-just-to-right-of trailing-comma))) '(and or)))
    (make-edge-spec 
     :category (edge-category base-np)
     :form (edge-form base-np)
     :referent
     (bind-dli-variable 'appositive-description (edge-referent np-edge) (edge-referent base-np))
     )))

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
                               (subcategorized-variable s-rel :subject (edge-referent x)))))))
           ;; update-edge-as-lambda-predicate now returns NIL if there is
           ;;  no available binding for the variable (s-var or t-var) on srel-edge
           (t-pred (when target
                     (update-edge-as-lambda-predicate srel-edge target)))
           (s-pred (when (and target
                              (null t-pred)
                              (not (eq (cat-name (edge-form s-edge)) 'pp)))
                     (update-edge-as-lambda-predicate srel-edge s))))
      (declare (special s-var t-var target))
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
  (when (edge-referent srel-edge) ;; can be null as in "which is consistent "
    (let* ((s (edge-referent s-edge))
           (s-rel (edge-referent srel-edge)) ;; can be null?!
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
                              (not (eq (cat-name (edge-form s-edge)) 'pp)))
                     (update-edge-as-lambda-predicate srel-edge s))))
      (declare (special s-var t-var target))
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
         (s-pred (update-edge-as-lambda-predicate srel-edge s-subject)))
    (cond (s-pred
           (make-edge-spec 
            :category (edge-category s-edge)
            :form (edge-form s-edge)
            :referent (bind-dli-variable 'predication s-pred s)))
          (t
           (let* ((target (find-target-satisfying (right-fringe-of s-edge) #'np-target?))
                  (t-pred (update-edge-as-lambda-predicate srel-edge target)))
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
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent (bind-dli-variable var-name pobj-referent np)))
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
       (make-edge-spec 
	:category (edge-category np-edge)
	:form (edge-form np-edge)
	:referent (bind-dli-variable var-name pobj-2-referent np)
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
#+ignore
(defun np-vp+ed (np vp+ed)
  (declare (special category::np))
  (let* ((*left-edge-into-reference* np)
         (*right-edge-into-reference* vp+ed)
         ;; above need for checks in can-fill-vp-subject?
         (np-ref (edge-referent np))
         (vp-ref (edge-referent vp+ed))
         (vp-subj-var-for-np (can-fill-vp-subject? vp-ref np-ref np))
         (vp-object? (missing-object-vars (edge-referent vp+ed))))
    (declare (special *left-edge-into-reference* *right-edge-into-reference*))
    (when vp-ref ;; "designed to be deficient " had no interpretation in
      ;; the June article sentence
      ;; "More detailed understanding of these various pathways will require
      ;; careful analysis of BMMCs designed to be deficient in multiple adapters
      ;; and signaling molecules.""
      (cond (vp-subj-var-for-np
             ;; this test is a heuristic, to block
             ;; "another MAPK inhibitor, PD 98059, also inhibited ASPP2 function"
             (let ((ref (assimilate-subject np-ref vp-ref vp+ed)))
               (when ref
                 (make-edge-spec
                  :category (edge-category vp+ed)
                  :form category::s
                  :referent ref))))
            (vp-object?
             (let* ((target (find-target-satisfying
                             (right-fringe-of np)
                             #'(lambda (sub-np)
                                 (and (edge-referent sub-np)
                                      (np-target? sub-np)
                                      (subcategorized-variable vp-ref :object
                                                               (edge-referent sub-np))))))
                    (target-np (when (edge-p target) (edge-referent target)))
                    obj-var pred)
               (cond ((and target-np
                           (setq pred (update-edge-as-lambda-predicate vp+ed target-np  :object)))
                      ;; the relevant edge is embedded
                      (make-edge-spec
                       :category (edge-category target)
                       :form category::np
                       :referent (bind-dli-variable 'predication pred target-np)
                       :target target
                       :direction :right))
                     ((setq pred
                            (update-edge-as-lambda-predicate vp+ed np-ref :object))
                      ;; the top np is to be post-modified
                      (make-edge-spec
                       :category (edge-category np)
                       :form category::np
                       :referent (bind-dli-variable 'predication pred np-ref))))))))))



(define-debris-analysis-rule pronoun-vp+ed
  :pattern (proper-noun vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
           proper-noun-vp+ed first second))

(defun proper-noun-vp+ed (proper-noun vp+ed)
  ;;(np-vp+ed proper-noun vp+ed))
  (phrase-and-vg+ed proper-noun vp+ed))


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

;; this is currently blocked by the NIL -- needs to be re-examined
(defun phrase-and-vg+ed (phrase vp+ed)
  (declare (special category::np))
  (let* ((vp-ref (edge-referent vp+ed))
         (fringe (right-fringe-of phrase)) 
         (target
          (find-target-satisfying
           fringe
           #'(lambda (x)
               (and
                (np-target? x)
                (edge-used-in x) ;; have two edges over Ras, one is not used
                (subcategorized-variable vp-ref :object (edge-referent x)))))))
    (declare (special fringe right-fringe-of-pp target target-ref))
    (when
      target
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
       :direction :right))))

(define-debris-analysis-rule s-vp+ed
  :pattern (s vp+ed )
  :action (:function ;; providing all edges should let the constituents
           ;; field keep them connected in the web graph
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

(defun subordinate-comma-subordinate-clause (sc comma sc-2)
  (declare (ignore comma))
  (create-event-relation sc-2 sc))


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


(define-debris-analysis-rule clause-and-subordinate
  :pattern ( s conjunction subordinate-clause  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule clause-and-subordinate-s
  :pattern ( s conjunction subordinate-s  )
  :action (:function clause-and-subordinate  first second third))


(define-debris-analysis-rule transitive-clause-without-object-and-subordinate-s
  :pattern ( transitive-clause-without-object conjunction subordinate-s  )
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

(define-debris-analysis-rule clause-subordinate-s
  :pattern ( s subordinate-s )
  :action (:function clause-subordinate first second))

(defun clause-subordinate (s sc)
  (create-event-relation s sc))


(define-debris-analysis-rule clause-and-clause
  :pattern ( s conjunction s  )
  :action (:function clause-and-subordinate  first second third))

(define-debris-analysis-rule transitive-clause-without-object-and-clause
  :pattern ( transitive-clause-without-object conjunction s  )
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
	 (conj (value-of 'SUBORDINATE-CONJUNCTION (edge-referent sub-clause-edge)))
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
  (if (itypep event 'polar-question)      
      (make-simple-individual ;; make-non-dli-individual
       category::polar-question
       `((statement
          ,(make-simple-individual
            category::event-relation
            `((relation ,conj)
              (event ,(value-of 'statement event))
              (subordinated-event ,sub-event))))))
      (make-simple-individual ;; make-non-dli-individual
       category::event-relation
       `((relation ,conj) (event ,event) (subordinated-event ,sub-event)))))


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
  (declare (special np-containing-edge pp-edge))
  (let* ((prep (identify-preposition pp-edge))
         (*pobj-edge* (edge-right-daughter pp-edge))
         (pobj-referent (edge-referent *pobj-edge*)))
    (if (itypep (edge-category pp-edge) 'but-not)
        (make-edge-spec
         :category (itype-of (edge-referent np-containing-edge))
         :form category::np
         :referent (bind-dli-variable 'excluding pobj-referent (edge-referent np-containing-edge))
         :target np-containing-edge
         :direction :right)
        (let ((np-conj-edge
               (find-target-satisfying
                (right-fringe-of np-containing-edge)
                #'np-conjunction-edge?)))
          (declare (special np-conj-edge))
          (when (and np-conj-edge
                     (not (eq np-conj-edge
                              (edge-left-daughter np-containing-edge))))
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
              (declare (special np-ref label last-np))
              (when (and var-to-bind target)
                (make-edge-spec
                 :category (itype-of last-np)
                 :form category::np
                 :referent (bind-dli-variable var-to-bind pobj-referent last-np)
                 :target target
                 :direction :right
                 ))))))))


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
  ;; The action can fail. Returning nil ought to suffice
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-clause-and-np
  :pattern ( subordinate-clause and np)  
  ;; The action can fail. Returning nil ought to suffice
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-s-and-np
  :pattern ( subordinate-s and np)  
  ;; The action can fail. Returning nil ought to suffice
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-clause-or-np
  :pattern ( subordinate-clause or np)  
  ;; The action can fail. Returning nil ought to suffice
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule subordinate-s-or-np
  :pattern ( subordinate-s or np)  
  ;; The action can fail. Returning nil ought to suffice
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule vp-and-np
  :pattern ( vp and np)  
  ;; The action can fail. Returning nil ought to suffice
  :action (:function s-conjunction-np
                     first second third))

(define-debris-analysis-rule vp-or-np
  :pattern ( vp or np)  
  ;; The action can fail. Returning nil ought to suffice
  :action (:function s-conjunction-np
                     first second third))


(defun s-conjunction-np ( s conjunction np)
  (declare (special  s conjunction np))
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

(defun postmodifying-adj (first-edge adjp-edge) ; examples 
  (when (not (preposed-aux?)) ;; if we have a preoposed-aux, this is a question
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
          #+ignore(multiple-value-bind (pred)
                      (create-predication-by-binding
                       :subject (edge-referent target) adjp 
                       (list 'adj-noun-compound
                             (or adjp-edge (left-edge-for-referent)))
                       :insert-edge nil)
                    (make-predication-edge adjp-edge pred))
          )))))


(loop for ap in '(adjp adjective comparative-adjective superlative-adjective
                  comparative superlative
                  comparative-adjp superlative-adjp)
   do ;; needed for "What apoptotic genes is stat3 upstream of?"
     ;; where 'stat3' is just a proper-noun
     (loop for n in '(np proper-noun)
        do (let ((pattern `(preposed-auxiliary ,n ,ap))
                 (name (s-intern '#:aux-np- ap)))
             (define-debris-analysis-rule/expr
                 name pattern
               '(:function move-preposed-aux-before-adj first second third)))))
             
(defun move-preposed-aux-before-adj (aux-edge np-edge adjp-edge)
  (declare (ignore np-edge))
  (when (preposed-aux?)
    (let ((rule (multiply-edges aux-edge adjp-edge)))
      (when rule
        (compose-preposed-aux-into-predicate-adjp
         aux-edge adjp-edge rule)))))

(defun compose-preposed-aux-into-predicate-adjp (aux-edge adjp-edge rule)
  "Mimic fold-in-preposed-auxiliary and compose the main verb (which
   came in a preposed auxiliary and no residual, in place, vg) with
   the adjp, representing this as an edge respanning the adjp."
  (make-discontinuous-edge aux-edge adjp-edge rule))


(define-debris-analysis-rule wh-be-thing
  :pattern (question-marker vg np) ;; "what color is the block"
  :action (:function apply-question-marker first second third))
;; function is in syntax/questions.lisp

(define-debris-analysis-rule wh-vg-np-vg ;; "What genes does lung cancer target?"
    :pattern (question-marker vg np vg)
    :action (:function apply-question-displaced-vg
                       first second third fourth))

(define-debris-analysis-rule is-s-under-condition
    :pattern (preposed-auxiliary s ifcomp)
    :action (:function da/preposed+s first second))
   


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


(define-debris-analysis-rule quantifier-to-np
    :pattern (quantifier)
    :action (:function raise-quantifier-to-np first))

(defun raise-quantifier-to-np (quantifier)
  (unless (itypep (edge-referent quantifier) 'either) ;; more often a part of a conjunction or partitive
    (make-edge-spec
     :category (edge-category quantifier)
     :form category::np
     :referent (edge-referent quantifier))))

;;;--------------------
;;; Common subroutines
;;;--------------------



;; update-edge-as-lambda-predicate now returns NIL if there is
;;  no available binding for the variable (s-var or t-var) on srel-edge

(defun update-edge-as-lambda-predicate (vp-edge np &optional (syntactic-label :subject))
  (declare (special category::wh-question))
  (cond ((null np)
         (lsp-break "null np in update-edge-as-lambda-predicate")
         (return-from update-edge-as-lambda-predicate nil))
        ((edge-p np) (setq np (edge-referent np))))
  (when (and (eq :subject syntactic-label)
             (member (cat-name (edge-form vp-edge)) '(vp+passive object-relative-clause)))
    ;; example "is mediated by caspase-3, which is also activated by GzmB"
    (setq syntactic-label :object))
       
  (let ((vp-indiv (edge-referent vp-edge)))
    (cond ((itypep vp-indiv category::wh-question)
           (update-wh-question-as-lambda-predicate vp-edge np syntactic-label))
          ((is-basic-collection? vp-indiv)
           (update-conjunctive-edge-as-lambda-predicate vp-edge np syntactic-label))
          (t (let* ((svar (best-variable-for-syntactic-label vp-edge np syntactic-label)))
               (cond 
                 ((null svar)
                  ;;(break "update-edge-as-lambda-predicate fails~
                  ;;to find a subject-variable for ~s~%" vp-edge)
                  ;; (edge-referent vp-edge)
                  nil)
                 ((null (value-of svar (edge-referent vp-edge)))
                  (let ((pred
                         (create-predication-and-edge-by-binding
                          svar np (edge-referent vp-edge) vp-edge)))
                    ;; now creates a new edge, so doesn't have to set
                    ;; the referent separately
                    pred)
                  #+ignore(let ((pred (create-predication-by-binding
                               svar np
                               (edge-referent vp-edge) vp-edge :insert-edge nil)))
                    (set-edge-referent vp-edge pred)
                    pred))))))))

(defun ref-from-edge (ref)
  (if (edge-p ref) (edge-referent ref) ref))

(defun best-variable-for-syntactic-label (vp-item item syntactic-label)
  (let ((vp (ref-from-edge vp-item))
        (np (ref-from-edge item)))
    (if (and np vp) ;; can get null vp for cases like "which might be more impressive"
        (subcategorized-variable vp syntactic-label np)
        (subject-variable vp))))


(defun update-wh-question-as-lambda-predicate (vp-edge np syntactic-label)
  (let ((new-pred (update-edge-as-lambda-predicate
                   (edge-right-daughter vp-edge)
                   np
                   syntactic-label)))
    ;(set-edge-referent vp-edge new-pred)
    new-pred))

(defun update-conjunctive-edge-as-lambda-predicate (vp-edge np syntactic-label)
  (declare (special vp-edge))
  ;;  (lsp-break "vp-edge")
  (let ((conj-preds (value-of 'items (edge-referent vp-edge))))
    (unless (loop for cpred in conj-preds
                  always (best-variable-for-syntactic-label cpred np syntactic-label))
      ;; BAIL unless all conjunctive clauses can be predicates on the np
      (let* ((new-preds
              (loop for cpred in conj-preds
                    collect
                      (create-predication-by-binding-only
                       (best-variable-for-syntactic-label cpred np syntactic-label)
                       np cpred)))
             (new-conj (create-collection new-preds (itype-of (edge-referent vp-edge)))))
        (make-predication-edge vp-edge new-conj) ;; make one predication edge over all
        ;;(set-edge-referent vp-edge new-conj)
        new-conj))))

(defun conjunction-glue (e)
  "conjunction or comma that glues a conjunction edge together"
  (or
   (eq (cat-name (edge-form e)) 'conjunction)
   (eq (edge-category e) word::comma)))


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
       (and
        ;; test below is to block finding of "FAK" below "phosphorylated FAK"
        (not (np-target? (edge-used-in edge)))
        (not (member (cat-name (edge-form (edge-used-in edge)))
                     '(n-bar np)))))))

(defun clause-target? (edge)
   (member (cat-name (edge-form edge)) '(thatcomp s)))


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


(define-debris-analysis-rule its-a-number
  :pattern (number)
  :action (:function its-a-number first))

(defun its-a-number (word-edge)
  (unless (eq 'np (cat-name (edge-form word-edge)))
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
        (setf (edge-constituents edge) `(,word-edge))
        ;; (push-debug `(,edge)) (break "look at edge")
        edge))))


;;; Functions for attaching trailing participles
(defun attach-trailing-participle-to-clause-or-object (s-edge vp-edge)
  (let* ((s (edge-referent s-edge))
         (vp (edge-referent vp-edge))
         (target
          (find-target-satisfying
           (right-fringe-of s-edge)
           #'(lambda(x)
               (and (np-target? x)
                    (subcategorized-variable vp :subject (edge-referent x))))))
         ;; update-edge-as-lambda-predicate now returns NIL if there is
         ;;  no available binding for the variable (s-var or t-var) on vp-edge
         (t-pred (when target
                   (update-edge-as-lambda-predicate vp-edge target))))
    (declare (special s-var t-var target))
    (cond (t-pred
           (make-edge-spec 
            :category (edge-category target)
            :form (edge-form target)
            :referent (bind-dli-variable :predication t-pred (edge-referent target))
            :target target
            :direction :right))
          ((let ((s-pred (update-edge-as-lambda-predicate vp-edge s)))
             (when s-pred
               (make-edge-spec 
                :category (edge-category s-edge)
                :form (edge-form s-edge)
                :referent (bind-dli-variable 'predication s-pred s)
                )))))))

(defun attach-trailing-participle-to-clause-or-object-with-comma (s-edge vp-edge)
  "the comma makes it more likely as a modifier of the s"
  (let* ((s (edge-referent s-edge))
         (vp (edge-referent vp-edge))
         (s-pred
          ;; update-edge-as-lambda-predicate now returns NIL
          ;; if there is no available binding for the variable
          ;; (s-var or t-var) on vp-edge
          (update-edge-as-lambda-predicate vp-edge s)))
    (declare (special target))
    (if s-pred
        (make-edge-spec 
         :category (edge-category s-edge)
         :form (edge-form s-edge)
         :referent (bind-dli-variable 'predication s-pred s))
        (let* ((target (find-target-satisfying
                        (right-fringe-of s-edge)
                        #'(lambda(x)
                            (and (np-target? x)
                                 (subcategorized-variable
                                  vp
                                  :subject (edge-referent x))))))

               (t-pred
                (when target
                  (update-edge-as-lambda-predicate vp-edge target))))
          (when t-pred
            (make-edge-spec 
             :category (edge-category target)
             :form (edge-form target)
             :referent (bind-dli-variable :predication t-pred (edge-referent target))
             :target target
             :direction :right))))))


(defun attach-trailing-participle-to-clause-with-conjunction (s-edge conj vp-edge)
  ;; The participle (vp+ing) is presumably missing it's subject,
  ;; which we'll take to be the whole clause. 
  ;;//// motivated by second sentence in figure-7 where the participle
  ;; is a conjunction, as is the clause. Semantically that one reads
  ;; as the entire clause being the cause of (each of) the elements of
  ;; the participle. But this should be reconsidered if other cases
  ;; have a different relationship.
  (attach-trailing-participle-to-clause-or-object-with-comma s-edge vp-edge))
