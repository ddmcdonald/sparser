;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sentence-fragments"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  November 2014

;; Iniated 10/25/14 to hold rules used to stitch together patterns
;; that weren't seen with binary rules or were easier this way.
;; 11/9/14 DA for single word is different, so added decoder.

(in-package :sparser)


(define-debris-analysis-rule covered-relative-clause
  :pattern ( s "that" vp )
  :action (:function refactor-s-for-buried-relative
                     first second third))

(defun refactor-s-for-buried-relative (clause that reduced-relative)
  ;; The np that this relative attaches to is buried, we find it
  ;; and hook on the relative clause, then knit things back up correctly.
  ;; N.b. the arguments are all edges
  (when (consp that) ;; multiple edges
    (setq that (edge-within-DA-record that)))
  (let ((np (rightmost-np-under-s clause)))
    (push-debug `(,np)) ;; J3 e26
    (let ((parent (edge-used-in np))
          (extended-np-edge
           (compose-as-relative-clause np that reduced-relative)))
      (tuck-new-edge-under-already-knit
       np ;; subsumed
       extended-np-edge ;; new
       parent ;; dominating
       :right)
      extended-np-edge)))

 
(defun compose-as-relative-clause (np-edge that-edge vp-edge)
  (flet ((compose-that (that-edge vp-edge)
           ;; this should be a rule, question is when to run it
           ;; to ensure the correct, longest VP
           (make-binary-edge/explicit-rule-components
            that-edge vp-edge
            :category (edge-category vp-edge)
            :form (category-named 'relative-clause)
            :rule-name :compose-that
            :referent (edge-referent vp-edge))))

    (let* ((rc-edge (compose-that that-edge vp-edge))
           (vp-referent (edge-referent rc-edge))
           (np-referent (edge-referent np-edge)))

      (let ((new-np-referent
             (apply-upstairs-np-to-subject-relative
              np-referent vp-referent)))

        (let ((extended-np-edge
               (make-binary-edge/explicit-rule-components
                np-edge rc-edge ;; left, right
                :category (edge-category np-edge)
                :form (edge-form np-edge)
                :rule-name :compose-as-relative-clause
                :referent new-np-referent)))

          extended-np-edge )))))


    