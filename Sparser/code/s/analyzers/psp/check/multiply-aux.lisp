;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "multiply-aux"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:   March 2019

;; 2/26/19 initiated to clear non-essentials from multiply.lisp

(in-package :sparser)

;;;-----------------
;;; rule preference
;;;-----------------

(defun filter-by-rule-strength (list-of-triples)
  "Called by check routines (e.g. check-many-one) when more than
 one rule succeeded. Prefer semantic rules over form, either over
 purely syntactic rules."
  (if (null (cdr list-of-triples))
    (car list-of-triples)
    (let ((semantic-rule-triples
           (loop for triple in list-of-triples
              as rule = (triple-rule triple)
              when (semantic-rule? rule)
              collect triple)))
      (if semantic-rule-triples
        (car semantic-rule-triples) ;;/// replace with deliberation
        (let ((form-rule-triples
               (loop for triple in list-of-triples
                  as rule = (triple-rule triple)
                  when (form-rule? rule)
                  collect triple)))
          (if form-rule-triples
            (car form-rule-triples)
            (let ((syntactic-rule-triples
                   (loop for triple in list-of-triples
                      as rule = (triple-rule triple)
                      when (syntactic-rule? rule)
                      collect triple)))
              (if syntactic-rule-triples
                (car syntactic-rule-triples)))))))))


(defun choose-between-form-rules (rule-lf/rc ;; left-form/right-category
                                  rule-rf/lc
                                  left-edge right-edge)
  (let ((t1 (make-edge-triple left-edge right-edge rule-lf/rc))
        (t2 (make-edge-triple left-edge right-edge rule-rf/lc)))
    (let ((stronger-triple (filter-by-rule-strength (list t2 t2))))
      (triple-rule stronger-triple))))



;;;--------------------------------------------------
;;; restrict rule application to compatible contexts
;;;--------------------------------------------------

(defun valid-rule? (rule left-edge right-edge chunk)
  "A candidate rule has been identified. Now run a set of tests
   to determine whether it's presently valid to apply it.
   Returns non-nil to declare that the rule is valid.
   When called by multiply-edges, returning nil means that
   the rule is not valid and multiply-edges will set its
   local that holds the candidate to nil, making it fall through
   to the next option.
     When the caller is trie-multiply-edges we return the rule
   to signal validity. In multiply-edges is run for side-effects
   and just has to return non-nil to sanction the rule."
  (declare (special *check-semantic-applicability* *check-chunk-forms*))
  (when rule
    (when (and (validate-rule-form rule left-edge right-edge) 
               (or (null chunk)
                   (not *check-chunk-forms*)
                   (validate-rule-result-form-against-chunk rule right-edge chunk))
               (or (not *check-semantic-applicability*)
                   (test-semantic-applicability rule left-edge right-edge)))
      rule)))

(defun test-semantic-applicability (rule left-edge right-edge)
  "If this rule invokes a syntactic-method or the equivalent function
   that function will make a quick check to determine whether
   it's valid to apply it.  Rules with explicit references or
   references constructed in ways that don't involve syntactic
   methods invoked by :function are automatically valid."
  (declare (special *check-semantic-applicability*))
  (if *check-semantic-applicability*
    (if (and (consp (cfr-referent rule))
             (eq (car (cfr-referent rule)) :funcall))
      (test-subcat-rule (list left-edge right-edge) rule)
      t)
    t))




;;;-----------------------------
;;; compatible form information
;;;-----------------------------

