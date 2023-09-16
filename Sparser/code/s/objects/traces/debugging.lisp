;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2013,2021-2023 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "debugging"
;;;   Module:  "objects;traces:"
;;;  Version:  September 2023

;; initiated 3/91. Added *..new-cases* 6/13/95.  Started the debugging flags
;; accumulator 7/25. Added to it 8/9.  Moved the two pre-existing flags into
;; the aggregating routine 9/5/95. 8/14/13 Added in the new crop of flags.
;; 8/22/13 added *debug-pronouns*.

(in-package :sparser)

;;------- ad-hoc break triggers (see instance list at bottom)

(defparameter *break-on-new-cases* nil
  "Intended as a gate on any stubs that are put in the grammar code
   in the course of developing new rules.")

(defparameter *break-on-unexpected-cases* nil
  "If this flag is on, Unexpected situations in the code that are
   marked by calls to Break/debug will cause breaks.  Otherwise they
   will lead to format statements with the same information the
   break would have supplied.")
  

(defparameter *stream-for-bug-messages* *standard-output*)

(defun break/debug (format-string &rest args)
  (if *break-on-unexpected-cases*
    (apply #'break  format-string args)
    (apply #'format *stream-for-bug-messages* format-string args)))


;;--------- dial-in your preference, option to completely hide the error

(defparameter *warn-or-error-choice* :warn ;; :error
  "Lets you control whether you want to look at problems when the happen
 or just get informed about them. If this is set to the keyword :error
 then we call cerror ('continuable error'). If set to :warn then it
 becomes a call to warn.  Default is :warn. Expected to be set by
 hand when debugging.")

(defparameter *cache-warnings-for-later-review* nil
  "In warn-or-error controls whether warnings go to the screen
 or onto the list of these in *warnings-cache*")

(defvar *warnings-cache* nil
  "Where the warning strings go. Initialized at start of next run")

(defun warn-or-error (datum &rest arguments)
  (case *warn-or-error-choice*
    (:error (apply #'cerror (cons datum arguments)))
    (:warn
     (if *cache-warnings-for-later-review*
       (push (apply #'format nil (cons datum arguments))
             *warnings-cache*)
       (apply #'warn (cons datum arguments))))))

(define-per-run-init-form '(setq *warnings-cache* nil))


;;;-----------------------------------------------
;;; aggregating point for all the debugging flags
;;;-----------------------------------------------

(defun turn-on-debugging-flags ()
  (declare (special *announce-missing-sort-routines* *debug-pronouns* *debug-pnf
                    *break-on-new-categories-in-cap-seq* *break-on-new-name-converter-cases*
                    *break-on-new-bracket-situations* *announce-missing-sort-routines*))
  (setq *announce-missing-sort-routines* t
        *debug-treetops* t
        *debug-pronouns* t
        *debug-pnf* t
        *break-on-new-categories-in-cap-seq* t
        *break-on-new-cases* t
        *break-on-unexpected-cases* t
        ;; new ones from Grok and beyond
        *break-on-new-name-converter-cases* t
        *debug-reify-implicit-individuals* t
        *debug-segment-handling* t
        *break-on-new-bracket-situations* t
        *break-on-multiple-values-single-key-Mostafa* t
        ))

(defun turn-off-debugging-flags ()
  (declare (special *announce-missing-sort-routines* *debug-pronouns* *debug-pnf
                    *break-on-new-categories-in-cap-seq* *break-on-new-name-converter-cases*
                    *break-on-new-bracket-situations* *announce-missing-sort-routines*))
  (setq *announce-missing-sort-routines* nil
        *debug-treetops* nil
        *debug-pronouns* nil
        *debug-pnf* nil
        *break-on-new-categories-in-cap-seq* nil
        *break-on-new-cases* nil
        *break-on-unexpected-cases* nil
        ;; new
        *break-on-new-name-converter-cases* nil
        *debug-reify-implicit-individuals* nil
        *debug-segment-handling* nil
        *break-on-new-bracket-situations* nil
        *break-on-multiple-values-single-key-Mostafa* nil
        ))

;;;-----------------------------------
;;; Instances of the bare globals
;;;-----------------------------------

#|
(base) ddm@ddm-sift s % grep -r "break-on-new-cases" **/* 
grammar/model/sl/pct/position-rules.lisp:         (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:             (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:           (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:                (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:         (when *break-on-new-cases*
grammar/model/core/titles/types-of-people.lisp:      (when *break-on-new-cases*
grammar/model/core/finance/elaborations-to-money.lisp:     (t (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:         (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:             (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:           (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:                (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:         (when *break-on-new-cases*
grammar/model/core/titles/types-of-people.lisp:      (when *break-on-new-cases*
grammar/model/core/finance/elaborations-to-money.lisp:     (t (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:                (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:         (when *break-on-new-cases*
grammar/model/core/titles/types-of-people.lisp:      (when *break-on-new-cases*
grammar/model/core/finance/elaborations-to-money.lisp:     (t (when *break-on-new-cases*
grammar/model/core/finance/elaborations-to-money.lisp:     (t (when *break-on-new-cases*
grammar/model/core/finance/elaborations-to-money.lisp:     (t (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:                (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:         (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:                (when *break-on-new-cases*
grammar/model/core/names/parens-after-name.lisp:         (when *break-on-new-cases*
grammar/model/core/titles/types-of-people.lisp:      (when *break-on-new-cases*
grammar/model/core/titles/types-of-people.lisp:      (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:         (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:             (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:           (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:         (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:             (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:           (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:         (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:             (when *break-on-new-cases*
grammar/model/sl/pct/position-rules.lisp:           (when *break-on-new-cases*
interface/workbench/edge-view/open-close.lisp:        (when *break-on-new-cases*
interface/workbench/edge-view/open-close.lisp:        (when *break-on-new-cases*
interface/workbench/edge-view/open-close.lisp:        (when *break-on-new-cases*
interface/workbench/edge-view/open-close.lisp:        (when *break-on-new-cases*
objects/traces/debugging.lisp:(defparameter *break-on-new-cases* nil
objects/traces/debugging.lisp:        *break-on-new-cases* t
objects/traces/debugging.lisp:        *break-on-new-cases* nil
objects/traces/debugging.lisp:(defparameter *break-on-new-cases* nil
objects/traces/debugging.lisp:        *break-on-new-cases* t
objects/traces/debugging.lisp:        *break-on-new-cases* nil
objects/traces/debugging.lisp:(defparameter *break-on-new-cases* nil
objects/traces/debugging.lisp:        *break-on-new-cases* t
objects/traces/debugging.lisp:        *break-on-new-cases* nil
|#


#|
(base) ddm@ddm-sift s % grep -r "break-on-unexpected-cases" **/* 
analyzers/context/manage-sections.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/context/manage-sections.lisp:          (when *break-on-unexpected-cases*
analyzers/ca/anaphora.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/ca/anaphora.lisp:      (when *break-on-unexpected-cases*
analyzers/psp/check/many-many.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (declare (ignore earlier later) (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (when *break-on-unexpected-cases*
analyzers/traversal/dispatch.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/traversal/dispatch.lisp:           (when *break-on-unexpected-cases*
analyzers/ca/anaphora.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/ca/anaphora.lisp:      (when *break-on-unexpected-cases*
analyzers/ca/anaphora.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/ca/anaphora.lisp:      (when *break-on-unexpected-cases*
analyzers/context/manage-sections.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/context/manage-sections.lisp:          (when *break-on-unexpected-cases*
analyzers/context/manage-sections.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/context/manage-sections.lisp:          (when *break-on-unexpected-cases*
analyzers/psp/check/many-many.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (declare (ignore earlier later) (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (when *break-on-unexpected-cases*
analyzers/psp/check/many-many.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (declare (ignore earlier later) (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (when *break-on-unexpected-cases*
analyzers/psp/check/many-many.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (declare (ignore earlier later) (special *break-on-unexpected-cases*))
analyzers/psp/check/many-many.lisp:  (when *break-on-unexpected-cases*
analyzers/traversal/dispatch.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/traversal/dispatch.lisp:           (when *break-on-unexpected-cases*
analyzers/traversal/dispatch.lisp:  (declare (special *break-on-unexpected-cases*))
analyzers/traversal/dispatch.lisp:           (when *break-on-unexpected-cases*
grammar/model/core/titles/rules.lisp:     (t (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:               (t (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:              (when *break-on-unexpected-cases*
grammar/model/core/titles/rules.lisp:     (t (when *break-on-unexpected-cases*
grammar/model/core/titles/rules.lisp:     (t (when *break-on-unexpected-cases*
grammar/model/core/titles/rules.lisp:     (t (when *break-on-unexpected-cases*
grammar/model/core/titles/rules.lisp:     (t (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:               (t (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:              (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:               (t (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:              (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:               (t (when *break-on-unexpected-cases*
grammar/rules/ca/topic-company.lisp:              (when *break-on-unexpected-cases*
init/workspace/switch-settings.lisp:;(setq *break-on-unexpected-cases* t)
init/workspace/switch-settings.lisp:;(setq *break-on-unexpected-cases* nil)
init/workspace/switch-settings.lisp:;(setq *break-on-unexpected-cases* t)
init/workspace/switch-settings.lisp:;(setq *break-on-unexpected-cases* nil)
init/workspace/switch-settings.lisp:;(setq *break-on-unexpected-cases* t)
init/workspace/switch-settings.lisp:;(setq *break-on-unexpected-cases* nil)
interface/workbench/edge-view/open-close.lisp:          (when *break-on-unexpected-cases*
interface/workbench/edge-view/view.lisp:      (when *break-on-unexpected-cases*
interface/workbench/walk.lisp:          (if *break-on-unexpected-cases*
interface/workbench/autodef-window.lisp:      (when *break-on-unexpected-cases*
interface/workbench/def-rule/reference-category.lisp:    (when *break-on-unexpected-cases*
interface/workbench/def-rule/construct-mapping.lisp:       (t (when *break-on-unexpected-cases*
interface/workbench/edge-view/open-close.lisp:          (when *break-on-unexpected-cases*
interface/workbench/edge-view/view.lisp:      (when *break-on-unexpected-cases*
interface/workbench/walk.lisp:          (if *break-on-unexpected-cases*
interface/workbench/autodef-window.lisp:      (when *break-on-unexpected-cases*
interface/workbench/def-rule/reference-category.lisp:    (when *break-on-unexpected-cases*
interface/workbench/def-rule/construct-mapping.lisp:       (t (when *break-on-unexpected-cases*
interface/workbench/autodef-window.lisp:      (when *break-on-unexpected-cases*
interface/workbench/def-rule/reference-category.lisp:    (when *break-on-unexpected-cases*
interface/workbench/def-rule/construct-mapping.lisp:       (t (when *break-on-unexpected-cases*
interface/workbench/def-rule/construct-mapping.lisp:       (t (when *break-on-unexpected-cases*
interface/workbench/def-rule/reference-category.lisp:    (when *break-on-unexpected-cases*
interface/workbench/edge-view/open-close.lisp:          (when *break-on-unexpected-cases*
interface/workbench/edge-view/view.lisp:      (when *break-on-unexpected-cases*
interface/workbench/edge-view/open-close.lisp:          (when *break-on-unexpected-cases*
interface/workbench/edge-view/view.lisp:      (when *break-on-unexpected-cases*
interface/workbench/walk.lisp:          (if *break-on-unexpected-cases*
objects/traces/debugging.lisp:(defparameter *break-on-unexpected-cases* nil
objects/traces/debugging.lisp:  (if *break-on-unexpected-cases*
objects/traces/debugging.lisp:        *break-on-unexpected-cases* t
objects/traces/debugging.lisp:        *break-on-unexpected-cases* nil
objects/model/tree-families/subrs.lisp:  (declare (special *break-on-unexpected-cases*))
objects/model/tree-families/subrs.lisp:    (when *break-on-unexpected-cases*
objects/doc/style.lisp:  (declare (special *current-style* *break-on-unexpected-cases*))
objects/doc/style.lisp:        (when *break-on-unexpected-cases*
objects/doc/style.lisp:  (declare (special *current-style* *break-on-unexpected-cases*))
objects/doc/style.lisp:        (when *break-on-unexpected-cases*
objects/doc/style.lisp:  (declare (special *current-style* *break-on-unexpected-cases*))
objects/doc/style.lisp:        (when *break-on-unexpected-cases*
objects/model/tree-families/subrs.lisp:  (declare (special *break-on-unexpected-cases*))
objects/model/tree-families/subrs.lisp:    (when *break-on-unexpected-cases*
objects/model/tree-families/subrs.lisp:  (declare (special *break-on-unexpected-cases*))
objects/model/tree-families/subrs.lisp:    (when *break-on-unexpected-cases*
objects/model/tree-families/subrs.lisp:  (declare (special *break-on-unexpected-cases*))
objects/model/tree-families/subrs.lisp:    (when *break-on-unexpected-cases*
objects/traces/debugging.lisp:(defparameter *break-on-unexpected-cases* nil
objects/traces/debugging.lisp:  (if *break-on-unexpected-cases*
objects/traces/debugging.lisp:        *break-on-unexpected-cases* t
objects/traces/debugging.lisp:        *break-on-unexpected-cases* nil
objects/traces/debugging.lisp:(defparameter *break-on-unexpected-cases* nil
objects/traces/debugging.lisp:  (if *break-on-unexpected-cases*
objects/traces/debugging.lisp:        *break-on-unexpected-cases* t
objects/traces/debugging.lisp:        *break-on-unexpected-cases* nil
|#

