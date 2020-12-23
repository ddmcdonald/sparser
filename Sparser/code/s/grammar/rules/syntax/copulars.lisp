;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "copulars"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  December 2020

(in-package :sparser)

;;;---------
;;; classes
;;;---------

(define-category copular-predication
  :specializes predication
  :instantiates :self
  :restrict ((predicate (:or be modality)))
  :binds ((item)
          (value))
  :index (:temporary :sequential-keys predicate value)
  :documentation "Represents the 'to be' relationship between
 an 'item' (prototypically the subject) and a value (the complement).
 This is the standard interpretation of predicate-adjective constructions
 ('the cat is on the mat'). Note that through their connection to
 predication, individuals of this category are states and take tense.")

(assign-subject category::copular-predication category::top 'item)
(assign-object category::copular-predication category::top 'value)

(define-category copular-predicate
  :specializes linguistic
  :documentation "This is strictly a labeling category that is used
 to label the edge over copular verb phrases ('has been unclear').
 The referent of those verb phrases is a copular-predication
 with an unbound 'item' variable. It seemed better to do it this way
 than make a category just for the predicate and then copy over two
 of its binding values when we compose with a subject.")


;;;-------
;;; rules
;;;-------

;;--- be + adjective or adjp

(loop for aa in '(adjective adjp 
                  comparative comparative-adjective comparative-adjp
                  superlative superlative-adjective superlative-adjp)
   do (def-form-rule/expr `(be ,aa)
         :form 'vp
         :head :left-edge 
         :referent '(:function make-copular-adjective
                               left-edge right-edge)))


;;;---------------
;;; make function
;;;---------------

(defgeneric make-copular-predication (subject aux object)
  (:documentation "The caller knows the semantic relationship between
 these three items is some sort of copular relationship between the
 subject and object such as equivalence or :isa.
 Depending on the type of the aux, we instantiate either an instance
 of 'be' or of the more general copular-predication.")
  (:method ((s edge) (a edge) (o edge))
    (let ((subj (edge-referent s))
          (aux (edge-referent a))
          (obj (edge-referent o)))
      (if (itypep aux 'be)
        (define-or-find-individual 'be
            :subject subj
            :predicate obj)
        (define-or-find-individual 'copular-predication
            :predicate aux
            :item subj
            :value obj)))))

(defgeneric make-copular-predication-of-pp (subject aux value prep)
  (:method ((subj individual) (vg edge) (o edge) (prep individual))
    ;; tailored for call in wh-copula-stranded-prep
    (let ((aux (edge-referent vg))
          (obj (edge-referent o))
          (p (itype-of prep)))
      (define-or-find-individual 'copular-predication-of-pp
          :item subj
          :predicate aux
          :value obj
          :prep p))))


;;;---------------------
;;; syntactic functions
;;;---------------------

(defvar *sentences-going-through-copular-adjective* nil
  "For accumulating the unique set of sentences where the rule
   applies. For the snapshots as of 8/28/16 there were 80.")

(defparameter *construct-copular-scafold* nil
  "If non-nil, make-copular-adjective will assemble and return
   a copular-predication individual. Otherwise we are relying on
   the adjective having a subcategorization for its subject.")

(defun make-copular-adjective (copula adjective)
  "Corresponds to the form rule for be+adjective (or +adjp) which
   composes them to create a VP with consituents for the verb group
   (e.g. 'should be') and the adjective or adjp. 
   If we are making a copular scafold we instantiate a three-place
   predication: copular-predication with the item that it will be
   applied to (presumably the subject)left open. Otherwise we make
   the interpretation be just the adjective on the assumption that it
   subcategorizes for the subject."
  ;; This is all sorted out in assimilate-subject
  (declare (special category::copular-predicate category::to-comp
                    *construct-copular-scafold*))
  #+ignore(pushnew (current-string)
                   *sentences-going-through-copular-adjective*)
  (cond
    (*subcat-test* ;; strictly speaking, the validity of this assertion
     ;; depends on the semantic properties of the subject and their
     ;; relation to the properties of the predicated description (the
     ;; adjective/adjp). We can't know that at this point, so we just
     ;; trust that it will all work out.
     t)
    (t
     (if (eq (edge-form (left-edge-for-referent)) category::infinitive)
       ;; "to be dominant" is not a VP, but is a to-comp
       (revise-parent-edge :form category::to-comp)
       (revise-parent-edge :form category::vp))
     
     (if *construct-copular-scafold*
       (let ((i (find-or-make-individual
                 'copular-predication :predicate copula :value adjective)))
         ;; Note that edge label deliberately is different.
         ;; The idea is have edge category labels that distinguish
         ;; between the vp and the eventual full clause.
         ;;/// this reads oddly in an analysis, so consider just
         ;; going with the edge label of the adjp instead
         (revise-parent-edge :category category::copular-predicate)        
         i)
     
       (else
         ;; The adjective should subcategorize via :s for the
         ;; sensible subjects it can compose with.
         (let* ((i (specialize-object adjective 'state))
                (j (add-tense/aspect-info-to-head copula i)))
             j ))))))

#| "... being high ..."
  The edge over "being" is an instance of 'be' with its progressive
variable bound.  We want to carry that information (and in general
all of the information in the vg) up to adjective (which is now a state)

|#

;;--- be + location

(def-k-method compose ((vg category::be) (pp category::location))
  ;; Make a copular predication like what make-copular-adjective does.
  ;; caller is adjoin-pp-to-vg when pp isn't a collection.
  (declare (special *subcat-test* category::copular-predicate))
  (if *subcat-test*
    t
    (let ((i (find-or-make-individual
               'copular-predication :predicate vg :value pp)))
      (revise-parent-edge :category category::copular-predicate)
      i)))


#| Make-copular-adjective makes a vp that refers to an instance of
a copular-predication. This is noticed explicitly by assimilate-subject
which calls apply-copula to engage the coersion / co-composition 
machinery. |#

(def-k-method apply-copula ((subj individual) (vp category::copular-predication))
  (declare (special category::copular-predication))
  (revise-parent-edge :category category::copular-predication)
  (setq vp (bind-variable 'item subj vp))
  vp)

(def-k-method apply-copula ((subj category) (vp category::copular-predication))
  (when (is-wh-pronoun? subj)
    (assimilate-subcat vp :subject subj)))


;;;---------
;;; be + PP
;;;---------

(define-category copular-predication-of-pp ;; (the cat)(is on the mat)
  :specializes copular-predication
  :instantiates self
  :binds ((prep :primitive category)
          (pobj))
  :index (:temporary :list)
  :documentation "Adds a prep and pobj variable to the variables 
 of copular-predication. The prepositional complement goes
 in the value variable, that sounds a bit odd, but what's in a name?")

(def-form-rule (be pp) ;; "the cat is on the mat"
  :form vp
  :new-category copular-pp
  ;; copular-pp is a label in a syntatic-rule where it's folded
  ;; in with all the NP sources and gerundive vps to form rules
  ;; that call apply-copular-pp to create copular-predicate objects
  :referent (:function make-copular-pp left-edge right-edge))

(def-form-rule (exist pp) ;; "what pathways exist betwee MEK and ERK"
  :form vp
  :new-category copular-pp
  ;; copular-pp is a label in a syntatic-rule where it's folded
  ;; in with all the NP sources and gerundive vps to form rules
  ;; that call apply-copular-pp to create copular-predicate objects
  :referent (:function make-copular-pp left-edge right-edge))

(defun make-copular-pp (be-ref pp)
  (declare (special category::copular-predication-of-pp *left-edge-into-reference*))
  (when (and
         (not (eq 'np (edge-form-name (left-edge-for-referent))))
         ;; block "the existence of ..." but accept "what pathes exist between ..."
         ;;#+ignore(and
         be-ref
         (null (value-of 'predicate be-ref))
         ;; we changed the variable to be predicate so as to
         ;; block "to be a required step in the process of EGFR transactivation"
         ;; If this is not already a copular predicate ("is a drug")     
	 (or (not (edge-p *left-edge-into-reference*))
             ;; case where there is no semantic predication established,
             ;; but there is a syntactic object
             ;; e.g. "was the result of defects in the developing embryo"
             (not (member (form-cat-name *left-edge-into-reference*)
			  '(s vp thatcomp)))))
    (let* ((prep (value-of 'prep pp))
           (pobj (value-of 'pobj pp)))
      (cond
        (*subcat-test*
         ;; when we have clausal "to-pp" like
         ;; "to enhance craf activation" it's a purpose clause,
         ;; not a copular PP
         (and prep pobj))
        (t
         (when (eq (edge-form (left-edge-for-referent)) category::infinitive)
           ;; "to be dominant" is not a pp, but is a to-comp
           ;; have to over-ride default category of the vp
           (revise-parent-edge :category category::copular-predicate
                               :form category::to-comp))
         (make-simple-individual
          category::copular-predication-of-pp
          `((predicate ,be-ref)
            (prep ,prep)
            (pobj ,pobj))))))))



