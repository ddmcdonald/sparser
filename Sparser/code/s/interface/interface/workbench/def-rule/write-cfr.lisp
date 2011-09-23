;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "write cfr"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  April 1995

;; broken out of [define-rule] 4/27.  Added rdt/gloss-rules-created 5/16

(in-package :sparser)


(defun write-cfr-from-rdt-tableau-values ( &optional
                                           (mapping *rdt/mapping*) )

  ;; Called from Readout-tableau/write-cfr/save-result. When it 
  ;; returns there should be an executable form of the definition
  ;; in place.

  ;; mimics code in [model:tree families:driver - Make-rules-for-rdata]
  (let ( rule/s  rules-from-schema  )
    (unless *rdt/selected-schema*
      (break "Threading bug: the *rdt/selected-schema* is nil"))

    (dolist (case (etf-cases *rdt/selected-schema*))
      (setq rule/s (instantiate-rule-schema case mapping))
      (format t "~&~A" rule/s)
      (if (consp rule/s)
        ;; the case led to more than one rule
        (setq rules-from-schema (append rule/s rules-from-schema))
        (push rule/s rules-from-schema)))

    (setq *rdt/rules-defined* rules-from-schema)))



(defun rdt/gloss-rules-created ()
  ;; produces a list of strings with the print forms of the rules
  ;; that will be repackaged for presentation by other routines
  (let ( strings )
    (dolist (cfr *rdt/rules-defined*)
      (push (with-output-to-string  (stream)
              (princ-cfr cfr stream))
            strings))
    (nreverse strings)))




;;-------------- Original version that presumed there was ----------
;;                only one case

(defun write-cfr-from-rdt-tableau-values/vanila (mapping)
  ;; handles the cases that don't require special forms,
  ;; just the definition of a single case on the basis of
  ;; the current settings of the globals populated from
  ;; the rule definition tableau. 
  (let ((lhs *rdt/lhs-label*)
        (left-label *rdt/rhs-left-label*)
        (right-label *rdt/rhs-right-label*)
        (form (rtd/compute-form-from-selected-schema mapping))
        (referent (rtd/construct-referent-from-tableau mapping))
        (relation (rtd/lookup-relation-from-selected-schema)))

    (let ((cfr
           (if (or (when (referential-category-p left-label)
                     (member :form-category (unit-plist left-label)))
                   (when (referential-category-p right-label)
                     (member :form-category (unit-plist right-label))))
             (def-form-rule/resolved (list left-label right-label)
               form referent lhs)
             (define-cfr lhs (list left-label right-label)
               :form form :referent referent))))

      (setf (cfr-plist cfr)
          `(:relation ,relation ,@(cfr-plist cfr)))

      cfr )))



(defun rtd/Lookup-relation-from-selected-schema ()
  (first *rdt/selected-schema-case*))


(defun rtd/compute-form-from-selected-schema (mapping)
  (let* ((lhs-schema-label
          (first (second *rdt/selected-schema-case*)))
         (form (category-named
                (strip-specializing-slash lhs-schema-label
                                          mapping))))
    (unless form
      (break "Why isn't a form label constructable from the schema?"))
    form ))


(defun rtd/Construct-referent-from-tableau (mapping)
  (let ((ref-schema
         (massage-referent-schema
          (cddr (second *rdt/selected-schema-case*)))))
    (let* ((ref-exp
            (apply #'construct-referent
                   mapping
                   nil  ;; 'category-of-locals'
                   ref-schema)))
      ref-exp)))


(defun quote-non-keyword-items-in-list (list)
  (let ( new-list )
    (dolist (item list)
      (if (keywordp item)
        (push item new-list)
        (push `',item new-list)))
    (nreverse new-list)))

