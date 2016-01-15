;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2011-2016 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "cases"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:  January 2016

;; (2/27/92 v2.2) fixed a bug in Ref/composite where it was offset
;;   by one when extracting a literal from the rule's referent field
;; 1.0 (7/17/92 v2.3) added :instantiate-individual-with-binding, and
;;      switched to categories from gl.
;; 1.1 (8/28) Reworked the binding case to fit current dogma rather than the
;;      original (12/91) treatment.
;; 1.2 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics.
;; 1.3 (12/31) expanded number of arguments 'function' option can take
;; 1.4 (6/3/93) tweeked ref/head to do referential-categories, and again
;;      on 6/10 to do individuals
;;     (6/20) patched over ref/binding for inconsistency in packaging
;;      between rdata and cfrs
;; 1.5 (7/8) changed data-checks in ref/binding to distinguish badly threaded
;;      calls from null variable values
;; 1.6 (8/24) broke out the cases for the new semantics.
;; 1.7 (2/14/05) Removed annotation call from Ref/function.
;; 1.8 (5/17/11) Putting it back. 5/26/12 it needs an additional
;;      lattice-point argument now, but blocked case of keywords that
;;      indicate no value, so postposing looking it up.
;;     (9/25/14) Better error msg if ref-form is bad in ref/daughter
;; 1.9 (11/7/14) let ref/function take three arguments. 
;;     (4/19/15) Added ref/handle-head-and-bindngs.
;; 5/30/2015 do necessary copy (for Descritption Lattice) in ef/handle-head-and-bindngs

(in-package :sparser)

;;;----------
;;; daughter
;;;----------

