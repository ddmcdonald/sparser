;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "copulars"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2016


(in-package :sparser)

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

(define-category copula :specializes abstract) ;; not sure what to do beyond this

(defun make-copular-def (word-string)
  (let ((verb (intern (string-upcase word-string))))
    `(progn
       #+ignore
       (define-category ,verb :specializes copula
                        :binds ((tocomp t)
                                (subject t)
                                (theme t))
                        :realization
                        (:verb ,word-string
                               :etf (svo)
                               :s subject
                               :to-comp tocomp
                               :o theme))

       (def-form-rule (,verb adjective)
           :form vp
           :referent (:function make-copular-adjective left-edge right-edge))

       (def-form-rule (,verb adjp)
           :form vp
           :referent (:function make-copular-adjective left-edge right-edge)))))

#+ignore ;; do this in the biology/verbs.lisp file for now
(loop for v in '("seem" "appear" "remain"
                 "become" "stay")
     do
     (eval (make-copular-def v)))

;;;---------
;;; classes
;;;---------

(define-category copular-predication
  :specializes predication
  :restrict ((predicate be))
  :binds ((item)
          (value))
  :index (:temporary :sequential-keys predicate value))


;;/// to be revised/flushed
(define-category copular-pp ;; "the cat is on the mat"
  :specializes be
  :binds ((copula)
          (prep)
          (pobj))
  :documentation "Provides a scaffolding that the syntax function
    make-copular-pp can use to package preposition and complement
    it got from a [be-ref + pp] rule."
  :index (:temporary :list))

;;/// to be flushed in favor of copular-predication
(define-category copular-predicate
  :specializes be
  :binds ((predicate)
          (predicated-of)
          (copula))
  :documentation "Provides a scaffolding that the syntax function
    apply-copular-pp can use to package the predicate it creates
    from the np in an [np + copular-pp] rule."
  :index (:temporary :list))
#| sampled 8/26/16
drivers/chart/psp/post-analysis-operations.lisp:  (declare (special category::copular-predicate))
drivers/chart/psp/post-analysis-operations.lisp:				      ((eq category::copular-predicate (edge-category (car parent-edges)))
grammar/rules/syntax/be.lisp:(define-category copular-predicate
grammar/rules/syntax/be.lisp:  ;; that call apply-copular-pp to create copular-predicate objects
grammar/rules/syntax/syntax-functions.lisp:  (declare (special category::copular-predicate))
grammar/rules/syntax/syntax-functions.lisp:	(revise-parent-edge :category category::copular-predicate)
grammar/rules/syntax/syntax-functions.lisp:         category::copular-predicate
|#
;;;-------
;;; rules
;;;-------

;;--- be + adjective or adjp

(def-form-rule (be adjective)
  :form vp
  :referent  (:function make-copular-adjective left-edge right-edge))

(def-form-rule (be adjp)
  :form vp
  :referent (:function make-copular-adjective left-edge right-edge))


;;--- be + pp

(def-form-rule (be pp) ;; "the cat is on the mat"
  :form vp
  :new-category copular-pp
  ;; copular-pp is used in a syntatic-rule where it's folded
  ;; in with all the NP sources and gerundive vps to form rules
  ;; that call apply-copular-pp to create copular-predicate objects
  :referent (:function make-copular-pp left-edge right-edge))



(defvar *sentences-going-through-copular-adjective* nil
  "For accumulating the unique set of sentences where the rule
   applies. For the snapshots as o 8/28 there were 80.")


(defun make-copular-adjective (copula adjective
                               &optional (copula-edge (left-edge-for-referent)))
  "Corresponds to the form rule for be+adjective, which creates a VP with consituents
   for the verb group (e.g. 'should be') and the adjective or adjp. 
   This instantiates a predication, copular-predication with the item
   it applies to (presumably the subject) left open."
   #+ignore(pushnew (sentence-string *sentence-in-core*)
                   *sentences-going-through-copular-adjective*)
   (cond
    (*subcat-test* ;; strictly speaking, the validity of this assertion
     ;; depends on the semantic properties of the subject and their
     ;; relation to the properties of the predicated description (the
     ;; adjective/adjp). We can't know that at this point, so we just
     ;; trust that it will all work out.
     t)
    (t (push-debug `(,copula ,adjective))
       ;;(lsp-break "parent edge is ~a" (parent-edge-for-referent))
       (let ((i (find-or-make-individual
                 'copular-predication :predicate copula :value adjective)))
          (revise-parent-edge :category category::copular-predicate
                              :form category::vp)
          i))))

#| This was the original behavior. Note that this went with having the
verbal part of a predicate adjective construction and the adjective part
both be include within a span labeled VG. This verion of make-copular-adjective
just stashed the verb part on the adjective on an ad-hoc lambda variable
         (let ((i (individual-for-ref adjective)))
           (bind-dli-variable :copular-verb copula i)    
           i)   |#
#|
  ;; optional edge used in call from make-this-a-question-if-appropriate
  ;; when there wasn't an edge over the whole span and we're trying
  ;; to salvage an edge from the treetops we've got
  (when (and (edge-p copula-edge)
             (eq (edge-form copula-edge) category::vg+ing))
     (revise-parent-edge :form category::vg+ing))  |#

