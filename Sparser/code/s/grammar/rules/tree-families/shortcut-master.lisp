;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-master"
;;;   Module:  "grammar;rules;tree-families;"
;;;  Version:  September 2016

;; Initiated 9/14/14 to make more flexible, complete shortcuts.
;; 11/11/14 added keyword for obo-id.
;; 1.0 (12/13/14) totally made over to simplify everything down
;;  to one two routines. 1/5/15 Refactored a bit to handle
;;  nouns and adjectives without ETF. 
;; 1/14/2015 Changes to put :subject and :object selectional 
;;   restrictions in the subcat frame
;;   also, initial subcat for THATCOMP -- not used yet
;;   Delete old noun definitions when redefining a noun (but 
;;     don't delete old verb definitions)
;; add new method delete-adj-cfr (like delete-noun-cfr) to handle cases where core definitions conflict with new definitions
;; 4/15/2015 make the use of sub-categorizations less taxing (OK, it is April 15)
;;  only have one place where the slots (not just prepositions) are defined, and don't use the &key mechanism for passing them individually
;;  have a variable called slots which holds a plist of all the slot information
;; this will make it easier to add new slots, including ones which are not prepositions
;; 4/24/2015 added whethercomp as a type of verb complement
;; 5/12/15 Minor cleanup for read-ability.
;; 6/5/2015 extend subject-variable and object-variable to make use of subcategorization information
;; and add thatcomp-variable
;; 6/30/15 Implemented irregular plural for nouns.
;; 7/29/15 added find-single-unary-cfr and rearranged slightly.
;; 8/11/16 Revised and simplified.

(in-package :sparser)

;;;-------------------------------------
;;; Decoder that actually does the work
;;;-------------------------------------

(defun decode-shortcut-rdata (category &rest rdata &key
                              etf adj noun verb c prep mumble &aux
                              (etf (ensure-list etf)))
  "Decoder for the shortcut form of define-category, def-synonym, etc.
   Exactly one ETF is allowed, but for compatibility we assume a list."
  (declare (special word::|by|)
           (ignore mumble)
           (optimize debug))
  (check-type category category)
  (check-type etf (or null (cons symbol null)))
  (let* ((subcat-frame (get-subcategorization category))
         (schema-name (car etf))
         (scheme (and schema-name (realization-scheme-named schema-name)))
         (substitution-map '()))
    (assert subcat-frame (category) "No subcategorization frame on ~a." category)
    (when scheme
      (let ((subj-pat (find-subcat-pattern :subject subcat-frame)))
        (when subj-pat
          (let ((s-var (subcat-variable subj-pat))
                (s-v/r (subcat-restriction subj-pat)))
            (push `(subj-slot . ,s-var) substitution-map)
            (push `(subj-v/r . ,s-v/r) substitution-map)
            (when (is-a-form-of-passive? schema-name)
              (push `(by-v/r . ,s-v/r) substitution-map)
              (assign-subcategorization category word::|by| s-v/r s-var)))))

      (let ((obj-pat (find-subcat-pattern :object subcat-frame)))
        (when obj-pat
          (let ((o-var (subcat-variable obj-pat))
                (o-v/r (subcat-restriction obj-pat)))
            (push `(theme-slot . ,o-var) substitution-map)
            (push `(theme-v/r . ,o-v/r) substitution-map))))

      ;; Modifier, normally to a head noun.
      (let ((m-pat (find-subcat-pattern :m subcat-frame)))
        (when m-pat
          (let ((m-var (subcat-variable m-pat))
                (m-v/r (subcat-restriction m-pat)))
            (push `(modifier-slot . ,m-var) substitution-map)
            (push `(modifier-v/r . ,m-v/r) substitution-map))))

      ;; Complement, e.g. "reported that ..."
      (when c
        (let* ((var (variable/category c category))
               (v/r (var-value-restriction var)))
          (push `(comp-slot . ,var) substitution-map)
          (push `(comp-v/r . ,v/r) substitution-map)))

      (values (schema-tree-family scheme)
              (make-scheme-mapping scheme substitution-map category)))))
