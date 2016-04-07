;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved.
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(defsystem :mumble
  :description "The Mumble-86 natural language generation system."
  :depends-on (:ddm-util)
  :serial t
  :components ((:file "package")

               (:file "loader/load-initial")

               (:file "types/defining-types")
               (:file "types/postprocessing")
               (:file "types/creating-objects")

               (:file "derivation-trees/types")

               (:file "objects/all-the-object-types")
               (:file "objects/postprocess-objects")
               (:file "objects/postprocessing-order")
               (:file "objects/short-printers")

               (:file "util/tracker-stub")

               (:file "interface/bundles/standalone/defining-demos")
               (:file "interface/bundles/standalone/specification-language")
               (:file "interface/bundles/standalone/rspec-table")
               (:file "interface/bundles/standalone/interface-utilities")
               (:file "interface/bundles/standalone/demos-to-use")

               (:file "interface/browser/interface-to-text-output")
               (:file "interface/browser/glass-tty-menus")
               #+mcl (:file "interface/browser/mcl-output-window")

               (:file "interpreters/top-level")
               (:file "interpreters/realize")
               (:file "interpreters/instantiate-phrase")
               (:file "interpreters/phrase-structure-execution")
               (:file "interpreters/text-output")
               (:file "interpreters/attachment")
               (:file "interpreters/position-path-operations")
               (:file "interpreters/state")

               ;; sets *loading-whole-system* to t to avoid incremental postprocessing
               (:file "loader/load-midpoint")

               (:file "grammar/attachment-points")
               (:file "grammar/phrases")
               (:file "grammar/labels")
               (:file "grammar/characteristics")
               (:file "grammar/transformations")
               (:file "grammar/words")
               (:file "grammar/pronouns")
               (:file "grammar/tense-markers")
               (:file "grammar/traces")
               (:file "grammar/punctuation-marks")
               (:file "grammar/morphology") ;; ok up to here
               (:file "grammar/word-stream-actions")

               (:file "derivation-trees/make")
               (:file "derivation-trees/builders")
               (:file "derivation-trees/operators")

               (:file "interface/bundles/accessory-types")
               (:file "interface/bundles/accessory-processing")
               (:file "interface/bundles/bundle-types")
               (:file "interface/bundles/bundle-drivers")
               (:file "interface/bundles/constructing-bundles")

               ;; These were thrown together for SELF and now feel like a short-cut that should
               ;; be removed in favor of derivation trees. Types file has pieces to re-use. And/or are
               ;; called by code that remains underconsideration but might go away
               (:file "interface/derivations/types")
               #+(or) (:file "interface/derivations/rspec-interpretation")

               (:file "interface/bundles/specification-operators")
               #+(or) (:file "interface/bundles/operators-over-specifications") ;; deprecated
               (:file "interface/bundles/specification-templates")

               ;; Unused? Deprecated?
               #+(or) (:file "interface/bundles/tree-families")
               #+(or) (:file "interface/bundles/single-choices")
               #+(or) (:file "interface/bundles/curried-tree-families")

               ;; Postprocesses everything and sets the flag to nil.
               (:file "loader/load-final"))
  :perform (load-op :after (o c) (pushnew :mumble *features*))
  :in-order-to ((test-op (test-op :mumble-tests))))

(defsystem :mumble/sparser
  :description "Mumble components that depend on Sparser."
  :depends-on (:mumble :sparser)
  :components ((:file "grammar/numbers")
               (:file "interface/bundles/bundle-drivers") ;; reload to pick up Sparser specifics
               #+(or) (:file "derivation-trees/conversions")
               #+(or) (:file "interface/tsro/gofers")
               #+(or) (:file "interface/tsro/map-translations")))

(defsystem :mumble-tests
  :serial t
  :depends-on (:mumble)
  :components ((:file "../test/rt")
               (:file "../test/mumble"))
  :perform (test-op (o c) (uiop:symbol-call :rt :do-tests)))
