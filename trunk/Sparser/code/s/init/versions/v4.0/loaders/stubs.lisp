;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1997  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;; 
;;;     File:  "stubs"
;;;   Module:  "init;versions:v2.3:loaders:"
;;;  version:  February 2010

;; 4/3/97 added a case for dm&p. 8/17/97 added lots of cases as part of preparing
;; a license with the segmenter but not the model.  2/22/10 added construct-
;; temporary-number to support :just-bracketing mode

(in-package :sparser)

#|  If the loader mode is anything less than :everything then some
    functions will be mentioned in the code without ever being defined.
    This routine defines dummies for them so as to avoid the messages
    as the end of the load and thereby give any messages that do occur
    real significance.   |#


(when *nothing-Mac-specific*
  (defun launch-sparser-menus ())
  (defun increment-line-count ())
  )

(unless *include-model-facilities*
  (defun declare-all-existing-individuals-permanent ())
  (defun define-individual (s &key word) ;; more later?
    (declare (ignore s word)))
  (defun find-individual (s &key word) ;; ditto?
    (declare (ignore s word)))
  (defun workout-the-relationships-among-the-categories ())
  )

(unless *tree-families*
  (defun postprocess-tree-families (list )
    (declare (ignore list)))
  )

(unless *sun*
  (defun next-letter-of-the-alphabet (position)
    (declare (ignore position)))
  (defun finished-entry-title (position)
    (declare (ignore position)))
  )


(ecase *loader-mode*
  (:everything
   (unless *include-model-facilities*
     (defun make-mixin-category (&key symbol)
       (declare (ignore symbol)))
     (defun make-referential-category (&key symbol)
       (declare (ignore symbol)))
     (defun referential-category-p (symbol)
       (declare (ignore symbol)))
     (defun initialize-individuals-resource ())
     (defun establish-binding-resource ())
     )

   (unless *proper-names*
     (defun pnf (p)
       (declare (ignore p)))
     (defun try-princing-name (w s id)
       (declare (ignore w s id))))

   (unless *numbers*
     (defun construct-temporary-number (word digit-string lisp-number)
       ;; called from make-edge-over-unknown-digit-sequence when
       ;; *include-model-facilities* is true
       (declare (ignore word lisp-number))
       (parse-integer digit-string)))

   (unless *ha*
     (defun apply-HA-to-current-segment ())
     (defun check-out-possible-conjunction (b)
       (declare (ignore b))))

   (unless *DM&P*
     (defun dm/analyze-segment (c)
       (declare (ignore c))))

   (unless *recognize-sections-within-articles*
     (defun setup-for-typed/no-headers ())
     (defun terminate-ongoing-section (p)
       (declare (ignore p)))
     (defun finish-ongoing-paragraph (p)
       (declare (ignore p)))))


  (:just-the-all-edges-parser

   (defun after-analysis-actions ())
   (defun establish-properties-for-initial-region ())
   (defun initialize-paragraph-state ())
   (defun reap-individuals ())
   (defun initialize-discourse-history ())
   (defun add-subsuming-object-to-discourse-history (o)
     (declare (ignore o)))
   (defun initialize-context-variables ())
   (defun pre-allocate-paragraphs ())
   (defun do-document-stream (s)
     (declare (ignore s)))
   (defun do-article (s)
     (declare (ignore s)))
   (defun clear-stack-of-pending-left-openers ())
   (defun clear-special-text-display-window ())

   (defun form-rule-completion (a b c d)
     (declare (ignore a b c d)))
   (defun form-rule-completion/explicit-lhs (a b c d)
     (declare (ignore a b c d)))
   (defun make-edge-based-on-morphology (a b c)
     (declare (ignore a b c)))
   (defun make-edge-over-unknown-digit-sequence (a b)
     (declare (ignore a b)))

   (defun start-timer (global)
     (declare (ignore global)))
   (defun stop-timer (global)
     (declare (ignore global)))

   ;(defun do-generic-actions-off-treetop (tt)
   ;  (declare (ignore tt)))
   (defun do-conceptual-analysis-off-new-treetop (tt)
     (declare (ignore tt)))

   (defun make-mixin-category (&key symbol)
     (declare (ignore symbol)))
   (defun make-referential-category (&key symbol)
     (declare (ignore symbol)))
   (defstruct referential-category)
   (defstruct mixin-category)

   (defun grammar-switch-settings (stream)
     (declare (ignore stream)))

   (defun initiate-top-edges-protocol ())
   (defun populate-stack-of-pending-left-openers ())
   (defun [-on-position? (p)
     (declare (ignore p)))
   (defun ]-on-position? (p)
     (declare (ignore p)))
   (defun introduce-brackets (a b c)
     (declare (ignore a b c)))
   (defun edge-might-extend? (p)
     (declare (ignore p)))
   (defun tt-extends?/multiple (p)
     (declare (ignore p)))

   (defun apply-HA-to-current-segment ())
   (defun check-out-possible-conjunction (left-boundary)
     (declare (ignore left-boundary)))
   (defun capitalized-word-fsa (pos)
     (declare (ignore pos)))

   (defun decode-head (args)
     (declare (ignore args)))
   (defun decode-instantiate-individual (args)
     (declare (ignore args)))
   (defun decode-instantiate-individual-with-binding (args)
     (declare (ignore args)))
   (defun decode-binds (args)
     (declare (ignore args)))
   (defun decode-subtype (args)
     (declare (ignore args)))
   (defun ref/head (a b c)
     (declare (ignore a b c)))
   (defun ref/instantiate-individual (a b c d)
     (declare (ignore a b c d)))
   (defun ref/instantiate-individual-with-binding (a b c d)
     (declare (ignore a b c d)))
   (defun ref/subtype (a b c)
     (declare (ignore a b c)))
   (defun ref/binding (a b c d)
     (declare (ignore a b c d)))
   (defun lambda-variable-p (arg)
     (declare (ignore arg)))

   (defun sm-initiation-action (function)
     (declare (ignore function)))
   (defun sm-terminates-previous (function)
     (declare (ignore function)))
   (defun sm-termination-action (function)
     (declare (ignore function)))

   (defun readout-pending-salient-objects ())

   ))


(unless *DM&P*
  (defun sort-adverb-verb (i1 i2)
    (declare (ignore i1 i2)))
  (defun sort-terms-alphabetically (i1 i2)
    (declare (ignore i1 i2)))
  (defun sort-pair-terms-alphabetically (i1 i2)
    (declare (ignore i1 i2))))

