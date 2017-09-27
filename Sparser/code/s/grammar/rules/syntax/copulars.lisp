;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "copulars"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  February 2017

(in-package :sparser)

;;;---------
;;; classes
;;;---------

(define-category copular-predication
  :specializes predication
  :instantiates :self
  :restrict ((predicate be))
  :binds ((item)
          (value))
  :index (:temporary :sequential-keys predicate value)
  :documentation "Represents the 'to be' relationship between
 an 'item' (prototypically the subject) and a value (the complement).
 This is the standard interpretation of predicate-adjective constructions
 ('the cat is on the mat'). Note that through their connection to
 predication, individuals of this category are states and take tense.")

(define-category copular-predicate
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
         :referent '(:function make-copular-adjective
                               left-edge right-edge)))

;;;---------------------
;;; syntactic functions
;;;---------------------

(defvar *sentences-going-through-copular-adjective* nil
  "For accumulating the unique set of sentences where the rule
   applies. For the snapshots as o 8/28 there were 80.")

(defun make-copular-adjective (copula adjective)
                              ;; &optional (copula-edge (left-edge-for-referent)))
  "Corresponds to the form rule for be+adjective (or + adjp) which
   composes them to create a VP with consituents for the verb group
   (e.g. 'should be') and the adjective or adjp. 
   This instantiates a three-place predication: copular-predication,
   with the item that it will be applied to (presumably the subject)
   left open."
  (declare (special category::copular-predicate category::to-comp))
  #+ignore(pushnew (current-string)
                   *sentences-going-through-copular-adjective*)
  (cond
    (*subcat-test* ;; strictly speaking, the validity of this assertion
     ;; depends on the semantic properties of the subject and their
     ;; relation to the properties of the predicated description (the
     ;; adjective/adjp). We can't know that at this point, so we just
     ;; trust that it will all work out.
     t)
    (t (let ((i (find-or-make-individual
                 'copular-predication :predicate copula :value adjective)))
         ;; Note that edge label deliberately is different.
         ;; The idea is have edge category labels that distinguish
         ;; between the vp and the eventual full clause.
         ;;/// this reads oddly in an analysis, so consider just
         ;; going with the edge label of the adjp instead
         (revise-parent-edge :category category::copular-predicate)

         (if (eq (edge-form (left-edge-for-referent)) category::infinitive)
           ;; "to be dominant" is not a VP, but is a to-comp
           (revise-parent-edge :form category::to-comp)
           (revise-parent-edge :form category::vp))
         i))))
#|
  ;; optional edge used in calls from make-this-a-question-if-appropriate
  ;; when there wasn't an edge over the whole span and we're trying
  ;; to salvage an edge from the treetops we've got
  (when (and (edge-p copula-edge)
             (eq (edge-form copula-edge) category::vg+ing))
     (revise-parent-edge :form category::vg+ing))  |#


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


;;;---------
;;; be + PP
;;;---------

(define-category copular-predication-of-pp ;; (the cat)(is on the mat)
  :specializes copular-predication
  :instantiates self
  :binds ((prep :primitive category))
  :index (:temporary :list)
  :documentation "Adds a prep variable to the variables 
 of copular-predication. The prepositional complement goes
 in the value variable, that sounds a bit odd, but what's in a name?")

(def-form-rule (be pp) ;; "the cat is on the mat"
  :form vp
  :new-category copular-pp
  ;; copular-pp is a label in a syntatic-rule where it's folded
  ;; in with all the NP sources and gerundive vps to form rules
  ;; that call apply-copular-pp to create copular-predicate objects
  :referent (:function make-copular-pp left-edge right-edge))

(defun make-copular-pp (be-ref pp)
  (declare (special category::copular-predication-of-pp *left-edge-into-reference*))
  (when (and
         be-ref
         (null (value-of 'predicate be-ref))
         ;; we changed the variable to be predicate so as to
         ;; block "to be a required step in the process of EGFR transactivation"
         ;; If this is not already a copular predicate ("is a drug")     
	 (or (not (edge-p *left-edge-into-reference*))
             ;; case where there is no semantic predication established,
             ;; but there is a syntactic object
             ;; e.g. "was the result of defects in the developing embryo"
             (not (member (cat-name (edge-form *left-edge-into-reference*))
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
           (value ,pobj))))))))



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
  (let ((verb (intern (string-upcase word-string))))
    ;; Original design made a category for the word that specialized
    ;; copula. Now we just make the rules, and the use a function form
    ;; of the rule definer so we don't need anything evaled.
       
    (loop for aa in '(adjective adjp
                      comparative comparative-adjp
                      superlative superlative-adjp)
       collect (def-form-rule/expr `(,verb ,aa)
                  :form 'vp
                  :referent '(:function make-copular-adjective
                              left-edge right-edge))) ))

#+ignore ;; do this in the biology/verbs.lisp file for now
("seem" "appear" "remain" "become" "stay")
 
