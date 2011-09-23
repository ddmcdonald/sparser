;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2010-2011 David D. McDonald  All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "correspondences"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  0.2 March 2011

;; initiated 10/5/09. Expanded 11/10. 
;; (12/9/10) Reworking most of this to bring it in sync what what rnodes
;;  encode.
;; 0.2 (1/25/11) Removed need to check against core-omar.
;;     (3/22/11) Starting to populate it. Continuing through 4/8/11.

(in-package :sparser)

;;;----------------------
;;; table of ETF to Tree
;;;----------------------

(defvar *etf-name-to-phrase*
  '(
    ;; from pre-head-np-modifiers
    (quantity+kind  mumble::qualifier-head 
     ((head . mumble::head) (arg . mumble::qualifier)))

    (modifier-creates-individual  mumble::qualifier-head 
     ((head . mumble::head) (arg . mumble::qualifier)))
     

    ;; from np-adjuncts
    (np-and-postmodifier  mumble::head-qualifier
     ((head . mumble::head) (arg . mumble::qualifier)))

    ;; from transitive
    (transitive  mumble::SVO
     ((head . ((head . mumble::v) (arg . mumble::o)))
      (arg . mumble::s)))

    )
  "Ulimately has one entry for every ETF in Sparser's grammar.
 The format is ETF name in the car. Mumble's data is in the
 cdr, starting with the resource (notice the use of a symbol
 in the :mumble package) and an alist of the binary arguments
 from Sparser's side with their correspondences for the phrase
 on Mumble's side.")



(defmethod has-mumble-mapping? ((etf exploded-tree-family))
  (has-mumble-mapping? (etf-name etf)))

(defmethod has-mumble-mapping? ((etf-name symbol))
  (assoc etf-name *etf-name-to-phrase*))




;;-------------- originals below here (12/9/10 ddm) -------------

;;;-------
;;; types
;;;------

(defobject bidir-mapping () ;; useful superc?
  ((sparser-resource)
   (mumble-resource)))

(defvar *sparser-to-mumble* (make-hash-table) ;; how big?
  "Given a sparser object, returns its sparser-to-mumble-mapping")

(defun set-bidir-mapping (sparser-item mumble-item)
  (let ((bidir (make-instance 'bidir-mapping
                              :sparser-resource sparser-item
                              :mumble-resource mumble-item)))
    (setf (gethash sparser-item *sparser-to-mumble*) bidir)
    bidir))

(defun get-mumble-side-of-bidir (sparser-item)
  (gethash sparser-item *sparser-to-mumble*))




;;;-------------
;;; entry point
;;;-------------

(defun rule-descriptor-to-nlg-resource (rule-descriptor)
  (push-debug `(,rule-descriptor))
  (typecase rule-descriptor
    (cons
     (unless (memq :head rule-descriptor)
       (error "Expected cons rule-descriptor to start with :head:~
             ~%   ~a" rule-descriptor))
     (let ((keyword (cadr rule-descriptor)))
       (case keyword
	 (:common-noun
	  ;; There are several minimal NP phrases to choose from.
	  ;; This choice is somewhat arbitrary and not deliberated.
	  (mumble::provide-phrase-and-data 'mumble::common-noun))
	 (otherwise
	  (error "New keyword in rule-descriptor: ~a~%  ~a"
		 keyword rule-descriptor)))))
    (cfr 
     (cond
       ((form-rule? rule-descriptor)
	(let ((ap (get-mumble-side-of-bidir rule-descriptor)))
	  (unless ap
	    (error "No mapping to a Mumble resource for~%   ~a"
		   rule-descriptor))
	  (values ap))) ;; not parameterized or entailing feature
       (t (error "New case of a context-free-rule as the ~
                  rule-descriptor:~%   ~a" rule-descriptor))))
    (otherwise
     (error "Unexpected type of rule-descriptor: ~a~%  ~a"
	    (type-of rule-descriptor) rule-descriptor))))


;;;------------------------------------------------------------
;;; Linking form rule to their corresponding attachment points
;;;------------------------------------------------------------

(defmacro def-form-rule-to-AP (rhs ap-name)
  `(def-form-rule-to-AP/expr ',rhs ',ap-name))

(defun def-form-rule-to-AP/expr (rhs ap-name)
  (let ((category-1 (resolve (car rhs)))
	(category-2 (resolve (cadr rhs)))
	(ap (mumble::attachment-point-named 
	     (intern ap-name (find-package :mumble)))))
    (unless ap (error "There is no attachment point named ~a" ap-name))
    (unless category-1 (error "There is no category named ~a" (car rhs)))
    (unless category-2 (error "There is no category named ~a" (cadr rhs)))
    (let ((rule (lookup-syntactic-rule `(,category-1 ,category-2))))
      (unless rule (error "There is no form rule for ~a" rhs))
      (set-bidir-mapping rule ap))))


;;--- cases





;;; Linking ETF to phrases

