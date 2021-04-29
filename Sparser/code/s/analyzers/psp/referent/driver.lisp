;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1999,2011-2021 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "driver"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   April 2021

;; broken out from all-in-one-file 11/28/91
;; 1.0 (8/28/92 v2.3) Added global referring to the referent returned.
;; 1.1 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics
;; 1.2 (5/15/93) Switched to setq'ing *referent* because the actions have
;;      to change it.
;; 1.3 (8/4) added keyword args so that it could be driven off referents
;;      directly without having to have the left-edge.
;; 1.4 (1/6/94) added switch that would pre-empt everything
;; 1.5 (4/19/95) zero'ing *referent* at the start of each call.
;; 2.0 (3/22/98) direct referents now initiate psi's.
;;     (6/30) rethreaded to group common elements as part of handling annotations.
;;     (7/12) pulled them in favor of doing within the dispatches.
;; 2.1 (7/25) Because the psi keep going down the lattice as they get elaborated,
;;      changed to updating the referent with each action instead of just
;;      the first.
;; 2.2 (6/4/99) revised Referent-from-rule to pass more information through to
;;      the annotater, and cleaned up the now obsolete direct-pointer?
;; 2.3 (1/10/07) Refined decision for 2.1 so that only certain classes update
;;      the referent (cases from dm&p rules)
;;     (4/27/11) Cleanup. More on 5/10
;; 2.4 (7/22/13) Added some doc and the base of the redistribute method
;;     (8/14/13) More syntactic sugar.
;;     (10/10/13) Added final hook to incorporate the referent into the situation. 
;;     (3/31/14) Put real call for the c3 case. (4/7/14) Letting the result of
;;      the C3 call (which wraps a call to compose) override the referent.
;; 2.5 (1/2/2015) change referent-from-rule to refurn :abort-edge when the referent 
;;      computation fails, so that failed sub-categorization frames are not applied
;; 2.6 (4/19/15) Factored out walk-through-referent-actions from referent-from-rule
;;      so the guts of the loop were easier to read and as place to restructure
;;      the rule field to notice head+binding expressions and compose them
;;      into a new :head-and-bindings expression.

(in-package :sparser)

;;;---------
;;; globals
;;;---------

;; Lexically bound immediately when referent-from-rule is called
(defvar *left-edge-into-reference*  nil)
(defvar *right-edge-into-reference* nil)
(defvar *parent-edge-getting-reference* nil)
(defvar *rule-being-interpreted* nil)
(defvar left-referent nil)
(defvar right-referent nil)

;; Used in setting up annotations and keeping track
;; of which edge is which in routines that are sensitive
;; to head constituents
(defvar *head-edge* nil)
(defvar *arg-edge* nil)

;; Tracks the referent as it morphs when looping
;; through successive terms in the rule-field
(defvar *referent* nil)


;; For N-ary rules
(defvar first-daughter nil)
(defvar second-daughter nil)
(defvar third-daughter nil)
(defvar fourth-daughter nil)
(defvar fifth-daughter nil)
(defvar sixth-daughter nil)
(defvar seventh-daughter nil)
(defvar eighth-daughter nil)
(defvar ninth-daughter nil)
(defvar tenth-daughter nil)


(defparameter *no-referent-calculations* nil)


;;;------------
;;; the driver
;;;------------
         