(defun ref/daughter (edge-designator left-referent right-referent)
  (multiple-value-bind (ref head arg)
      (case edge-designator
        (left-referent (values left-referent 
                               *left-edge-into-reference*
                               *right-edge-into-reference*))
        (right-referent (values right-referent
                               *right-edge-into-reference*
                               *left-edge-into-reference*))
        (otherwise
         (push-debug `(,edge-designator ,left-referent ,right-referent))
         (error "ref/daughter - somehow the edge-designator isn't valid")))
    (annotate-daughter ref *rule-being-interpreted* head arg)
    ref))


;;;------------------------------
;;; bindings on established head
;;;------------------------------
#| The current version of ref/head make a new individual every time
the head is a referential-category (using individual-for-ref).
There's a note questioning it, but to do the right thing, which would
be a find-or-make, we need access to the bindings in the way that
:instantiate-individual-with-binding has. A temporary check and 
rearrangement in walk-through-referent-actions put this together.
Once it's been shaken down that should move to the regular referent
construction code.
|#

(defun ref/handle-head-and-bindngs (rule-field left-referent right-referent)
  ;; called from dispatch-on-rule-field-keys to do a find-or-make given
  ;; the head and these bindings. 
  (push-debug `(,rule-field ,left-referent ,right-referent))
  ;; (setq rule-field (car *) left-referent (cadr *) right-referent (caddr *))
  (let* ((exp (cdr rule-field)) ;; drop keyword
         (head-key (car exp))
         (vv-pair-exp (cadr exp))
         head  vv-pair  i )
    ;;break "look at decomposition of rule-field")

    (setq head 
          (typecase head-key
            (referential-category head-key)
            (symbol (determine-head-referent head-key))
            (otherwise
             (push-debug `(,rule-field ,left-referent ,right-referent))
             ;; (setq rule-field (car *) left-referent (cadr *) right-referent (caddr *))
             (error "Unanticiated type of object in head position ~
                     in head field: ~a~%~a"
                    (type-of head-key) head-key) )))

    ;; There is probably a case where this requires a loop
    (let* ((var (car vv-pair-exp))
           (value-exp (cdr vv-pair-exp))
           (value (cond
                   ((eq value-exp 'left-referent)
                    left-referent)
                   ((eq value-exp 'right-referent)
                    right-referent)
                   (t (error "shouldn't get here")))))
      (setq vv-pair `((,var ,value)))

      ;;(push-debug `(,vv-pair))
      ;;(break "senible vv pair?")

      ;; Either we already have an individual for this head
      ;; and just add the bindings (//// ultimately not the
      ;; right thing to do), or we have a category and we do
      ;; a find of make on it with those bindings.
      ;;(ccl::break "ref/handle-head-and-bindngs")
      (typecase head
        (word) ;; from morphology-induced edges - ignore it

        (individual 
         (setq i (individual-for-ref head))
         (let* ((pair (car vv-pair))
                (variable (car pair))
                (value (cadr pair)))
           (setq i (bind-dli-variable variable value i))))

        (referential-category
         (cond
          (*description-lattice*
           (setq i (individual-for-ref head))
           (let* ((pair (car vv-pair))
                  (variable (car pair))
                  (value (cadr pair)))
             (setq i (bind-dli-variable variable value i))))
          (t
           (setq i (find-or-make/individual head vv-pair)))))

        (otherwise
         (break "Unanticipated type as the head: ~a~%~a"
                (type-of head) head)))
      i)))
  

(defun determine-head-referent (symbol)
  ;; abstracted out of ref/head which calls it, as does
  ;; ref/handle-head-and-bindngs
  (case symbol
    ;; these set *head-edge* and *arg-edge*
    (left-referent
     (indicate-head :left)
     (indicate-arg :right)
     left-referent)
    (right-referent
     (indicate-head :right)
     (indicate-arg :left)
     right-referent)
    (otherwise
     (break "Unanticipated symbol as head indicator: ~a"
            symbol))))

#| Not quite right for decoding a set of bindings, but close
    (setq vv-pairs
          (loop for pair in vv-pair-exps
            with var = (car pair)
            with value-exp = (cadr pair)
            with value = (cond
                          ((eq value-exp 'left-referent)
                           left-referent)
                          ((eq value-exp 'right-referent)
                           right-referent)
                          (t (error "shouldn't get here")))
            collect `(,var ,value)))  |#


;;;-----------
;;; function
;;;-----------

(defun ref/function (rule-field)
  (let ((n-ary-rule (get-tag :rolled-out-from *rule-being-interpreted*)))
    (if n-ary-rule
      (ref/function/n-ary-rules n-ary-rule rule-field)
      (else
        ;; it's binary
        (let ((value
               (case (length rule-field)
                 (1
                  (funcall (first rule-field)))
                 (2
                  (funcall (first rule-field)
                           (ecase (second rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (left  left-referent)
                             (right right-referent))))
                 (3
                  (funcall (first rule-field)
                           (ecase (second rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (first  left-referent)
                             (second right-referent))
                           (ecase (third rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (first  left-referent)
                             (second right-referent))))
                 (4
                   (funcall (first rule-field)
                           (ecase (second rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (first  left-referent)
                             (second right-referent))
                           (ecase (third rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (first  left-referent)
                             (second right-referent))
                           (fourth rule-field))) ;; goes through uninterpreted
                 (otherwise
                  (push-debug `(,rule-field))
                  (error "No provison yet for a function with 4 terms~
                       ~%Figure out what it means an edit ref/function ~
                         accordingly.")))))

          ;; Annotating a ref/function is funny business because we don't
          ;; know what it's going to do when it executes. However we do
          ;; know that all the only raw material it will have to work 
          ;; with (other than burned-in constants) will come from the 
          ;; referents of the edges that take part in the rule.
          ;; We'll assume by default that all the edges in the rule
          ;; should be noted in the annotation, which is probably always
          ;; the correct judgement from a generation perspective.
          (when n-ary-rule
            (break "Stub for annotating an n-ary :function rule"))
          (let ((arity
                 (if *right-edge-into-reference*
                   :binary-rule   ;; terms match options in
                   :unary-rule))) ;; annotate-individual
            (unless (keywordp value) ;; e.g. :no-value-computed-yet
              (cond 
               ((individual-p value)
                (annotate-individual value arity))
               ((eq arity :binary-rule)
                (annotate-realization-pair
                 value 
                 nil  ;;/// Lattice-point argument goes here !!
                 *rule-being-interpreted*
                 *right-edge-into-reference*  ;; presumed head /////
                 *left-edge-into-reference*)) ;; presumed adjunct
               ((eq arity :unary-rule)
                (annotate-unary-realization *rule-being-interpreted*))
               (t (break "Threading bug: shouldn't have gotten here"))))
          
            value))))))



(defun ref/function/n-ary-rules (rule rule-field)
  (let* ((length-of-rhs (length (cfr-rhs rule)))
         (daughters
          (immediate-constituents/n-ary/length
           *parent-edge-getting-reference* length-of-rhs)))

    (when (> length-of-rhs 10)
      (error "The :function reference action cannot be applied ~
              to more than ten arguments~%This instance has ~A"
             length-of-rhs))

    (mapcar #'(lambda (daughter var)
                (set var daughter))
            daughters
            '(first-daughter second-daughter third-daughter
              fourth-daughter fifth-daughter sixth-daughter
              seventh-daughter eighth-daughter ninth-daughter
              tenth-daughter ))

    (let ((value
           (apply (first rule-field)
                  (mapcar #'eval (rest rule-field)))))
      (break "Stub: no provision for annotating ref/function ~
              over n-ary rules")
      value)))


(defun immediate-constituents/n-ary/length (edge number-of-daughters)
  (let ((n-2 (- number-of-daughters 2))
        (left-edge edge)
        daughters )

    (dotimes (i number-of-daughters)
      ;(format t "~&i = ~A  left-edge = ~A~%" i left-edge)
      (if (= i n-2)
        (then
          (push (edge-referent (edge-right-daughter left-edge))
                daughters)
          (push (edge-referent (edge-left-daughter left-edge))
                daughters)
          (return))
        (else
          (push (edge-referent (edge-right-daughter left-edge))
                daughters)
          (setq left-edge (edge-left-daughter left-edge)))))

    (nreverse daughters)))
