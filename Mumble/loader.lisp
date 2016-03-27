;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2006-2009 BBNT Solutions LLC.
;;; Copyright (c) 2010-2015 David D. McDonald

;; tweaked 3/30/07 to use shared utility area. 4/2 Gave up on pulling the
;; two utility files from a separate directory once that directory got other
;; routines, because the conditional dependency on the Mumble package was
;; too much to pull off in the time available.
;; 9/16/09 Added loader for derivation-trees. 9/18 refactored that
;; 12/9/10 Added option for location of mumble and draws on assumptions
;;  about being part of a larger system. Put stars around the location global
;;  12/22/10 Folded in derivation-tree files eliminating their loader.
;; 3/23/11 Fixing CCL nits.  3/28 Added lost numbers file. 11/20/13 builders.
;; 12/2/13 Moved builders out to ugly spot in toplevel loader
;; 11/25/15 Commented out every file that referenced Sparser especially since
;;  it's not clear that we'd want to continue doing things the way that
;;  they would have had they been finished.

(in-package :cl-user)

;;//// Replace with ASDF a some point. This neither deep nor highly conditional
;; and it would make the dependencies more explicit

(defparameter *mumble-location*
  (cond
    ((boundp '*nlp-home*) 
     (ddm-util:string-append *nlp-home* "Mumble/"))
    (t (namestring
        (make-pathname :directory (pathname-directory *load-truename*)
                       :device (pathname-device *load-truename*))))))

(load (concatenate 'string *mumble-location* "design.lisp")) ;; has package definition

(load (concatenate 'string *mumble-location* "loader/load-initial.lisp"))
;;(load (concatenate 'string *mumble-location* "util/lispm.lisp")) ;; replaced by ddm-util

(load (concatenate 'string *mumble-location* "types/defining-types.lisp"))
(load (concatenate 'string *mumble-location* "types/creating-objects.lisp"))
(load (concatenate 'string *mumble-location* "types/postprocessing.lisp"))

(load (concatenate 'string *mumble-location* "derivation-trees/types.lisp"))

(load (concatenate 'string *mumble-location* "objects/all-the-object-types.lisp"))
(load (concatenate 'string *mumble-location* "objects/postprocess-objects.lisp"))
(load (concatenate 'string *mumble-location* "objects/postprocessing-order.lisp"))
(load (concatenate 'string *mumble-location* "objects/short-printers.lisp"))

(load (concatenate 'string *mumble-location* "util/tracker-stub"))

(load (concatenate 'string *mumble-location* "interface/bundles/standalone/defining-demos.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/standalone/specification-language.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/standalone/rspec-table.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/standalone/interface-utilities.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/standalone/demos-to-use.lisp"))

(load (concatenate 'string *mumble-location* "interface/browser/interface-to-text-output.lisp"))
(load (concatenate 'string *mumble-location* "interface/browser/glass-tty-menus.lisp"))
#+mcl (load (concatenate 'string *mumble-location* "interface/browser.lisp/mcl-output-window.lisp"))


(load (concatenate 'string *mumble-location* "interpreters/top-level.lisp"))
(load (concatenate 'string *mumble-location* "interpreters/realize.lisp"))
(load (concatenate 'string *mumble-location* "interpreters/instantiate-phrase.lisp"))
(load (concatenate 'string *mumble-location* "interpreters/phrase-structure-execution.lisp"))
(load (concatenate 'string *mumble-location* "interpreters/text-output.lisp"))
(load (concatenate 'string *mumble-location* "interpreters/attachment.lisp"))
(load (concatenate 'string *mumble-location* "interpreters/position-path-operations.lisp"))
(load (concatenate 'string *mumble-location* "interpreters/state.lisp"))

;; sets *loading-whole-system* to t to avoid incremental postprocessing
(load (concatenate 'string *mumble-location* "loader/load-midpoint.lisp"))

(load (concatenate 'string *mumble-location* "grammar/attachment-points.lisp"))
(load (concatenate 'string *mumble-location* "grammar/phrases.lisp"))
(load (concatenate 'string *mumble-location* "grammar/labels.lisp"))
(load (concatenate 'string *mumble-location* "grammar/characteristics.lisp"))
(load (concatenate 'string *mumble-location* "grammar/transformations.lisp"))
(load (concatenate 'string *mumble-location* "grammar/words.lisp"))
(load (concatenate 'string *mumble-location* "grammar/pronouns.lisp"))
(load (concatenate 'string *mumble-location* "grammar/tense-markers.lisp"))
(load (concatenate 'string *mumble-location* "grammar/traces.lisp"))
(load (concatenate 'string *mumble-location* "grammar/punctuation-marks.lisp"))
(load (concatenate 'string *mumble-location* "grammar/morphology.lisp")) ;; ok up to here
(load (concatenate 'string *mumble-location* "grammar/word-stream-actions.lisp"))
;;  References Sparser
;;(load (concatenate 'string *mumble-location* "grammar/numbers.lisp"))

(load (concatenate 'string *mumble-location* "derivation-trees/make.lisp"))
(load (concatenate 'string *mumble-location* "derivation-trees/builders.lisp"))
(load (concatenate 'string *mumble-location* "derivation-trees/operators.lisp"))
(when (find-package :sparser)
  (load (concatenate 'string *mumble-location* "derivation-trees/gofers.lisp")))
;; Sparser-dependent and needs rethinking anyway
;(load (concatenate 'string *mumble-location* "derivation-trees/conversions.lisp"))

(load (concatenate 'string *mumble-location* "interface/bundles/accessory-types.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/accessory-processing.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/bundle-types.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/bundle-drivers.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/constructing-bundles.lisp"))

;;  These reference Sparser, and need massive re-org. / consolidation
;;(load (concatenate 'string *mumble-location* "interface/tsro/gofers.lisp"))
;;(load (concatenate 'string *mumble-location* "interface/tsro/map-translations.lisp"))

;; These were thrown together for SELF and now feel like a short-cut that should
;; be removed in favor of derivation trees. Types file has pieces to re-use. And/or are
;; called by code that remains underconsideration but might go away
(load (concatenate 'string *mumble-location* "interface/derivations/types.lisp"))
;(load (concatenate 'string *mumble-location* "interface/derivations/rspec-interpretation.lisp"))
(load (concatenate 'string *mumble-location* "interface/derivations/discourse-reference.lisp"))

(load (concatenate 'string *mumble-location* "interface/bundles/specification-operators.lisp"))
;; deprecated (load (concatenate 'string *mumble-location* "interface/bundles/operators-over-specifications.lisp"))
(load (concatenate 'string *mumble-location* "interface/bundles/specification-templates.lisp"))

;(load (concatenate 'string *mumble-location* "interface/bundles/tree-families.lisp"))
;(load (concatenate 'string *mumble-location* "interface/bundles/single-choices.lisp"))
;(load (concatenate 'string *mumble-location* "interface/bundles/curried-tree-families.lisp"))

;; Postprocesses everything and sets the flag to nil.
(load (concatenate 'string *mumble-location* "loader/load-final.lisp"))
