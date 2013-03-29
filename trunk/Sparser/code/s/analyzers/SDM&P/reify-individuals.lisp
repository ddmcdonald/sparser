;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "reify-individuals"
;;;    Module: "analyzers;SDM&P:
;;;   Version: February 2013

;; Initiated 2/28/13

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

;;;-------------------------------
;;; wire it into segment-finished
;;;-------------------------------

;;  (do-reify-implicit-individuals-in-segment)
(defun do-reify-implicit-individuals-in-segment ()
  (setq *after-action-on-segments* 'reify-implicit-individuals-in-segment))


;;;--------
;;; driver
;;;--------

(defun reify-implicit-individuals-in-segment (coverage)
  (format-words-in-segment)
  (format t "coverage = ~a~%" coverage)
  (case coverage
    (:one-edge-over-entire-segment
     (let* ((edge (edge-over-segment))
            (form (edge-form edge)))
       (push-debug `(,edge ,form))
       (unless (typep (edge-referent edge) 'individual)
         (let* ((prefix (segment-minimal-prefix))
                (prefix-form (edge-form prefix)))
           (case (cat-symbol form) ;; of the spanning edge
             (category::wh-pronoun) ;; doesn't make sense
             (category::np
              (when (evidence-that-np-denotes-an-individual?
                     prefix prefix-form edge)
                (convert-referent-to-an-individual edge)))
             (category::verb+ed
              (convert-referent-to-an-individual edge))
             (otherwise
              (push-debug `(,form ,edge ,prefix))
              (break "New case of one-edge form: ~a" form)))))))

    (:all-contiguous-edges
     (let* ((suffix (edge-over-segment-suffix))
            (suffix-form (when suffix (edge-form suffix)))
            (prefix (edge-over-segment-prefix))
            (prefix-form (when prefix (edge-form prefix))))
       (when (and suffix-form prefix-form)
         (when (noun-category? suffix-form)
           (convert-referent-to-an-individual suffix)))))
         

    (:no-edges (break ":no-edges"))
    (:discontinuous-edges (break "discontinuous"))
    (:some-adjacent-edges (break "some adjacente"))
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
  (or (eq form category::det)
      (else
       (push-debug `(,prefix ,form ,edge))
       (break "If this should indicate that an np is an individual, extend the code~
             ~%  prefix form = ~a~
             ~%  prefix = ~a~
             ~%  on edge ~a" form prefix edge))))


;;--- rebuild it

(defun convert-referent-to-an-individual (edge)
  ;; /// this doesn't worry about bindings on the category 
  (let* ((ref-category (edge-referent edge))
         (supercategory-of-constructed-category ref-category))
    (let ((i (find-or-make/individual 
              (or supercategory-of-constructed-category ;; e.g. event
                  ref-category)
              nil)))
      (setf (edge-referent edge) i))))

