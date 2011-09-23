;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "do action"
;;;   Module:  "analyzers;DA:"
;;;  Version:  May 1995

;; initiated 5/7/95. Debugging, refining ..5/12

(in-package :sparser)


(defun execute-da-action (rule)
  ;; called from Accept-pattern
  (setup-da-action-context)
  (let ((fn (da-action-fn rule)))
    (if fn
      (execute-da-action-function fn)
      (execute-schematic-da-action rule))))



(defun execute-da-action-function (fn)
  (let ((result (funcall fn)))
    (if result
      result
      ;; make sure that Execute-da-trie gets a return value
      ;; that it anticipates
      :pattern-matched )))


(defun execute-schematic-da-action (rule)
  (let ((form (da-action-description rule)))
    (ecase (first form)
      (:make-edge-over-whole-span
       (execute-edge-over-whole-span-exp (cdr form))))))



;;; cases

(defun execute-edge-over-whole-span-exp (items)
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

      (setf (edge-referent edge)
            (execute-da-referent-expressions ref-exp))

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

