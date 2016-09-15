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

(defun decode-shortcut-rdata (category &rest rdata &key etf
                              adjective (adj adjective)
                              noun verb
                              control-relations
                              c ; complement
                              prep ; owned preposition
                              slots ; subcat plist
                              mumble ; for generation
                              optional-object ; for words like "translocate"
                              adjp-complement ; for cases like "Make the top block red."
                              loc-pp-complement) ; for cases like "Put the block on the table."
  "Decoder for the shortcut form of define-category, def-synonym, etc."
  (declare (special word::|by|)
           (ignore mumble)
           (optimize debug))
  (let* ((sf (fom-subcategorization category :category category :slots slots))
         (subj-pat (find-subcat-pattern :subject sf))
         (obj-pat (find-subcat-pattern :object sf))
         (m-pat (find-subcat-pattern :m sf)))
    (setf (control-relations sf) control-relations)

    ;; Exactly one ETF is allowed, but for compatibility we assume a list.
    (setq etf (ensure-list etf))
    (check-type etf (or null (cons symbol null)))
    (let* ((schema-name (car etf))
           (scheme (and schema-name (realization-scheme-named schema-name)))
           substitution-map
           word-map)
      (when etf
        ;; Set up the word map.
        (ecase (schema-head-keyword scheme)
          (:verb
           (unless verb
             (error "The etf ~a requies a :verb parameter." schema-name))
           (push `(:verb ,verb) word-map))
          (:common-noun
           (unless noun
             (error "The etf ~a requies a :noun parameter." schema-name))
           (push `(:common-noun ,noun) word-map)))

        ;; Incrementally set up the substitution map.
        (when subj-pat
          (let ((s-var (subcat-variable subj-pat))
                (s-v/r (subcat-restriction subj-pat)))
            (push `(subj-slot . ,s-var) substitution-map)
            (push `(subj-v/r . ,s-v/r) substitution-map)
            (register-variable category s-var :subject-variable)
            (when (is-a-form-of-passive? schema-name)
              (push `(by-v/r . ,s-v/r) substitution-map)
              (assign-subcategorization category word::|by| s-v/r s-var))))

        (when obj-pat
          (let ((o-var (subcat-variable obj-pat))
                (o-v/r (subcat-restriction obj-pat)))
            (push `(theme-slot . ,o-var) substitution-map)
            (push `(theme-v/r . ,o-v/r) substitution-map)
            (register-variable category o-var :object-variable)
            (register-variable category optional-object :optional-object)
            (register-variable category
                               (mapcar (lambda (prep)
                                         (resolve (string-downcase prep)))
                                       loc-pp-complement)
                               :loc-pp-complement)))

        ;; Complement, e.g. "reported that ..."
        (when c
          (let* ((var (variable/category c category))
                 (v/r (var-value-restriction var)))
            (push `(comp-slot . ,var) substitution-map)
            (push `(comp-v/r . ,v/r) substitution-map)
            (register-variable category var :complement-variable)))

        ;; Modifier, normally to a head noun.
        (when m-pat
          (let ((m-var (subcat-variable m-pat))
                (m-v/r (subcat-restriction m-pat)))
            (unless m-var (error "No ~a variable associated with ~a." m-pat category))
            (push `(modifier-slot . ,m-var) substitution-map)
            (push `(modifier-v/r . ,m-v/r) substitution-map))))

      (when (and verb prep)
        ;; Preposition 'owned' by the verb, which appears
        ;; immediately after the verb, making it effectively
        ;; a compound verb name.
        (apply-preposition verb prep category))

      (when noun
        ;; A noun can just expect to get all the pp's w/o an etf.
        (unless (assq :common-noun word-map)
          ;; If it's on the map then the realization machinery will expand it.
          (check-type noun
                      (or (or string word polyword)
                          (cons (or string word polyword)
                                (cons irregular-keyword
                                      (cons (or string word polyword)
                                            null))))
                      "an irregular noun spec")
          (let* ((word-string (if (consp noun) (car noun) noun))
                 (word (resolve/make word-string))
                 (special-cases (when (consp noun) (cdr noun)))
                 (cn-rules (apply #'make-rules-for-head
                                  :common-noun word category category
                                  special-cases)))
            (make-corresponding-mumble-resource word :common-noun)
            (add-rules cn-rules category))))

      (when adj
        ;; Adjectives are analyzed as being able to take subjects and/or objects
        ;; as well as subcategorizations ('slots').
        (let* ((word (resolve/make adj))
               (adj-rules (make-rules-for-head :adjective word category category)))
          (make-corresponding-mumble-resource word :adjective)
          (add-rules adj-rules category)))

      (when adjp-complement
        (register-variable category adjp-complement :adjp-complement))

      (make-realization-data category
                             :etf (and scheme (schema-tree-family scheme))
                             :mapping (and scheme (make-scheme-mapping scheme substitution-map category))
                             :heads (decode-rdata-heads (if scheme
                                                          (assoc (schema-head-keyword scheme) word-map)
                                                          rdata)
                                                        category)))))
