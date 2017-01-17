;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "object"
;;;    Module:   "objects;rules:rule links:"
;;;   Version:   January 2017

;; 2.0 (9/4/92 v2.3) Changed the names and contents descriptions of the
;;      left/right combinations.
;;     (5/22/95) added Trivial-rule-set
;; (1/13/16) added rule-set-with-rules

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (rule-set
            (:conc-name #:rs-)
            (:print-function print-rule-set-structure))

  backpointer           ;; the object it's part of
  single-term-rewrites  ;; a list of rules
  right-looking-ids     ;; ( label-id . form-id )
  left-looking-ids      ;; ( label-id . form-id )
  fsa     ;; a list of a polyword start state and/or a symbol naming an fsa
  phrase-boundary       ;; a bracket-assignment 
  completion-actions    ;; a plist of keywords and function names
  plist
  )


(defun print-rule-set-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<rule-set for " stream)
  (format stream "~A" (rs-backpointer obj))
  (write-string ">" stream))


;;;---------------------------
;;; predicates over rule sets
;;;---------------------------

(defun trivial-rule-set (rs)
  (and (null (rs-single-term-rewrites rs))
       (null (rs-right-looking-ids rs))
       (null (rs-left-looking-ids rs))
       (null (rs-fsa rs))
       (null (rs-phrase-boundary rs))
       (null (rs-completion-actions rs))))

(defun rule-set-with-rules (rs)
  (or (rs-single-term-rewrites rs)
      (rs-right-looking-ids rs)
      (rs-left-looking-ids rs)))


(defun rs-distinct-categories (rs)
  "Collect the set of categies of the referents of all
   the unary rules on this rule-set"
  (remove-duplicates
   (loop for r in (rs-single-term-rewrites rs)
      when (and (cfr-p r)
                (not (consp (cfr-referent r))))
      collect (itype-of (cfr-referent r)))))


;;;----------------------
;;; statistics gathering
;;;----------------------

(defun measure-fsa-facts ()
  "Count what's in the fsa field of the rule-sets of the defined words"
  ;; Listed counts from a biology load 1/17/17
  (declare (special *words-defined*))
  (let ((words-without-rs 0) ;; 22,282
        (words-without-fsa-field 0)  ;; 29,109
        (words-with-fsa 0) ;; 20
        (words-with-pw-start 0) ;; 17,946
        (words-with-field-count-over-two 0) ;; 0
        rule-set  fsa-field )
    (dolist (word *words-defined*) ;; 69,376
      (setq rule-set (rule-set-for word))
      (cond
        ((null rule-set)
         (incf words-without-rs))
        ((eq rule-set :whitespace)) ;; e.g. for #<word 21-spaces>
        (t
          (setq fsa-field (rs-fsa rule-set))
          (if (null fsa-field)
            (incf words-without-fsa-field)
            (else
              (etypecase fsa-field
                (cons
                 (when (> (length fsa-field) 2)
                   (incf words-with-field-count-over-two))
                 (dolist (item fsa-field)
                   (etypecase item
                     (polyword-state
                      (incf words-with-pw-start))
                     (symbol
                      (incf words-with-fsa)))))))))))
    (lsp-break "look the local count variables")))
