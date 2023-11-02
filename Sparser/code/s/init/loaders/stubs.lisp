;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1997,2012-2020  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "stubs"
;;;   Module:  "init;loaders;"
;;;  version:  September 2020
;;;
;;; Provide definitions for functions we know (given the configuration)
;;; don't have definitions.

;; 4/3/97 added a case for dm&p. 8/17/97 added lots of cases as part of preparing
;; a license with the segmenter but not the model.  2/22/10 added construct-
;; temporary-number to support :just-bracketing mode. Added bunch more 4/1/12.
;; Fixed ill-formed declare 1/28/13. More for omitting grammar modules 6/16/14
;; and more 8/10/14. And again 3/2/15. 6/29/15 *description-lattice* cases.
;; 12/2/15 biology cases

(in-package :sparser)

#|  If the loader mode is anything less than :everything then some
    functions will be mentioned in the code without ever being defined.
    This routine defines dummies for them so as to avoid the messages
    about undefined functions at the end of the load and thereby give 
    any messages that do occur real significance.   |#



(unless *biology*

  ;; These gates are grammar modules. In this case, unless the biology
  ;; grammar module has been included in the load these functions that
  ;; appear in the code will not have definitions

  (defun in-ras2-model? (i) ;; Rusty's workspace
    (declare (ignore i)))
  (defun define-bio (word kind)
    (declare (ignore word kind)))
  (defun setup-acronym-for-bio-entity (ref1 ref2)
    (declare (ignore ref1 ref2)))
  (defun get-bio-synonyms (word)
    (declare (ignore word)))
  (defun svo/bio/expr (word)
    (declare (ignore word)))
  ;; next two are in sl/biology/rhetoric.lisp, which could move
  (defun establish-discourse-relations (sentence)
    (declare (ignore sentence)))
  (defun note-biological (referent) (declare (ignore referent)))
  (defun assess-relevance (sentence)
    (declare (ignore sentence)))
  (defun reify-residue-and-make-edge (start-pos end-pos)
    (declare (ignore start-pos end-pos))
    nil))


(unless *companies*
  (defun establish-companies-as-part-of-the-background (list)
    (declare (ignore list)))
  (defun filter-out-background-companies/dh (list)
    (declare (ignore list)))
  (defun make-company-name-from-items
         (items &key &-sign ordinal inc-term? of and the generic-co koc?)
    (declare (ignore items &-sign ordinal inc-term? of and the generic-co koc?)))
  (defun make-company-name-as-simple-sequence (items)
    (declare (ignore items)))
  (defun index-company-name-to-company (longer-name entity)
    (declare (ignore longer-name entity)))
  (defun find/company-with-name (name)
    (declare (ignore name)))
  (defun consider-converting-title-to-person (convering-edge)
    (declare (ignore convering-edge)))
  (defun make/company-with-name (name)
    (declare (ignore name))))

(unless *people*
  (defun find/person-with-name (name)
    (declare (ignore name)))
  (defun interpret-name-as-person(name)
    (declare (ignore name)))
  (defun make-location-name (items location-head)
    (declare (ignore items location-head)))
  (defun make-person-name-from-items (items &key version)
    (declare (ignore items version)))
  (defun make-a-collection-of-person-names (items and person-version)
    (declare (ignore items and person-version)))
  (defun find/person-with-name (name)
    (declare (ignore name)))
  (defun find/location-with-name (name)
    (declare (ignore name)))
  (defun make/person-with-name (name)
    (declare (ignore name)))
  (defun string/person-name (name)
    (declare (ignore name)))
  (defun make/location-with-name (name)
    (declare (ignore name))))

(unless *locations-core*
  (defun find-or-make-named-type-of-location (name)
    (declare (ignore name))))

(unless *c3*
  (defun create-wakil ())
  (defun create-ford-motor-company ())
  (defun activate-initial-indexical (edge peg)
    (declare (ignore edge peg)))
  (defun indexical-for-state (new-state)
    (declare (ignore new-state)))
  (defun add-referent-to-peg (referent peg)
    (declare (ignore referent peg))))

(unless *checkpoint-operations*
  (defun checkpoint-call-and-postprocessing (string)
    (declare (ignore string))))


(when *nothing-Mac-specific*
  (defun launch-sparser-menus ())
  (defun increment-line-count ())
  (defun synchronize/should-we-pause? (sm &optional start-edge end-edge ) 
    (values sm start-edge end-edge))
  (defun update-workbench ())
  (defun rtd/shutdown ())
  (defun warp-announcement-widgets-off-screen ())
  (defun rdt/gloss-rules-created ())
  (defun announce-effect-of-rule-definition ())
  (defun slvd/prepare-for-save-process ())
  (defun write-to-text-window (*NL-as-string* position)
    (declare (ignore position))))

(unless *include-model-facilities*
  (defun declare-all-existing-individuals-permanent ())
  (defun define-individual (s &key word) ;; more later?
    (declare (ignore s word)))
  (defun find-individual (s &key word) ;; ditto?
    (declare (ignore s word)))
  (defun workout-the-relationships-among-the-categories ()))

(unless *tree-families*
  (defun postprocess-tree-families (list )
    (declare (ignore list))))

(unless *DM&P*
  (defun sort-adverb-verb (i1 i2)
    (declare (ignore i1 i2)))
  (defun sort-terms-alphabetically (i1 i2)
    (declare (ignore i1 i2)))
  (defun sort-pair-terms-alphabetically (i1 i2)
    (declare (ignore i1 i2)))
  (defun dm/analyze-segment (c)
    (declare (ignore c))))

(unless *proper-names*
  (defun pnf (p)
    (declare (ignore p)))
  (defun try-princing-name (w s id)
    (declare (ignore w s id)))
  (defun pfwpnf (start end) (declare (ignore start end)))
  (defun establish-pnf-routine (keyword) (declare (ignore keyword)))
  (defun handle-period-as-initial (before) (declare (ignore before)))
  (defun convert-to-canonical-name-form (raw) (declare (ignore raw)))
  (defvar *pnf-routine* nil)
  (defvar *treat-single-Capitalized-words-as-names* nil))

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

(unless *recognize-sections-within-articles*
  (defun setup-for-typed/no-headers ())
  (defun terminate-ongoing-section (p)
    (declare (ignore p)))
  (defun finish-ongoing-paragraph (p)
    (declare (ignore p))))

