;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "extract subj"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:  August 1993

;; initiated 7/16/93 v2.3, fleshed out 8/3. 8/4/11 fixed capitalization.

(in-package :sparser)


(defun extract-subject-from-clause (S-edge)
  ;; the caller has vetted this edge to have "S" as its form category.
  ;; We search through its interpretation to identify what object
  ;; has been bound as the referent of its subject constituent.

  (let ((referent (edge-referent s-edge)))
    (if (individual-p referent)
      (let* ((type (car (indiv-type referent)))
             (schema (cadr (member :schema (cat-realization type)))))
        (if schema
          (let* ((etf (second schema))
                 (cases (etf-cases etf))
                 (mapping (third schema))
                 (subj-rule (cadr (assoc :subject cases)))
                 (var (car (cadr (member :binds subj-rule)))))
            (if var
              (let ((variable (cdr (assoc var mapping))))
                (if variable
                  (let ((value (value/var variable referent)))
                    (if value
                      value
                      (let ((passive-rule (cadr (assoc :passive cases))))
                        (if passive-rule
                          (then
                            (setq var (car (cadr (member :binds passive-rule)))
                                  variable (cdr (assoc var mapping)))
                            (if variable
                              (value/var variable referent)
                              (else
                                (tr :no-value-for-var-in-indiv
                                    variable referent)
                                nil )))
                          (else
                            (tr :no-subject-or-passive etf)
                            nil )))))
                  (else
                    (tr :no-value-for-var-in-indiv
                        variable referent)
                    nil )))
              (else
                (tr :subj-var-couldnt-be-found etf)
                nil )))
          (else
            (tr :category-hasnt-a-schema type)
            nil )))
      (else
        (tr :referent-wasnt-an-individual s-edge referent)
        nil ))))


;;;--------
;;; traces
;;;--------

(defparameter *trace-ca* nil)
;(setq *trace-ca* t)
;(setq *trace-ca* nil)

;; See also the traces in the stranded-vp code

(deftrace :referent-wasnt-an-individual (edge referent)
  (when *trace-ca*
    (trace-msg "The referent of e~A was expected to be an individual~
                ~%but it is ~A"
               (edge-position-in-resource-array edge)
               referent)))

(deftrace :category-hasnt-a-schema (type)
  (when *trace-ca*
    (trace-msg "The category ~A was expected ~%to have a schema ~
                but it doesn't" type)))

(deftrace :no-value-for-var-in-indiv (variable referent)
  (when *trace-ca*
    (trace-msg "Hoped for a value for ~A~%  in ~A~%but there isn't"
               variable referent)))

(deftrace :subj-var-couldnt-be-found (etf)
  (when *trace-ca*
    (trace-msg "Expected to find a rule/parameter for the subject in the~
                tree family~%  ~A, but there wasn't one." etf)))

