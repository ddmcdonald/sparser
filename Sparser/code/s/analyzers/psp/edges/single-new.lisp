;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "single-new"
;;;    Module:   "analyzers;psp:edges:"
;;;   Version:   1.3 August 2014

;; 1.0 (9/7/92 v2.3) flushed out of date field references
;;     (11/3) fixed typo
;; 1.1 (5/22/93) converted Install-single-term-edges/initial-terminal
;;      to install-preterminal-edge to accomodate more complex routine
;;      in Preterminals/word
;;     (5/24/94) added trace
;; 1.2 (9/6/95) hacked Make-completed-unary-edge to allow calls where the 'rule'
;;      is a keyword rather than a cfr
;; 1.3 (8/11/14) Added the optionals of make-completed-unary-edge to
;;      install-preterminal-edge so code could call it and not have to
;;      think about edge vectors.

;; 5/25/2015 added call to place-referent-in-lattice around computation of edge-referent field
;;  initial work to produce a lattice of descriptions
;;  the places where this call is put were determined by the methods where (complete edge) was also called


(in-package :sparser)

;;;---------
;;; drivers
;;;---------

(defun install-preterminal-edge (cfr word
                                 position next-position
                                 &optional  
                                   category form referent)
  ;; called from Preterminals/word
  (let ((edge
         (make-completed-unary-edge (pos-starts-here position)
                                    (pos-ends-here next-position)
                                    cfr
                                    word 
                                    category form referent)))
    (tr :making-single-term-edge edge)
    edge ))



(defun complete-any-single-term-edges  (rule-set
                                        starting-vector
                                        ending-vector
                                        daughter)
  ;; called from assess-edge-label/all
  (dolist (rule (rs-single-term-rewrites rule-set))
    (make-completed-unary-edge
     starting-vector ending-vector rule daughter)))


;;;-----------
;;; work horse
;;;-----------

(defun make-completed-unary-edge (starting-vector
                                  ending-vector
                                  rule
                                  daughter
                                  ;; These optionals are used when the call is directly 
                                  ;; from code and the 'rule' isn't a cfr so we have to
                                  ;; explicitly provide the information that would
                                  ;; have come from it
                                  &optional  category
                                             form
                                             referent )

  (when (and category daughter)
    (when (eq category (edge-category daughter))
      (let ((daughter-rule (edge-rule daughter)))
        (if (eq daughter-rule rule)
          t ;;(break "loop?")
          (else ;; it's a different rule, but we have to look deeper
            ;; If the highest number edge on the vector has this
            ;; same rule then we abort.
            ;; e.g. "almost twice as much than one week earlier"
            ;;  though that one's grammar also needs to change.
            ;;  Looping was done by raise-quantifier-to-np
            (let ((top-edge (top-edge-on-ev starting-vector)))
              (push-debug `(,starting-vector))
              (if (eq rule (edge-rule top-edge))
                (return-from make-completed-unary-edge nil) ;;(break "abort")
                t ;;(break "different rule")
                )))))))


  (let ((edge (next-edge-from-resource)))
    (knit-edge-into-positions edge
                              starting-vector
                              ending-vector)
    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at edge)   ending-vector)

    (setf (edge-rule edge) rule)
    (setf (edge-left-daughter edge)  daughter)
    (setf (edge-right-daughter edge) :single-term)
    (etypecase daughter
      (word )
      (polyword )
      (edge (set-used-by daughter edge)))

    ;; DA rules and edges formed by code rather than conventional
    ;; rules will often have symbols in their rule fields
    ;; that correspond to the function making the edge.
    (setf (edge-category edge)  (or category
                                    (unless (symbolp rule)
                                      (cfr-category rule))))
    (setf (edge-form edge)      (or form
                                    (when (word-p category) ;; case for comma
                                      category)
                                    (unless (symbolp rule)
                                      (cfr-form rule))))
    (set-edge-referent edge
                       (or referent
                           (unless (symbolp rule)
                             (referent-from-unary-rule
                              edge rule daughter))))
    
    (complete edge)
    
    (when *trace-edge-creation*
      (format t "~&creating ~A from ~A~
                   ~%    rule: ~A~%" edge
              (etypecase daughter
                (word daughter)
                (polyword daughter)
                (edge (edge-position-in-resource-array daughter)))
              rule))

    (assess-edge-label (or category
                           (unless (symbolp rule)
                             (cfr-category rule)))
                       edge)
    edge ))

