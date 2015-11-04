;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "families"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  1.1 February 2015

;; Initiated 2/6/14. Augment the realization options of shortcuts
;; 9/19/14 Supplanted original notion with a new one that seems
;; simpler, since it's based on copying existing mapping.
;; 1.0 (12/11/14) Using this clean copy to facilitate changing
;;   the mapping terms to fit the new, simpler source mappings.
;; 1.1 (2/9/15) Removed the original code. Pulled in extensions
;;   accidentally stranded in earlier code. 

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

Use (categories-using-etf <name>) to get examples
when contemplating using a new tree family
|# 

(define-realization-scheme sv intransitive
  :head :verb
  :mapping ((agent . subj-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)))

(define-realization-scheme svo transitive
  :head :verb
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)))

(define-realization-scheme svo-passive passive/with-by-phrase
  :args (agent-slot agent-v/r patient-slot patient-v/r)
  :head :verb
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r) ;; from transitive
            (np/agent . subj-v/r)   ;; from passive/with-by-phrase
            (np/patient . theme-v/r)
            (np/object . theme-v/r)
            (by-pp . by-v/r)
            (result-type . :self)))
            
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

(define-realization-scheme pre-mod premodifier-adds-property 
  ;; used in quarter: 2004 <quarter>
  :head :common-noun
  :mapping ((property . modifier-slot)
            (np-head . :self)
            (modifier . modifier-v/r)))

(define-realization-scheme of-nominal empty-head-of-complement
  ;; used in old svo/nominal
  :head :common-noun
  :mapping ((result-type . :self)
            (of-item . theme-slot)
            (base-np . :self)
            (complement . theme-v/r)
            (np . :self)))

(define-realization-scheme np-by np-with-by-phrase
  :head :common-noun
  :mapping ((agent . subj-slot)
            (np/subject . subj-v/r) ;; by-subj
            (np . :self)
            (by-pp . by-v/r)))


     
#|  Mine this
(define-category  quarter
  :specializes time
  :instantiates self  ;; ?? generalization to all these fiscal accounting periods?
  :binds ((year . year)
          (position-in-year . ordinal)
          (end-date . end-date)
          (company . company))
  :realization ((:tree-family designated-instance-of-set   ;; "first quarter"
                 :mapping ((designator . position-in-year)
                           (np-head . :self)
                           (qualifier . ordinal)
                           (np . :self))
                 :common-noun "quarter")

                (:tree-family  member-of ;; "___ of 1998"
                 :mapping ((identifier . year)
                           (complement . year)
                           (np . :self)))

                (:tree-family  modifier-creates-subtype  ;; "fiscal ___"
                 :mapping ((n-bar . :self)
                           (subtyping-modifier . fiscal)
                           (np-head . :self)))

                (:tree-family  np-participle  ;; "___ ending June 26, 2004"
                 :mapping ((np . :self)
                           (participle . end-date)
                           (participle-field . end-date)))

                (:tree-family  premodifier-adds-property  ;; "2004 ___"
                 :mapping ((modifier . year)
                           (np-head . :self)
                           (property . year)))

                (:tree-family  possessive/bind-slot   ;; "its ___"
                 :mapping ((pos-slot . company)
                           (np . :self)
                           (possessive . company-s)
                           (np-head . :self)))))
|#

                   

