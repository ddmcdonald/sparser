;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2014-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-master"
;;;   Module:  "grammar;rules;tree-families;"
;;;  Version:  June 2019

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

(defun decode-shortcut-rdata (category &rest rdata
                              &key etf adj noun verb c prep mumble
                              &aux (etf (ensure-list etf)))
  "Called by setup-rdata to convert a shortcut version of realization
   data into the same pattern as used in the long form.
   Exactly one ETF is allowed, but for compatibility we assume a list."
  (declare (special word::|by|)
           (ignore mumble)
           (optimize debug))
  (check-type category category)
  (check-type etf (or null (cons symbol null)))
  (let* ((subcat-frame (get-subcategorization category))
         (schema-name (car etf))
         (scheme (and schema-name (realization-scheme-named schema-name)))
         (substitution-map '())
         mumble-rdata)
    (assert subcat-frame (category) "No subcategorization frame on ~a." category)
    (flet ((v/r-check (var v/r)
             "If the value-restriction is nil there will be no label in the 
              substitution-map. Catch the problem here rather than in
              make-schema-mapping where the error is obscure."
             (when (eq v/r nil)
               (error "No value restriction on ~a" var))))

      (when scheme
        (let ((subj-pat (find-subcat-pattern :subject subcat-frame)))
          (when subj-pat
            (let ((s-var (subcat-variable subj-pat))
                  (s-v/r (subcat-restriction subj-pat)))
              (v/r-check s-var s-v/r)
              (push `(subj-slot . ,s-var) substitution-map)
              (push `(subj-v/r . ,s-v/r) substitution-map)
              (when (is-a-form-of-passive? schema-name)
                (push `(by-v/r . ,s-v/r) substitution-map)
                (assign-subcategorization category word::|by| s-v/r s-var)))))

        (let ((obj-pat (find-subcat-pattern :object subcat-frame)))
          (when obj-pat
            (let ((o-var (subcat-variable obj-pat))
                  (o-v/r (subcat-restriction obj-pat)))
              (v/r-check o-var o-v/r)
              (push `(theme-slot . ,o-var) substitution-map)
              (push `(theme-v/r . ,o-v/r) substitution-map))))

        ;; Modifier, normally to a head noun.
        (let ((m-pat (find-subcat-pattern :m subcat-frame)))
          (when m-pat
            (let ((m-var (subcat-variable m-pat))
                  (m-v/r (subcat-restriction m-pat)))
              (v/r-check m-var m-v/r)
              (push `(modifier-slot . ,m-var) substitution-map)
              (push `(modifier-v/r . ,m-v/r) substitution-map))))

        ;; attribute constituent
        (let ((attr-pat (find-subcat-pattern :a subcat-frame)))
          (when attr-pat
            (let ((a-var (subcat-variable attr-pat))
                  (a-v/r (subcat-restriction attr-pat)))
              (v/r-check a-var a-v/r)
              (push `(attr-slot . ,a-var) substitution-map)
              (push `(attr-v/r . a-v/r) substitution-map))))

        ;; indirect object / beneficiary "give Marsha the present"
        (let ((iobj-pat (find-subcat-pattern :i subcat-frame)))
          (when iobj-pat
            (let ((io-var (subcat-variable iobj-pat))
                  (io-v/r (subcat-restriction iobj-pat)))
              (v/r-check io-var io-v/r)
              (push `(iobj-slot . ,io-var) substitution-map)
              (push `(iobj-v/r . ,io-v/r)  substitution-map))))

        ;; location subcategorized as an object (vs. an adjunct)
        (let ((l-pat (find-subcat-pattern :l subcat-frame)))
          (when l-pat
            (let ((l-var (subcat-variable l-pat))
                  (l-v/r (subcat-restriction l-pat)))
              (v/r-check l-var l-v/r)
              (push `(loc-slot . ,l-var) substitution-map)
              (push `(loc-v/r . ,l-v/r) substitution-map))))

        ;; Complement, e.g. "reported that ..."
        (when c
          (let* ((var (variable/category c category))
                 (v/r (var-value-restriction var)))
            (v/r-check var v/r)
            (push `(comp-slot . ,var) substitution-map)
            (push `(comp-v/r . ,v/r) substitution-map)))

        (when (mumble-phrase scheme)
          (let* ((phrase-and-map (mumble-phrase scheme))
                 (phrase (car phrase-and-map))
                 (schematic-map (cdr phrase-and-map)))
            (let ((populated-map
                   (make-mumble-mapping schematic-map substitution-map category)))
              (setq mumble-rdata (cons phrase populated-map)))))

        ;; Has to return the same values as decode-rdata does:
        ;; etf, mapping, local-rules, mdata  -- this info is stored on
        ;; the realization-data and unpacked in make-rules-for-rdata
        (values (schema-tree-family scheme)
                (make-scheme-mapping scheme substitution-map category)
                nil ;; local rules
                mumble-rdata)))))