(defun referent-from-rule (left-edge
                           right-edge
                           parent-edge
                           rule
                           &key left-ref
                             right-ref )
  (declare (special *c3* *show-note-candidates*))

  (setq *referent* nil) ;; cleanup from last time

  (cond
    ((or (eq rule :conjunction/identical-adjacent-labels)
         (eq rule :conjunction/identical-form-labels))
     (referent-of-two-conjoined-edges left-edge right-edge))

    (t
     (unless *no-referent-calculations*
       (let ((*left-edge-into-reference*       left-edge)
             (*right-edge-into-reference*      right-edge)
             (*parent-edge-getting-reference*  parent-edge)
             (*rule-being-interpreted*         rule)
             (*head-edge* nil) ;; set in ref/head
             (*arg-edge* nil)  ;; ditto
             (left-referent  (or left-ref
                                 (and (edge-p left-edge)
                                      (edge-referent left-edge))))
             (right-referent (or right-ref
                                 (and (edge-p right-edge)
                                      (edge-referent right-edge))))
             (rule-field (cfr-referent rule)))

         (declare (special 
                   *left-edge-into-reference* *right-edge-into-reference*
                   *parent-edge-getting-reference* *rule-being-interpreted*
                   *head-edge* *arg-edge*))
                     
         (record-rule rule)
   
         (when rule-field
           (if (listp rule-field)
               (then
                 (if (listp (first rule-field))
                     (walk-through-referent-actions 
                      rule-field left-referent right-referent right-edge)
                     (else ;; just one action
                       (setq *referent*
                             (dispatch-on-rule-field-keys
                              rule-field left-referent right-referent right-edge)))))

               (else ;; direct pointer to referent
                 (setq *referent* rule-field)
                 (annotate-individual *referent* :immediate-referent)))

           (redistribute left-referent right-referent)

           (when *c3*
             (let ((result (incorporate-composition-into-situation 
                            left-referent right-referent 
                            *referent* rule parent-edge)))
               (when result
                 (unless (eq result *referent*)
                   (setq *referent* result)))))

           (when *show-note-candidates*
             (format t "~&Binary: ~a~
                        ~%      + ~a~
                        ~%   = ~a~%"
                     left-referent right-referent *referent*))
           

           (cond ((null *referent*)
                  :abort-edge)
                 (t (note? *referent*)
                    *referent* ))))))))

(defun walk-through-referent-actions  (rule-field 
                                       left-referent right-referent 
                                       right-edge)
  ;; Subroutine of referent-from-rule -- able to adjust what happens
  ;; in the succession of rule actions
  (declare (special *referent*))
  (when (and (assq :head rule-field)
             (assq :binding rule-field))
    ;; combine them. 
    (let* ((copy-of-rule-field (copy-list rule-field))
           (head-entry (cadr (assq :head copy-of-rule-field)))
           (binding-entry (cadr (assq :binding copy-of-rule-field)))
           new-rule-field  )
      (do* ((expression (car rule-field) (car rest))
            (keyword (car expression) (car expression))
            (value (cadr expression) (cadr expression))
            (rest (cdr rule-field) (cdr rest)))
          ((null keyword))
        (unless (or (eq keyword :head)
                    (eq keyword :binding))
          (push value new-rule-field)
          (push keyword new-rule-field)))

      (let ((composite `(:head-and-bindings ,head-entry ,binding-entry)))
        (if new-rule-field ;; some were left
          (setq new-rule-field (cons composite new-rule-field))
          (setq new-rule-field (list composite)))
        ;;(push-debug `(,new-rule-field ,rule-field)) (break " new rule field"))
        (setq rule-field new-rule-field))))

  (setq *referent* 
        (dispatch-on-rule-field-keys
         (first rule-field)
         left-referent right-referent right-edge))
  (let ( evolved-result )
    (dolist (ref-action (rest rule-field))
      (setq evolved-result
            (dispatch-on-rule-field-keys
             ref-action left-referent right-referent right-edge)))
    (when (typecase evolved-result
            (individual t)
            (referential-category t)
            (mixin-category t)
            (category t)
            (otherwise nil))
      (setq *referent* evolved-result))))



;;;------------------------------
;;; utility for mentions in tuck
;;;------------------------------

(defparameter *show-referent-for-edge-gaps* nil)

