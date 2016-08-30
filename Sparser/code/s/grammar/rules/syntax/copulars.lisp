;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013-2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "copulars"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2016


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

(defvar *sentences-going-through-copular-adjective* nil)

;; original
(define-category copular-predicate
  :specializes be
  :binds ((predicate)
          (predicated-of)
          (copula))
  :documentation "Provides a scaffolding that the syntax function
    apply-copular-pp can use to package the predicate it creates
    from the np in an [np + copular-pp] rule."
  :index (:temporary :list))

(define-category copular-predication
  :specializes predication
  :restrict ((predicate be))
  :binds ((item)
          (value))
  :index (:temporary :sequential-keys predicate value))

;; (setq *use-original-copular-adjective* nil)
(defparameter *use-original-copular-adjective* nil
  "Flag to make it easy to see what the analysis would have been.")

(defun make-copular-adjective (copula adjective &optional (copula-edge (left-edge-for-referent)))
  "Corresponds to the form rule for be+adjective, which creates a VP with consituents
   for the verb group (e.g. 'should be') and the adjective or adjp. 
   The earlier version of this attached the verb group information to 
   the referent of the adjective by using an ad-hoc lambda variable. 
   This version instantiates a predication with the item it applies to
   (presumably the subject) left open."
   #+ignore(pushnew (sentence-string *sentence-in-core*)
                   *sentences-going-through-copular-adjective*)
   (cond
    (*subcat-test* ;; strictly speaking, the validity of this assertion
     ;; depends on the semantic properties of the subject and their
     ;; relation to the properties of the predicated description (the
     ;; adjective/adjp). We can't know that at this point, so we just
     ;; trust that it will all work out.
     t)
    (t (if *use-original-copular-adjective*
         (let ((i (individual-for-ref adjective)))
           (bind-dli-variable :copular-verb copula i)    
           i)
      (else
        (push-debug `(,copula ,adjective))
        ;;(lsp-break "parent edge is ~a" (parent-edge-for-referent))
        (let ((i (find-or-make-individual
                  'copular-predication :predicate copula :value adjective)))
          ;;(lsp-break "i is good? = ~a" i)
          (revise-parent-edge :category category::copular-predicate
                              :form category::vp)
          i))))))

#|
  ;; optional edge used in call from make-this-a-question-if-appropriate
  ;; when there wasn't an edge over the whole span and we're trying
  ;; to salvage an edge from the treetops we've got
  (when (and (edge-p copula-edge)
             (eq (edge-form copula-edge) category::vg+ing))
     (revise-parent-edge :form category::vg+ing))  |#

