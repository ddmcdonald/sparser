;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved.
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved.
;;; Copyright (c) 2023 David D. McDonald  -- all rights reserved
;;;
;;;     File: mumble.asd
;;;   Module: /sparser/Mumble/
;;;  Version: August 2023

;; This is invoked as one of the modules that the Sparser system
;; depends on. The aspects of Mumble that depend on Sparser being
;; loaded are packaged in the defsystem :mumble/sparser -- see the
;; description at the end of mumble/documentation/overview.lisp.

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

               (:file "interface/interface")

               (:file "interpreters/top-level")
               (:file "interpreters/realize")
               (:file "interpreters/instantiate-phrase")
               (:file "interpreters/phrase-structure-execution")
               (:file "interpreters/text-output")
               (:file "interpreters/attachment")
               (:file "interpreters/position-path-operations")
               (:file "interpreters/state")
               (:file "interpreters/discourse-reference")

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
               (:file "grammar/morphology")
               (:file "grammar/word-stream-actions")

               (:file "derivation-trees/make")
               (:file "derivation-trees/builders")
               (:file "derivation-trees/operators")
               (:file "derivation-trees/printers")

               (:file "interface/bundles/accessory-types")
               (:file "interface/bundles/accessory-processing")
               (:file "interface/bundles/bundle-types")
               (:file "interface/bundles/bundle-drivers")
               (:file "interface/bundles/constructing-bundles")

               ;; These were thrown together for SELF and now feel like a short-cut that should
               ;; be removed in favor of derivation trees. Types file has pieces to re-use. And/or are
               ;; called by code that remains underconsideration but might go away
               #+(or) (:file "interface/derivations/types")
               #+(or) (:file "interface/derivations/rspec-interpretation")

               (:file "interface/bundles/specification-operators")
               #+(or) (:file "interface/bundles/operators-over-specifications") ;; deprecated
               (:file "interface/bundles/specification-templates")

               ;; Unused but retained in the code-base for reference
               #+(or) (:file "interface/bundles/tree-families")
               #+(or) (:file "interface/bundles/single-choices")
               #+(or) (:file "interface/bundles/curried-tree-families")

               ;; Postprocesses everything and sets the flag to nil.
               (:file "loader/load-final"))
  :perform (load-op :after (o c) (pushnew :mumble *features*))
  :in-order-to ((test-op (test-op :mumble/tests))))

;;--- Sparser-dependent operations

(defsystem :mumble/sparser
  :description "Mumble components that depend on Sparser."
  :depends-on (:mumble :sparser)
  :components ((:file "grammar/numbers")
               (:file "derivation-trees/interface")
               #+(or) (:file "derivation-trees/conversions")
               #+(or) (:file "interface/tsro/gofers")
               #+(or) (:file "interface/tsro/map-translations")
               (:file "interface/sparser/binding-helpers")
               (:file "interface/sparser/binding-centric")))

;;--- tests

(defun do-mumble-tests (&aux (*package* (find-package :mumble)))
  "Run the Mumble regression tests in the MUMBLE package."
  (uiop:symbol-call :rt :do-tests))

(defsystem :mumble/tests
  :description "Tests Mumble's base level mechanics. Creating different
    types of objects to make sure they are still functioning. Also exercises
    the basic aspects of the grammar using only the basic machinery."
  :depends-on (:mumble)
  :serial t
  :components ((:file "../test/rt")
               (:file "../test/mumble"))
  :perform (test-op (o c) (do-mumble-tests)))


(defsystem :mumble/biology
  :description "Tests standard reference sentences for the biological domain."
  :depends-on (:sparser/biology :mumble/sparser)
  :components ((:file "interface/sparser/binding-bio-helpers"))
  :in-order-to ((test-op (test-op :mumble/biology-tests))))

(defsystem :mumble/biology-tests
  :depends-on (:mumble/biology :mumble/tests)
  :components ((:file "../test/mumble-biology"))
  :perform (test-op (o c) (do-mumble-tests)))


(defsystem :mumble/blocks-world
  :description "Tests sentences and relationships for the blocks world."
  :depends-on (:sparser/blocks-world :mumble/sparser)
  :in-order-to ((test-op (test-op :mumble/blocks-world-tests))))

(defsystem :mumble/blocks-world-tests
  :depends-on (:mumble/tests)
  :components ((:file "../test/mumble-blocks-world"))
  :perform (test-op (o c) (do-mumble-tests)))