(defparameter *form-maps*
  '(
    (ADJECTIVE (ADJECTIVE)) 
    (ADVERB (COMPARATIVE ADVERB)) 
    (BIO-PROCESS (NP)) ;; not  VG
    (BIOLOGICAL (PROPER-NOUN NP)) ;; not S PP VG
    (COMMON-NOUN (COMMON-NOUN)) 
    (COMMON-NOUN/PLURAL (COMMON-NOUN/PLURAL)) 
    (ENZYME (NP)) ;; NOT PP
    (IS-BIO-ENTITY (VP)) ;;  not PP VG RELATIVE-CLAUSE S VG 
    (MODAL (MODAL)) 
    (MODIFIER (ADJECTIVE NUMBER PROPER-NOUN NP COMMON-NOUN  COMMON-NOUN/PLURAL))  ;; not VP -- this is for the pre-mod rule
    (N-BAR (N-BAR)) 
    (NP (NP)) 
    (NP-HEAD (COMMON-NOUN common-noun/plural)) 
    (NP/OBJECT  (N-BAR COMMON-NOUN COMMON-NOUN/PLURAL NP PRONOUN PROPER-NAME PROPER-NOUN))  ;; not VG PP RELATIVE-CLAUSE  S VP VERB+ED
    (NP/SUBJECT (N-BAR COMMON-NOUN COMMON-NOUN/PLURAL NP PRONOUN PROPER-NAME PROPER-NOUN)) ;; not VERB+ED VP  VG
    (NUMBER (NUMBER NP)) 
    (POST-ORDINAL (POST-ORDINAL)) 
    (PP (PP)) 
    (PREPOSITION (PREPOSITION)) 
    (PROPER-NOUN (PROPER-NOUN)) 
    (PROTEIN (NP PROPER-NOUN)) 
    (RELATIVE-CLAUSE (RELATIVE-CLAUSE)) 
    (S (S)) 
    (SEQUENCER (DET)) 
    (SPATIAL-PREPOSITION (SPATIAL-PREPOSITION)) 
    (VERB (VERB)) 
    (VERB+ED (VERB+ED)) 
    (VERB+ING (VERB+ING)) 
    (VERB+PRESENT (VERB+PRESENT)) 
    (VG (VERB+ING VP VERB+ED  VG )) ;; not COMMON-NOUN
    (VP (VERB+ING  VG  S VP VERB+ED)) ;; not N-BAR COMMON-NOUN COMMON-NOUN/PLURAL PP NP RELATIVE-CLAUSE
    (WH-PRONOUN (WH-PRONOUN)) 
    ;;(BE (VERB VG VP VERB+ED)) 
    ;;(COMMA (NIL)) 
    ;;(DO (VERB)) 
    ;;(HAVE (VERB VERB+S)) 
    ;;(OF (PREPOSITION)) 
    ;;(THAT (NP DET)) 
    ;;(THE (DET)) 
    ;;(YEAR (COMMON-NOUN)) 
    ;;(\a (DET)) 
    ;;(|an| (DET)) 
    ;;(|not| (QUANTIFIER)) 
    ;;(|these| (DET)) 
    ;;(|the| (DET)) 
    ;;(|this| (DET)) 
    ))

(defun compatible-form (rule-form edge)
  (let ((compatible-forms (second (assq rule-form *form-maps*))))
    (or (null compatible-forms) ;; the rule-form is not taken to constrain anything
        (memq (cat-name (edge-form edge)) compatible-forms))))

(defun validate-rule-form (rule left-edge right-edge) 
  ;; only accept rules that are compatible with their context
  ;;  this check can be turned off for particular ETFs by calling
  ;;  dont-check-rule-form-for-etf-named with the name of the family
  (if (not *check-forms*) ;; controlling switch
    rule
    (let ((rf (rule-forms rule))) ;; recorded at rule-creation time
      (cond
        ((or
          ;; if this clause returns nil, then we fall through
          ;; to the next clause of this cond and report the problem
         (null rf)
         (and (compatible-form (first rf) left-edge)
              (compatible-form (second rf) right-edge)))
        rule)
       (t
        (when *report-form-check-blocks*
          (format t "~&***------>> blocking ~a~
                     ~%   ~a applied to~
                     ~%   (~a, ~a)~
                     ~%   (~a, ~a)~%"
                  rule (rule-forms rule)
                  (edge-form left-edge) left-edge
                  (edge-form right-edge) right-edge))
        nil)))))
 
(defun validate-rule-result-form-against-chunk (rule right-edge chunk)
  "If the right-edge being composed by this rule is the head edge of
   then chunk we're in, then check that the rule will give the 
   new edge a compatible form label."
  (cond
   ((chunk-head? right-edge chunk) 
    ;; is the right-edge the head of the chunk?
    (case (car (chunk-forms chunk))
      (ng (memq (rule-lhs-form rule) ;; the symbol of the lhs category
                '(n-bar ng np common-noun common-noun/plural 
                  np-head pronoun proper-name proper-noun)))
      (vg t)
      (adjg t)))
   (t t)))


;;;---------------------
;;; auxiliary functions
;;;---------------------

(defun chunk-head? (edge chunk)
  "do the chunk and the edge end at the same position?"
  (eq (chunk-end-pos chunk)
      (pos-edge-ends-at edge)))

(defun rule-forms (rule)
  "This field is set by set-schema-and-rhs-forms which is called by
   instantiate-rule-schema It is used to check that ETF rules are only
   applied in cased which match the expected syntactic form of the
   constuents"
  (when (cfr-p rule) (cfr-rhs-forms rule)))

(defun rule-lhs-form (rule)
  (when (cfr-p rule)
    (cat-name (cfr-form rule))))
