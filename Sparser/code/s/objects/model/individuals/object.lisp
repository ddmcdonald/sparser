;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2013-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:individuals:"
;;;  version:  0.5 November 2015

;; initiated 7/16/92 v2.3
;; (6/8/93) added Indiv-typep
;; (8/7/94) added itypep as respelling of Indiv-typep and i-type-of
;; 0.1 (3/3/95) modified i-type-of to not break if it is passed an object
;;      other than an individual
;; 0.2 (9/13) extended indiv-typep to look up the lattice
;; 0.3 (8/14/13) Since itypep may be used in cases where its argument
;;      is a category (head word) rather than an individual, added a
;;      diversion for that case. 4/16/14 ditto for itype-of
;; 0.4 (6/5/15) indiv-typep now returns nil when passed a category.
;;     6/8/2015 avoid break in itypep by flagging mixin categories  
;;     7/7/15 Removing psi deadwood.
;; 0.5 (10/16/15) Cleaned up. Allowing mixins to itypep, previous
;;      change was too stringent. Inserted a convenience for the
;;      case of conjunctions, where the type is buried inside the
;;      structure. 
;;     (11/12/15) Added special routine for removing all the rules
;;      from a category given as the routines that add them aren't consistent.


(in-package :sparser)

;;;-------------------------------
;;; basic operations & predicates 
;;;-------------------------------

;;--- entry points (/// should be consolidated)

(defun itype-of (i) (i-type-of i))

(defparameter *break-on-bad-itype-of* nil)

(defun i-type-of (i)
  (typecase i
    (individual
     (let ((type-field (indiv-type i)))
       (values (car type-field)
               type-field)))
    (model-category i)
    (polyword 
     (report-bad-itype-of i)     
     nil)
    (word 
     (report-bad-itype-of i)     
     nil)
    (null
     (report-bad-itype-of i)     
     nil)
    (otherwise
     (push-debug `(,i))
     (error "itype-of applied to a ~a rather than ~
             an individual" (type-of i)))))



(defun itypep (i c/s) 
  (if (consp i)
    (error "what are you doing passing a CONS to itypep: ~s~&" i)
    (typecase i
      (individual
       (indiv-typep i c/s))
      (referential-category
       (category-inherits-type? i (category-named c/s :break-if-none)))
      (mixin-category
       ;; strictly speaking mixins are not organized into taxonomies
       ;; but in most code one won't be able to tell
       (category-inherits-type? i (category-named c/s :break-if-none)))
      (word 
       (format t "~&*** itypep applied to a word ~s. Bad referent on edge. Returning NIL." i)
       (report-bad-itype-of i 'itypep)
       nil)
      (otherwise
       (push-debug `(,i ,c/s))
       (error "indiv-typep not applied to an individual:~%~a  ~a"
              (type-of i) i))))) 

(defun itype (i c/s)
  (indiv-typep i c/s))


(defun report-bad-itype-of (i &optional (called-from 'itype-of))
  (if *break-on-bad-itype-of* 
      (break "~s applied to ~s rather than an individual" called-from i)
      (then 
        (format t "~&--- ~S applied to ~s rather than an individual" called-from i)
        (format t "~&(setq *break-on-bad-itype-of* T) to cause a break here"))))




;;--- Does the actual search

(defun indiv-typep (i category/symbol)
  ;; analogous to Typep -- does this individual include this
  ;; category in its type field
  (declare (special *break-on-pattern-outside-coverage?*
                    category::collection category::sequence))
  (let ((category (category-named category/symbol :break-if-none))
        (type-field (indiv-type i)))

    (when (or (memq category::collection type-field)
              (memq category::sequence type-field))
      ;; of course, one can ask a collection whether it is 
      ;; a collection and have it say yes rather than
      ;; look at what it's a collection of
      (unless (or (eq category category::collection)
                  (eq category category::sequence))
        (let ((conj-type (value-of 'type i)))
          (when conj-type
            ;; If there isn't a type, then this was either a badly
            ;; modeled collection (though all the ones created by
            ;; conjunction have been vetted), or it's an instance
            ;; of the actual word, e.g. "a specific phorphorylation 
            ;; sequence" in the ASPP January article. These need
            ;; proper models, but we can't block a type-check waiting
            ;; for them all to be done
            (setq type-field 
                  (if (consp conj-type) conj-type `(,conj-type)))))))

    (typecase i
      (individual 
       (cond
        ((member category type-field :test #'eq) t)
        (t  ;; otherwise lets look at the supercategories
         ;; We've already checked the base case of individual-inherits-type
         ;; so we can skip to the next level 
         (let ((inherits-it? ;;(individual-inherits-type? i category)
                (category-inherits-type? (car type-field) ;; for conj
                                         category))) ;; 'reference category'
           (when inherits-it?
             (values t (i-type-of i)))))))
      (otherwise
       (when *break-on-pattern-outside-coverage?*
         (push-debug `(,i ,category/symbol))
         (error "indiv-typep not applied to an individual:~%~a  ~a"
                (type-of i) i))))))

           

;;---- Misc. 

;;/// is this being used?
(defun itype-symbol (i)
  (cat-symbol (i-type-of i)))


;;;----------------
;;; deleting rules
;;;----------------
;; Goes here since class individual isn't available when the cfrs
;; are loaded.  

(defmethod remove-rules-from-category ((i individual))
  (remove-rules-from-category  (get-tag :rules i)))

(defmethod remove-rules-from-category ((rules list))
  (dolist (rule rules)
    (when (consp rule)
      ;; This is a major inconsisency b/w routines that
      ;; add rules to things. 
      (setq rule (car rule)))
     (delete/cfr rule)))

