;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved.
;;;
;;;      File: "session"
;;;    Module: "init;"
;;;   Version: January 2017

(in-package :sparser)

;; Finalize the load.
(when *load-the-grammar*
  (when *include-model-facilities*
    (load-delayed-dossiers)

    ;; This call announces the # of individuals in all the defined categories
    ;; that have instances (see *referential-categories*)
    (declare-all-existing-individuals-permanent)))

;; Final session setup.
(setup-session-globals/parser)
(setup-session-globals/grammar)

(when cl-user::location-of-text-corpora
  (push :full-corpus *features*))

;; Finally, print a salutation.
(format t "~&Welcome to the Sparser natural language analysis system.~
           ~%Copyright (c) David D. McDonald 1991-2005, 2010-2017.~
           ~%Distributed under the Eclipse Public License.~
           ~%~
           ~%Type (in-package :sparser) to use Sparser symbols directly.~
           ~%~%")