(defun referent-for-edge (edge)
  "Used by reinterpret-dominating-edges to reapply the rule
   that created the edge. Presently we can't always do
   it because :long-span edges often don't have a record
   of their constituents and we've not set up DA rules
   to facilitate this. Returns the new referent of the
   edge."
  (cond ((and (symbolp (edge-rule edge))
              (eq :long-span (edge-right-daughter edge)))
         ;; Not enough information to reapply the rule
         (when *show-referent-for-edge-gaps*
           (format t "~% referent-for-edge appplied to a da-rule ~
                      edge ~s~% with rule ~s and constituents ~s~%"
                   edge (edge-rule edge) (edge-constituents edge)))
         (edge-referent edge))
        
        ((eq :long-span (edge-right-daughter edge))
         (when *show-referent-for-edge-gaps*
           (format t "~% referent-for-edge appplied to a da-rule ~
                      edge ~s~% with rule ~s and constituents ~s~%"
                   edge (edge-rule edge) (edge-constituents edge)))
         (edge-referent edge))
        
        ((lambda-abstraction-edge? edge)
         (apply-lambda-abstraction
          (edge-referent edge) ;; the *lambda-abstraction* edge
          ;; the underlying edge whose interpretation may 
          (edge-referent (edge-left-daughter edge))
          edge))
        
        (t
         (let ((*current-chunk* 'dummy-chunk))
           ;; To fake out NP chunk rules that check to see that
           ;; they are in a chunk e.g. function verb-noun-coumpound
           (when (cfr-p (edge-rule edge))
             ;; When reinterpreting an edge because of tuck induced by
             ;; a DA function, we can get edges that were fashioned by
             ;; hand rather than by rule, e.g. by make-hyphenated-structure
             ;; e.g. "Tris-HCl, pH 7.5, and 150 mM NaCl".
             (referent-from-rule
              (edge-left-daughter edge)
              (edge-right-daughter edge)
              edge
              (edge-rule edge)))))))
   
(defun lambda-abstraction-edge? (edge)
  (declare (special category::lambda-form))
  (and (eq (edge-right-daughter edge) :single-term)
       (eq (edge-form edge) category::lambda-form)))

(defun apply-lambda-abstraction (old-lambda-pred new-pred-form edge)
  (declare (special **lambda-var**))
  (let* ((lambda-variable
          (loop for b in (indiv-binds old-lambda-pred)
                when (eq **lambda-var** (binding-value b))
                do (return (binding-variable b)))))
    (when lambda-variable
      (create-predication-by-binding
       lambda-variable      ;; var parameter
       **lambda-var**       ;; val
       new-pred-form        ;; pred
       ))))


;;;---------------------------------
;;; syntactic sugar for the globals
;;;---------------------------------
#| The pointers to the edges, rule, etc. are globally bound to nil
They get useful values within the dynamic scope of referent-from-rule
or a function that simulates its environment like with-referent-edges |#

(defvar *referent-edges-return-nil* t
  "Functions invoked by Debris Analysis typically need the variables
   to have values -- set up by with-referent-edges -- this has them
   return nil where there's no edge rather than throwing an error
   which would make sense in regular parsing.")
  
(defun left-edge-for-referent ()
  (or *left-edge-into-reference*
      (if *referent-edges-return-nil*
        nil
        (error "Left edge doesn't have a value now"))))

(defun right-edge-for-referent ()
  (or *right-edge-into-reference*
      (if *referent-edges-return-nil*
        nil
        (error "Right edge doesn't have a value now"))))

(defun parent-edge-for-referent ()
  (or *parent-edge-getting-reference*
      (if *referent-edges-return-nil*
        nil
        (error "*parent-edge-getting-reference* doesn't have a value now"))))

(defun rule-being-interpreted ()
  (or *rule-being-interpreted*
      (if *referent-edges-return-nil*
        nil
        (error "*rule-being-interpreted* doesn't have a value now"))))

#| Example from wh-initial-followed-by-modal, which operates outside
of the context of applying specific rules, and therefore is not
in the scope of referent-from-rule.
    (with-referent-edges (:l (second edges) :r (third edges))
      (setq stmt (add-tense/aspect-info-to-head aux stmt)))  |#
(defmacro with-referent-edges (bindings &body body)
  (let ((left (cadr (memq :l bindings)))
        (right (cadr (memq :r bindings)))
        (parent (cadr (memq :p bindings))))
    `(let ((*left-edge-into-reference* ,left)
           (*right-edge-into-reference* ,right)
           (*parent-edge-getting-reference* ,parent)
           (*referent-edges-return-nil* t))
       (declare (special *left-edge-into-reference*
                         *right-edge-into-reference*
                         *parent-edge-getting-reference*
                         *referent-edges-return-nil*))
       ,@body)))



(defun stipulate-referent-edges (left right)
  "For simulating the referents off-line as part of debugging"
  (setq *left-edge-into-reference* left
        *right-edge-into-reference* right)
 "Call (clear-referent-edges) when finished")

(defun clear-referent-edges ()
  "Unless we're in the scope of interpreting a referent,
   the natural state of these state variables is to be bound to nil"
  (setq *left-edge-into-reference* nil
        *right-edge-into-reference* nil))


(defun pair-context ()
  "Convenient routine to use in traces and while debugging"
  (let ((left (left-edge-for-referent))
        (right (right-edge-for-referent)))
    (when (and left right)
      (format nil "e~a + e~a"
              (edge-position-in-resource-array left)
              (edge-position-in-resource-array right)))))


;;;--------------------------
;;; operating over the edges
;;;--------------------------

(defparameter *warn-on-unbound-parent-edge* nil)

(defun revise-parent-edge (&key category form referent)
  (if (and *parent-edge-getting-reference*
           (not (deactivated? *parent-edge-getting-reference*)))
      (let ((edge (parent-edge-for-referent)))
        (revise-edge edge category form referent))
      (when *warn-on-unbound-parent-edge*
        (warn "revise-parent-edge called when *parent-edge-getting-reference* ~
           is inactive or did not have a value -- possibly in da-rule"))))

(defun revise-left-edge-into-rule (&key category form referent)
  (let ((edge (left-edge-for-referent)))
    (revise-edge edge category form referent)))

(defun revise-right-edge-into-rule (&key category form referent)
  (let ((edge (right-edge-for-referent)))
    (revise-edge edge category form referent)))

(defun revise-edge (edge category form referent)
  (when category
    (setf (edge-category edge) category))
  (when form
    (setf (edge-form edge) form))
  (when referent
    (set-edge-referent edge referent))
  edge)

(defun revise-edge-labels (edge &key category form referent)
  "Same functionality as revise-edge, but keywords make it easier
   to use when changing one label, and there is no assumption
   that the edge caught up in rule interpretation"
  (when category
    (setf (edge-category edge) category))
  (when form
    (setf (edge-form edge) form))
  (when referent
    (set-edge-referent edge referent))
  edge)


(defun edge-for-referent (ref)
  "We're in the middle of processing an interpretation. We have a value
   in our hand (so to speak) -- 'ref' -- and we want to know which
   edge is it the referent of."
  (let* ((left-edge *left-edge-into-reference*)
         (left-ref (when (edge-p left-edge) (edge-referent left-edge)))
         (right-edge *right-edge-into-reference*)
         (right-ref (when (edge-p right-edge) (edge-referent right-edge))))
    (cond
      ((when left-ref
         (or (eq ref left-ref)
             (eq ref (value-of 'comp left-ref))
             (and (category-p left-ref)
                  (itypep ref left-ref)))) ;; (eq ref (individual-for-ref left-ref))
       left-edge)
      ((when left-edge
         (loop for e in (edges-under left-edge)
            when (and (edge-referent e)
                      ;; referent of an edge over hyphen is the word
                      (individual-p (edge-referent e))
                      (or (eq ref (edge-referent e))
                          (eq ref (value-of 'comp (edge-referent e)))
                          (and (category-p (edge-referent e))
                               (itypep ref (edge-referent e)))))
            do (return e))))
      ((when right-ref
         (or (eq ref right-ref)
             (eq ref (value-of 'comp right-ref))
             (and (category-p right-ref) ;; (eq ref (individual-for-ref right-ref))
                  (itypep ref right-ref))))
       right-edge)
      ((boundp '*da-constituent-edges*)
       (loop for e in (symbol-value '*da-constituent-edges*)
             when (eq ref (edge-referent e))
             do (return e)))            
      (t
       (or (search-tree-for-referent left-edge ref)
           (search-tree-for-referent right-edge ref)
           (then (push-debug `(,ref ,left-edge ,right-edge))
                 (break "edge-for-referent - new case?")))))))


(defun current-constituent-edges () ;; only called by constituent-edge-with-value
  (declare (special *da-constituent-edges* *left-edge-into-reference* *right-edge-into-reference*))
  `(,.(and *left-edge-into-reference* (list *left-edge-into-reference*))
      ,.(and *right-edge-into-reference* (list *right-edge-into-reference*))
      ,@ *da-constituent-edges*))

(defun constituent-edge-with-value (value)
  (let ((edges (current-constituent-edges)))
    (loop for e in edges
          when (eq (edge-referent e) value)
          return e)))


;;;-------------------------
;;; redistributing bindings
;;;-------------------------

(def-k-function redistribute (left-referent right-referent)
  ;; or should it be head and arg ??
  (:documentation "Provides a mechanism for part of the referent of
    one edge (i.e. one or more bindings) to be transfered to the
    referent of the other edge.")
  (:method (left right)
    (declare (ignore left right))))
