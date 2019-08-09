;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "families"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  December 2017

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
  ((etf :initarg :etf :accessor schema-tree-family
    :documentation "The exploded tree family that's used.
      We need its schema as the basis of the rules we make.")
   (phrase :initarg :phrase :accessor mumble-phrase
    :documentation "The Mumble phrase that corresponds to 
      this etf")
   (head-keyword :initarg :head :accessor schema-head-keyword
    :documentation "The keyword used with the actual word
      in the call to head-word-rule-construction-dispatch ")
   (subst-args :initarg :args :accessor schema-substitution-args
    :documentation "a list of symbols from the cdr's of the
      mapping that we substitute real values for when we
      assemble the mapping.")
   (schematic-mapping :initarg :mapping :accessor schema-mapping
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

(defparameter *realization-schemas* (make-hash-table))

(defun realization-scheme-named (name &optional (errorp t))
  (or (gethash name *realization-schemas*)
      (and errorp (error "There is no realization scheme named ~a." name))))

(defun fom-realization-scheme (name &rest initargs)
  (or (realization-scheme-named name nil)
      (setf (gethash name *realization-schemas*)
            (apply #'make-instance 'realization-scheme
                   :name name
                   initargs))))

(defmacro define-realization-scheme (name etf-name
                                     &key args head mapping phrase)
  (let ((decoded-phrase (translate-mumble-phrase-data phrase)))
    `(fom-realization-scheme ',name
                             :etf ',(exploded-tree-family-named etf-name)
                             :args ',args
                             :head ',head
                             :phrase ',decoded-phrase
                             :mapping ',mapping)))

;;;-------
;;; cases
;;;-------

#| In these mappings, the labels on the left come from
the ETF and the ones on the right from the mapping in
the short cuts. 

Use (categories-using-etf <name>) to get examples
when contemplating using a new tree family
|# 

(defun is-a-form-of-passive? (schema-name)
  (memq schema-name '(svo-passive np-by)))

(define-realization-scheme sv intransitive
  :head :verb
  :phrase (SV (s . subj-slot) (v . :self))
  :mapping ((agent . subj-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)))

;;now allows for direct objects to appear in PPs

(define-realization-scheme svo transitive
  :head :verb
  :phrase (SVO (s . subj-slot) (v . :self)
               (o . theme-slot))
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)
            (pp/object . theme-v/r)))

(define-realization-scheme svo-passive passive/with-by-phrase
  :args (agent-slot agent-v/r patient-slot patient-v/r)
  :head :verb
  :phrase (SVO (s . subj-slot) (v . :self)
               (o . theme-slot)) ;; by-phrase is an adjunct
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
            
(define-realization-scheme svol transitive-loc-comp
  :head :verb
  :phrase (SVO1O2 (s . subj-slot) (v . :self) 
                  (o1 . theme-slot) (o2 . loc-slot))
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (location . loc-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)
            (loc . loc-v/r)))

(define-realization-scheme svio ditrans-pp/io
  :head :verb
  :phrase (s-v-io-do (s . subj-slot) (v . :self)
                     (do . theme-slot) (io . iobj-slot))
  :mapping ((agent . subj-slot)
            (theme . theme-slot)
            (patient . iobj-slot)
            (s . :self)
            (vp . :self)
            (v-double-bar . :self)
            (v-bar . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)
            (np/patient . iobj-v/r)
            (pp/patient . iobj-v/r)))

(define-realization-scheme svoa ditransitive/attribute
  :head :verb
  :phrase (SVOA (s . subj-slot) (v . :self)
                (o . theme-slot) (a . attr-slot))
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (attribute  . attr-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)
            (ap/attribute . loc-v/r)))

(define-realization-scheme svcomp that-complement
  :head :verb
  :phrase (SVSCOMP (s v c))
  :mapping ((s . :self)
            (np .  subj-v/r)
            (vg . :self)
            (vp . :self)
            (s/that-comp . comp-v/r)
            (result . :self)
            (agent . subj-slot)
            (theme . comp-slot)))


;;--- NP schema

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

                   