;;;--------------------------
;;; hedged copular relations
;;;--------------------------

#| Have to figure out an equivalent of biological in the restriction.
Examples in the localization articles -- exhaustive list

  "Mouse embryo fibroblasts (MEFs) isolated from ERK1 knockout mice 
seemed to proliferate faster than control cells."
  "These experiments seem to indicate that the proliferative signal 
is mediated by ERK2."
  "Bradykinin stimulation of protein kinase C 
seems to be such a required pathway."
  "this mechanism seems unlikely at present."
  "Therefore, it seems unlikely that the receptor is simply 
phosphorylated by Src."
  "but rather seem dependent on phosphatidylinositol 
3-kinase activity."
  "The initiating event seems to be an influx of extracellular Ca."
  "UV seems to provoke receptor activation."
  "the possible role of ligand involvement would seem unlikely."
  "While UV does seem to mimic growth factor activation of the receptor."
  "this interaction seems to be of  low stoichiometry."
|#

;;;-----------------------------------------------------
;;; function to apply all the adjective rules to a word
;;;  that's already been defined
;;;-----------------------------------------------------

;;(define-category copula :specializes phrase-interpretation)
;; not sure what to do beyond this

(defun make-copular-def (word-string)
  "Given an already defined verb, give it the set of form rules
   it needs to fit in the copular paradigm."
  (let ((verb (intern (string-upcase word-string))))       
    (loop for aa in '(adjective adjp
                      comparative comparative-adjp
                      superlative superlative-adjp)
       collect (def-form-rule/expr `(,verb ,aa)
                  :form 'vp
                  :referent '(:function make-copular-adjective
                              left-edge right-edge))) ))


;;("seem" "appear" "remain"  "stay")
 
;;--------- pulled from bio;harvard-terms


;; became very pronounced by 9 h.
;; which became strongly tyrosine phosphorylated by 9 h of calcium treatment
;; The Ras-related protein, RAL becomes activated once GDP is replaced by GTP.")
;; "Does phosphorylated BRAF become high before phosphorylated MAP2K1 becomes high?"
;; the ability of the mutant Gab1 proteins to become tyrosine phosphorylated in response to EGF."

;; If "become" is followed by a verb ("activated") it's parsed as a passive
;; and largely disappears from the interpretation. 
(define-category become :specializes be
  :realization
    (:verb ("become" :third-singular "becomes" :past-tense "became"
		     :present-participle "becoming")
     :etf (svo)))
(make-copular-def "become")



