;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "families"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  1.0 December 2014

;; Initiated 2/6/14. Augment the realization options of shortcuts
;; 9/19/14 Supplanted original notion with a new one that seems
;; simpler, since it's based on copying existing mapping.
;; 1.0 (12/11/14) Using this clean copy to facilitate changing
;;   the mapping terms to fit the new, simpler source mappings.

(in-package :sparser)

;;;----------------------
;;; class to encode them
;;;----------------------

(defclass realization-scheme (named-object)
  ((etf :accessor etf-for-schema
    :documentation "The exploded tree family that's used.
      We need its schema as the basis of the rules we make.")
   (head-keyword :accessor schema-head-keyword
    :documentation "The keyword used with the actual word
      in the call to head-word-rule-construction-dispatch ")
   (subst-args :accessor schema-substitution-args
    :documentation "a list of symbols from the cdr's of the
      mapping that we substitute real values for when we
      assemble the mapping.")
   (schematic-mapping :accessor schema-mapping
    :documentation "a regular etf mapping of dotted pairs
      in the form it has when used directly in the realization
      field of a category definition."))
  (:documentation
   "Holds the content of a realization scheme for 'activation'
    by apply-realization-scheme, which makes retail calls to
    the operations make-rules-for-rdata does wholesale."))

;;;------------------------
;;; Accessors and def form
;;;------------------------

(defparameter *name-symbols-to-realization-schema* (make-hash-table))

(defun get-realization-scheme (name)
  (gethash name *name-symbols-to-realization-schema*))


(defmacro define-realization-scheme (name etf-name 
                                     &key args head mapping)
  `(define-realization-scheme/expr ',name ',etf-name 
     :args ',args :head ',head :mapping ',mapping))

(defun define-realization-scheme/expr (name etf-name 
                                       &key args head mapping)
  (push-debug `(,name ,etf-name ,mapping ,args ,head))
  (let ((s (get-realization-scheme name)))
    (unless s
      (setq s (make-instance 'realization-scheme
                :name name))
      (setf  (gethash name *name-symbols-to-realization-schema*) s))
    (let ((etf (exploded-tree-family-named etf-name)))
      (unless etf
        (error "There is no exploded tree family named ~a" etf-name))
      (setf (etf-for-schema s) etf)
      (setf (schema-head-keyword s) head)
      (setf (schema-substitution-args s) args)
      (setf (schema-mapping s) mapping)
      s)))


;; flush this version when completely changed over
(defun includes-a-form-of-passive? (tree-family-names)
  ;; Are any of the tree families to be used with
  ;; this term versions of the passive with a by-phrase?
  (dolist (symbol tree-family-names nil)
    (when (memq symbol '(svo-passive np-by))
      (return t))))

(defun is-a-form-of-passive? (rschema-name)
  (memq rschema-name '(svo-passive np-by)))
      
;;;-------
;;; cases
;;;-------

#| In these mappings, the labels on the left come from
the ETF and the ones on the right from the mapping in
the short cuts. 
|#

(define-realization-scheme sv intransitive
  :head :verb
  :mapping ((agent . subj-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)))

(define-realization-scheme svo-passive passive/with-by-phrase
  :args (agent-slot agent-v/r patient-slot patient-v/r)
  :head :verb
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/agent . subj-v/r)
            (np/patient . theme-v/r)
            (by-pp . by-v/r)
            (result-type . :self)))

(define-realization-scheme np-by np-with-by-phrase
  :head :common-noun
  :mapping ((agent . subj-slot)
            (np/subject . subj-v/r) ;; by-subj
            (np . :self)
            (by-pp . by-v/r)))
            

(define-realization-scheme svo transitive
  :head :verb
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)))

(define-realization-scheme svcomp that-complement
  :head :verb
  :mapping ((s . :self)
            (np .  subj-v/r)
            (vg . :self)
            (vp . :self)
            (s/that-comp . comp-v/r)
            (result . :self)
            (agent . subj-slot)
            (theme . comp-slot)))


(define-realization-scheme of-nominal empty-head-of-complement
  ;; used in old svo/nominal
  :head :common-noun
  :mapping ((result-type . :self)
            (of-item . theme-slot)
            (base-np . :self)
            (complement . theme-v/r)
            (np . :self)))

                        




;;------------------ February version never adequately 
;;                   thought through. Here to the end
;;;-----------
;;; structure
;;;-----------

(defvar *name-to-family-of-trees* (make-hash-table))

(defun get-family-of-trees (name)
  (gethash name *name-to-family-of-trees*))


(defclass family-of-trees (named-object)
  ((root-labels :accessor tf-roots
    :documentation "The labels on the root nodes of trees,
      usually maximal categories that have an obvious correspondence
      in the upper ontology. No duplications. 
      Most important category first. It dictates the default
      supercategory of the category generator.")
   (word-parameters :accessor tf-word-parameters
    :documentation "The substitution parameters for words
      in the mappings.")
   (parameter-default-pairs :accessor tf-parameter-pairs
    :documentation "An alist of the parameters with their defaults,
      i.e. the names of the referential categories in the mappings.")
   (label-default-pairs :accessor tf-label-pairs
    :documentation "An alist of the labels with their defaults,
      i.e. the names of the form categories in the mappings.") ; 
   (family-mapping-fn-pairs :accessor family-mapping-fn-pairs
    :documentation "For now just the raw etf and mapping plist")
)
  (:documentation "Fundamentally just a list of rspecs: tree-family
    and mapping combination."))


(defmacro define-family-of-trees (name  &rest keys)
  `(define-family-of-trees/expr ',name ',keys))

(defun define-family-of-trees/expr (name keys)
  (apply #'construct-family-of-trees name keys))
;;(quote-every-second-one keys)

(defun construct-family-of-trees (name
                                  &key words
                                       parameter-defaults
                                       ((:families eft-and-mapping)))                                       
  (let ((family (or (get-family-of-trees name)
                    (let ((new (make-instance 'family-of-trees
                                 :name name)))
                      (setf (gethash name *name-to-family-of-trees*) new)
                      new))))    
    ;;/// parameter validity checking -- e.g. that there are words
    (setf (tf-word-parameters family) words)
    (let ( roots  parameter-pairs  label-pairs family-pairs )
      (dolist (list eft-and-mapping)
        (let* ((etf-name (car list))
               (etf (exploded-tree-family-named etf-name))
               (mapping (cdr list)))
          (unless etf
            (error "There is no ETF named ~a" etf-name))
          (let ((parameters (etf-parameters etf))
                (labels (etf-labels etf)))
            (pushnew (first labels) roots)
            (dolist (pair mapping)
              (cond
               ((memq (car pair) parameters)
                (push pair parameter-pairs))
               ((memq (car pair) labels)
                (push pair label-pairs))
               (t (push-debug `(,pair ,etf))
                  (error "mapping pair doesn't make sense: ~a" pair)))))
          (push `(,etf ,@mapping) family-pairs)))
      (setf (tf-roots family) (nreverse roots))
      (setf (tf-parameter-pairs family) (nreverse parameter-pairs))
      (setf (tf-label-pairs family) (nreverse label-pairs))
      (setf (family-mapping-fn-pairs family) (nreverse family-pairs)))
    family))


;;;-------
;;; cases 
;;;-------

(define-family-of-trees intransitive
  :words (main-verb)
  :families ((intransitive
	      (s . event)
              (vp . event)
              (np/subject . individual)
              (agent . subject))))

#|
(define-family-of-trees transitive/pasive/nominalized (s np)
  :words (main-verb common-noun)
  :parameters (agent patient  of-item result-type)
  :labels (s vp vg np/subject np/object  np base-np complement)
  :families ((:tree-family transitive/passive
              :mapping ((agent . by-whom)
                        (patient . who)
                        (s . :self)
                        (vp . :self)
                        (vg . :self)
                        (np/subject . person)
                        (np/object . person))
              :main-verb "assassinate")
             (:tree-family empty-head-of-complement
              :mapping ((result-type . :self)
                        (of-item . who)
                        (base-np . :self)
                        (complement . person)
                        (np . :self))
              :common-noun "assassination")))
|#
