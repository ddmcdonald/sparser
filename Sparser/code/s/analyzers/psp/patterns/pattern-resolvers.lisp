;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pattern-resolvers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2015

;; Initiated 11/12/15 to collect up and rationalized the subroutines
;; used after a pattern has matched to determine what we really have.
;; These typically build edges when they succeed.

(in-package :sparser)

(defun composed-by-usable-rule (left-edge right-edge)
  (let* ((rule (or (multiply-edges left-edge right-edge)
                   (multiply-edges right-edge left-edge)))
         ;; We only want rules that create real relationships.
         ;; There will always be a syntactic rule, so that rules
         ;; out the possibility of looking for a salient literal
         ;; which would be Very Bad since they are informative.
         ;; Form rules are half generic, particularly for adjective
         ;; so I'm ruling those out too.
         (usable-rule (unless (syntactic-rule? rule)
                        (unless (form-rule? rule)
                          rule))))
      
    (when usable-rule ;; "GTP-bound"
      (tr :ns-found-usable-rule rule)
      (let ((edge (make-completed-binary-edge left-edge right-edge rule)))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :two-word-hyphen-edge edge)
        edge))))


(defun make-protein-pair/convert-bio-entity (start-pos end-pos
                                             edges which-one)
  ;; Called from one-hyphen-ns-patterns 
  ;; /// compare to operatoin in multi-colon-ns-patterns 
  ;;  which shares a lot
  (declare (special word::hyphen))
  (unless (eq word::hyphen (edge-category (second edges)))
    (push-debug `(,edges ,start-pos ,end-pos))
    (break "second edge doesn't appear to be a hyphen"))
  (let* ((edge-to-convert (ecase which-one
                            (:right (third edges))
                            (:left (first edges)))))
    (convert-bio-entity-to-protein edge-to-convert) ;; converts the edge
    (let* ((proteins (list (edge-referent (first edges))
                           (edge-referent (third edges))))
           (i (find-or-make-individual 'collection
                 :type category::protein
                 :items proteins))
           (edge (make-ns-edge
                   start-pos end-pos category::protein
                   :referent i :rule 'make-protein-pair/convert-bio-entity
                   :constituents edges)))
      edge)))



