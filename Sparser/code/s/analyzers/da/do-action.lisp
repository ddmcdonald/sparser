;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2011-2013,2019  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "do action"
;;;   Module:  "analyzers;DA:"
;;;  Version:  January 2019

;; initiated 5/7/95. Debugging, refining ..5/12. 11/3/11 Extending
;; cases for schematic actions to :function. 7/29/13 Added more traces
;; and doc. 

(in-package :sparser)

(defun execute-da-action (rule)
  ;; called from Accept-pattern
  (tr :da-executing-action rule)
  (setup-da-action-context)
  (let ((fn (da-action-fn rule)))
    (push-debug `(,rule ,fn)) ;;(break "execute")
    ;; N.b. The return from these calls becomes the
    ;; 'result' in execute-da-trie
    (if fn
      (execute-da-action-function fn)
      (execute-schematic-da-action rule))))


(defun execute-da-action-function (fn)
  (let ((result (funcall fn)))
    (if result
      result
      ;; make sure that Execute-da-trie gets a return value
      ;; that it anticipates. See note there.
      :pattern-matched )))

(defun execute-schematic-da-action (rule)
  (let ((form (da-action-description rule)))
    (case (first form)
      (:make-edge-over-whole-span
       (execute-edge-over-whole-span-exp (cdr form)))
      (:function
       (standardized-apply-da-function-action rule)
       ;;(bind-context-and-apply-da-function-action (cdr form))
       )
      (otherwise
       (push-debug `(,form ,rule))
       (error "Unexpected key in schematic-da-action: ~a"
              (car form))))))



;;; cases

(defun execute-edge-over-whole-span-exp (items)
  (declare (special *da-starting-position* *da-ending-position*
                    *matched-da-rule*))
  (let ((label (first items))
        (ref-exp (rest items)))
    (let ((edge
           (make-chart-edge
            :starting-position *da-starting-position*
            :ending-position *da-ending-position*
            :category label
            :form (when (form-category? label)
                    label)
            :rule *matched-da-rule*)))
      (set-edge-referent edge
            (execute-da-referent-expressions ref-exp))
      (update-edge-mention-referent edge (edge-referent edge))
      edge )))


(defun execute-da-referent-expressions (ref-exp)
  (let ((referent
         (do-da-ref-expression (first ref-exp))))
    (dolist (exp (rest ref-exp))
      (do-da-ref-expression exp))
    referent ))


(defun do-da-ref-expression (schematic-exp)
  (ecase (first schematic-exp)
    (:daughter
     ;; returns the referent of the daughter edge
     (let ((tt (lookup-matched-tt (second schematic-exp))))
       (etypecase tt
         (edge (edge-referent tt))
         ;; (word tt)  ;should only see conses when words are involved
         (cons
          ;; ( word  pos-before  pos-after )
          (first tt)))))))

(defvar *edge-spec*)
(defvar *new-edge*)
(defvar *current-da-rule*)

;;must deal with null rule effect produced by do-relation-between-first-and-second
;; in "The Raf-1 molecule contains an additional p21ras-binding domain (RBD), a second serine phosphorylation site at S621 (S2) and two tyrosine phosphorylation sites (at 340, Y1 and 341, Y2)."
;;over "p21ras-binding domain"
#| Note that edges 51 and 10 have the same start and end
SP> (stree 51)
 e51 BINDING-DOMAIN/N-BAR     p9 - p18    do-relation-between-first-and-second
  e10 PROTEIN/PROPER-NOUN     p9 - p18    rule 14460
    e9 "p21ras"               p9 - p18    polyword
      "p21ras"
  e13 BINDING-DOMAIN/COMMON-NOUN    p13 - p15   rule 55420
    e12 "binding domain"      p13 - p15   polyword
      "binding domain"
