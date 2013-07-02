;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "reify-individuals"
;;;    Module: "analyzers;SDM&P:
;;;   Version: July 2013

;; Initiated 2/28/13
;; 0.1 (7/1/13) Switched to using the category->individual routine
;;      from sdm/analyze-segment

(in-package :sparser)

#| This designed for use with a setup like Grok where we are incorporating
otherwise unknown (unconceptualized) words from some lexical store 
and defining standard-design categories and terminal rules for them.
  The result is that we often have a category as the referent of
a segment edge when we really should have an instance. This code looks 
for situations where that's likely to be the case and creates the appropriate
individuals as needed. It then continues into ordinary operations accordign
to the value of the viable after-action flag for segments. 
|#

;;;--------
;;; driver
;;;--------

(defparameter *debug-reify-implicit-individuals* nil
  "Guards breaks in new cases in the function")

(defun reify-implicit-individuals-in-segment (coverage)
  ;; Called from after-action-on-segments or by another after-segment
  ;; action. 
  ;;(format-words-in-segment)
  ;;(format t "coverage = ~a~%" coverage)
  (case coverage
    (:one-edge-over-entire-segment
     (let* ((edge (edge-over-segment))
            (form (edge-form edge)))
       (when form ;; no form on puctuation edges
         (unless (typep (edge-referent edge) 'individual)
           (let* ((prefix (segment-minimal-prefix))
                  (prefix-form (edge-form prefix)))
             (case (cat-symbol form) ;; of the spanning edge
               (category::wh-pronoun) ;; doesn't make sense
               ((category::n-bar
                 category::number
                 category::common-noun
                 category::common-noun/plural
                 category::np-head)
                (when (evidence-that-np-denotes-an-individual?
                       prefix prefix-form edge)
                  (convert-referent-to-individual edge)))
               ((category::verb 
                 category::verb+s 
                 category::verb+ed
                 category::verb+ing 
                 category::verb+present
                 category::verb+passive)
                (convert-referent-to-individual edge))
               (otherwise
                (push-debug `(,form ,edge ,prefix))
                (format-words-in-segment)
                (break "reify-implicit-individuals: New case of ~
                       one-edge form: ~a" form))))))))

    (:all-contiguous-edges
     (let* ((suffix (edge-over-segment-suffix))
            (suffix-form (when suffix (edge-form suffix)))
            (prefix (edge-over-segment-prefix))
            (prefix-form (when prefix (edge-form prefix))))
       (when (and suffix-form prefix-form)
         (when (noun-category? suffix-form)
           (convert-referent-to-individual suffix)))))
         
    ;; (treetops-in-current-segment)
    (:no-edges
     (when *debug-reify-implicit-individuals*
       (break "reify-implicit-individuals: no-edges")))
    (:discontinuous-edges
     (when *debug-reify-implicit-individuals*
       (break "reify-implicit-individuals: discontinuous")))
    (:some-adjacent-edges
     (when *debug-reify-implicit-individuals*
       (break "reify-implicit-individuals: some adjacent")))
    (otherwise
     (break "Unanticipated value for segment coverage: ~A"
	    coverage)))
  (cond
   (*do-strong-domain-modeling*
    (sdm/analyze-segment coverage))
   (*note-text-relations*
    (note-text-relations-in-segment coverage))
   (t 
    (normal-segment-finished-options coverage))))


;;--- heuristics go here

(defun evidence-that-np-denotes-an-individual? (prefix form edge)
  (push-debug `(,prefix ,form ,edge))
  (or (eq form category::det)
      (eq form category::number)
      (eq form category::quantifier)
  #+ignore
      (else
       (break "If this should indicate that an np is an ~
               individual, extend the code~
             ~%  prefix form = ~a~
             ~%  prefix = ~a~
             ~%  on edge ~a" form prefix edge))))


