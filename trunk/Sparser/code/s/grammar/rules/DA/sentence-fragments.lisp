;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sentence-fragments"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  October 2014

;; Iniated 10/25/14 to hold rules used to stitch together patterns
;; that weren't seen with binary rules or were easier this way.

(in-package :sparser)


(define-debris-analysis-rule foo1 ;;covered-relative-clause
  :pattern ( s "that" vp )
  :action (:function refactor-s-for-buried-relative
                     first second third))

(defun refactor-s-for-buried-relative (clause that reduced-relative)
  ;; The np that this relative attaches to is buried, we find it
  ;; and hook on the relative clause, then knit things back up correctly.
  ;; N.b. the arguments are all edges
  (flet ((compose-that (that-edge vp-edge)
           ;; this should be a rule, question is when to run it
           ;; to ensure the correct, longest VP
           (make-binary-edge/explicit-rule-components
            that-edge vp-edge
            :category (edge-category vp-edge)
            :form (category-named 'relative-clause)
            :rule-name :compose-that
            :referent (edge-referent vp-edge))))
    (push-debug `(,clause ,that ,reduced-relative))
    (let ((np (rightmost-np-under-s clause)))
      (push-debug `(,np)) ;; J3 e26
      (let* ((rc-edge (compose-that that reduced-relative))
             (rc-referent (edge-referent rc-edge))
             (np-referent (edge-referent np)))
        (push-debug `(,np-referent ,rc-referent))
        (let ((new-np-referent
               (apply-upstairs-np-to-subject-relative
                np-referent rc-referent))
              (end-of-rr (edge-ends-at reduced-relative)))
          (setf (edge-referent np) new-np-referent)
          (push-debug `(,end-of-rr ,np ,rc-edge))
          ;; (setq end-of-rr (car *) np (cadr *) rc-edge (caddr *))
          ;;/// write a rule for np + relative-clause so we can
          ;; at least reference it here
          (let ((parent (edge-used-in np))
                (extended-np-edge
                 (make-binary-edge/explicit-rule-components
                  np reduced-relative ;; left, right
                  :category (edge-category np)
                  :form (edge-form np)
                  :rule-name :refactor-s-for-buried-relative
                  :referent new-np-referent)))
            (tuck-new-edge-under-already-knit
             np ;; subsumed
             extended-np-edge ;; new
             parent ;; dominating
             :right)
            extended-np-edge ))))))


    