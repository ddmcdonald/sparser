;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998,2014-2018  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "postprocessing"
;;;    Module:  "interface;grammar:"
;;;   version:  April 2018

#| Goes through the grammar modules after all the grammar has been loaded
   into an image and organizes them for display.  |#

;; initiated 2/10/92 v2.2. added summary modules 5/1
;; added grammar-module menu 6/19-20/92 v2.3
;; 0.1 (6/30) changed the modules from an embedded menu to toplevel so depth wouldn't
;;      be a problem
;; 0.2 (7/21) reorganized the threading of the menu construction a little
;; 0.3 (1/10/93) moved the menu stuff to [interface;windows:menus:module menu]
;;     (2/22/95) added postprocessing of tree families
;;     (6/21) added call to hack relationships among the categories
;;     (8/16/97) added some gates
;;     (6/15/14) Added listing of words and rules count like the one in
;;      workout-the-relationships-among-the-categories for categories.

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun postprocess-grammar-indexes ()
  "Called in session.lisp after all the grammar has been loaded."
  (setq *words-defined*     (sort-words *words-defined*)
        *polywords-defined* (sort-polywords *polywords-defined*)
        *non-terminals-defined* (sort-categories *non-terminals-defined*)
        *objects-defined*       (sort-categories *objects-defined*)
        *cfrs-defined* (sort-cfrs *cfrs-defined*)
        *csrs-defined* (sort-csrs *csrs-defined*)
        ;;//// need sort routines for *form-rules-defined* 
        ;; and *syntax-rules-defined*
        *context-free-rules-defined* (sort-cf&cs-rules-together *context-free-rules-defined*)
        *polywords-ending-in-period* (polywords-with-final-period *polywords-defined*))
  (when *tree-families*
    (setq *tree-families-defined* (postprocess-tree-families *tree-families-defined*)))
  (dolist (gm *grammar-modules-in-image*)
    (unless (gmod-parent-module gm)
      (push gm *toplevel-grammar-modules*))
    (when (gmod-sub-modules gm)
      (setf (gmod-sub-modules gm) (nreverse (gmod-sub-modules gm))))
    (post-process-grammar-module gm))
  (setq *summary-grammar-modules*  (nreverse *summary-grammar-modules*)
        *grammar-modules-in-image* (nreverse *grammar-modules-in-image*)
        *toplevel-grammar-modules* (nreverse *toplevel-grammar-modules*))
  (when *include-model-facilities*
    (workout-the-relationships-among-the-categories))
  (report-word-and-rules-count)
  :grammar-is-postprocessed )


(defun workout-the-relationships-among-the-categories ()
  "Called by postprocess-grammar-indexes which runs after all
   the grammar is loaded."
  (declare (special *categories-without-supercs*))
  (setq *categories-without-supercs*
        (compute-daughter-relationships *referential-categories*))
  (sort-referential-categories-hierarchically)
  (setq *mixin-categories*       (sort-categories *mixin-categories*))
  (setq *grammatical-categories* (sort-categories *grammatical-categories*))
  ;(setq *form-categories*        (sort-categories *form-categories*))
  ;;  try viewing them in their order of definition, which mirrors
  ;;   major
  (setq *all-intra-category-relationships-noticed?* t)
  
  (flet ((cn (n) (insert-commas-into-number-string n)))
    (format t "~&~%-------------------------------------------~
               ~% ~A~5,2T Referential categories~
               ~% ~A~5,2T Syntactic form categories~
               ~% ~A~5,2T Mixin categories~
               ~% ~A~5,2T Non-terminal categories~
               ~% ~A~5,2T Individuals
               ~%-------------------------------------------"
            (cn (length *referential-categories*))
            (length *form-categories*)
            (length *mixin-categories*)
            (length *grammatical-categories*)
            (cn *individual-count*))))



(defun report-word-and-rules-count ()
  "Except for the tree-families and grmmar-modules, these lists
 are compiled incrementally during the load by note-grammar-module
 whose main job is to tally these on the grammar module object."
  (let ((lexical-rule-count (length (collect-lexical-rules)))
        (semantic-rule-count (length (collect-semantic-cfrs)))
        (da-count (number-of-DA-rules)))

    (flet ((cn (n) (insert-commas-into-number-string n)))
      (format t "~% ~a~5,2T Words~
                 ~% ~a~5,2T Polywords~
                 ~% ~a~5,2T Lexical rules~
                 ~% ~a~5,2T Semantic rules~
                 ~% ~a~5,2T Context sensitive rules~
                 ~% ~a~5,2T Form rules~
                 ~% ~a~5,2T Syntactic rules~
                 ~% ~a~5,2T Debris analysis rules~
                 ~% ~a~5,2T ETF tree schema~
                ~% ~a~5,2T Grammar modules loaded~
                ~%-------------------------------------------
                ~&"
              (cn (length *words-defined*))
              (cn (length *polywords-defined*))
              (cn lexical-rule-count)
              (cn semantic-rule-count)
              (cn (length *csrs-defined*))
              (cn (length *form-rules-defined*))
              (cn (length *syntax-rules-defined*))
              (cn da-count)
              (length *tree-families-defined*)
              (length *grammar-modules-in-image*)))))



;;;-----------------
;;; grammar modules
;;;-----------------

(defun post-process-grammar-module (gm)
  "Order/sort the objects in the various fields in ways that
   will make sense when they appear in a menu"
  (setf (gmod-cf-rules gm)      (sort-cfrs (gmod-cf-rules gm)))
  (setf (gmod-cs-rules gm)      (sort-csrs (gmod-cs-rules gm)))
  (setf (gmod-non-terminals gm) (sort-categories (gmod-non-terminals gm)))
  (setf (gmod-object-types gm)  (sort-categories (gmod-object-types gm)))
  (setf (gmod-words gm)         (sort-words (gmod-words gm)))
  (setf (gmod-polywords gm)     (sort-polywords (gmod-polywords gm)))
  (setf (gmod-files gm)         (nreverse (gmod-files gm)))
  gm )


;;;-------------
;;; rule detail
;;;-------------

(defun collect-lexical-rules () ;; 2,805 in Fire
  (loop for r in *cfrs-defined*
     when (lexical-rule? r) collect r))

(defun collect-semantic-cfrs () ;; 910 in Fire
  "The syntactic, context-sensitive, and form rules were distinguished
 when note-grammar-model was compiling the lists. That leaves rules that
 were created by def-cfr and define-cfr (ignoring the distinction 
 between rules written by hand and those written as part of expanding
 the realization specification of a category)."
  (loop for r in *cfrs-defined*
     unless (lexical-rule? r) collect r))

;; (measure-fsa-facts)
(defun words-without-rule-sets () ;; 843 in Fire
  (loop for word in *words-defined*
     unless (rule-set-for word) collect word))

(defun non-digits-without-rule-sets () ;; 832 in Fire (blocks-world?)
  (loop for word in *words-defined*
     unless (or (rule-set-for word) (eq (word-capitalization word) :digits))
     collect word))
;; Sampling show this includes US-states, military-ranks & units, countries,
;; at least some conjunctions, mideast/named-entities
;; The def function for us-states looks odd. Might be source of problem

(defun number-of-DA-rules ()
  ;; See objects/rules/da/object.lisp for the machinery
  ;; Most of the rules are in grammar/rules/da/da-rules.lisp
  (hash-table-count *debris-analysis-rules*))