|#
(defparameter *da-constituent-edges* nil
  "This is used by make-maximal-projection to find the edge which
  corresponds to the maximal projection")


(defun standardized-apply-da-function-action (rule)
  (declare (special *current-da-rule* *da-constituent-edges*))
  (setq *current-da-rule* rule)
  (let* ((form (da-action-description rule))
         (fn (second form))
         (args (cddr form))
         (constituents (mapcar #'lookup-matched-tt args))
         (*da-constituent-edges* constituents) ;; see note above
         (*parent-edge-getting-reference* nil))
    (declare (special *parent-edge-getting-reference*))
    (tr :da-pattern-matched rule)
    
    (when (symbolp fn)
      (unless (fboundp fn)
        (error "The function ~a is not defined" fn)))
    (tr :da-applying-fn-to-args fn constituents)

    (let ((result (apply fn constituents)))
      (cond
        ((edge-p result)
         (record-rule rule)
         (tr :da-fn-returned-edge result)
         result)
        ((null result) ;; the rule failed
         (tr :da-fn-failed)
         nil)
        ((typep result 'edge-spec)
         (record-rule rule)
         (tr :da-edge-spec result)
         (let* ((*edge-spec* result)
                (target (edge-spec-target *edge-spec*))
                (dominating (and (edge-p target) (edge-used-in target)))
                (preposed (edge-spec-preposed *edge-spec*))
                (new-constituents
                 ;; new code to get the proper dominated edges in the case of
                 ;;  preposed prepositional phrases before a conjunction
                  (if preposed 
                      (if (not (member target constituents))
                          ;; happens when the PP premodifies only the first S in a conjunction
                          (substitute target (edge-used-in target) constituents)
                          constituents)
                      (constituents-between
                       (or target (first constituents))
                       (car (last constituents))))))
           (declare (special *edge-spec*))

           (setq *new-edge*
                 (make-edge-over-long-span
                  (pos-edge-starts-at (car new-constituents))
                  (pos-edge-ends-at (car (last new-constituents)))
                  (edge-spec-category *edge-spec*)
                  :form (edge-spec-form *edge-spec*)
                  :referent (edge-spec-referent *edge-spec*)
                  :rule (da-name rule)
                  :constituents new-constituents))
           (tr :da-fn-returned-edge *new-edge*)

           (cond (dominating
                  (tr :da-tuck-under dominating (edge-spec-direction *edge-spec*))
                  (tuck-new-edge-under-already-knit
                   target      ; subsumed
                   *new-edge*  ; new-edge
                   dominating  ; dominating-edge
                   (edge-spec-direction *edge-spec*)) ; direction
                  dominating)
                 (t *new-edge*))))
        (t
         (error "Debris Analysis: Unanticipated type of result from applying ~
               ~%~a to ~a~
               ~%type of result: ~a~%result = ~a"
                fn constituents (type-of result) result))))))
               


(defun constituents-between (first-const last-const)
  (cons first-const
        (treetops-between (pos-edge-ends-at first-const)
                          (cond ((edge-p last-const)
                                 (pos-edge-ends-at last-const))
                                ((and (consp last-const)
                                      (position-p (third last-const)))
                                 (chart-position-after
                                  (third last-const)))
                                (t (error
                                    "strange ending position for constituents-between, ~s~%"
                                    (current-string)))))))

(defun bind-context-and-apply-da-function-action (form)
  (let ((function (car form))
        (args (cdr form)))
    (when (symbolp function)
      (unless (fboundp function)
        (error "The function ~a is not defined" function)))
    ;; The args are expected to be symbols for ordinals that
    ;; were vetted when the rule was defined
    (push-debug `(,function ,args))
    (tr :da-applying-fn-to-args function args)
    (let ((dereferenced-args
           (mapcar #'lookup-matched-tt args)))
      (let ((result
             (apply function dereferenced-args)))
        (unless (edge-p result)
          (push-debug `(,result))
          (cond
           ((null result)
            #+ignore
            (format t "Application of DA function did not return ~
                  an edge. We got a NIL instead~&"))
           (t
            (error "Application of DA function did not return ~
                  an edge. We got a ~a instead~&"
                 (type-of result)))))
        result))))


