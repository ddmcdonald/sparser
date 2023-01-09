;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016-2022 SIFT LLC. All Rights Reserved.
;;;
;;;      File: "session"
;;;    Module: "init;"
;;;   Version: January 2023

(in-package :sparser)

;; Finalize the load.
(when *load-the-grammar*
  (when *include-model-facilities*
    (load-delayed-dossiers)

    ;; This call announces the # of individuals in all the defined categories
    ;; that have instances (see *referential-categories*)
    (postprocess-grammar-indexes)

    ;;---------- the very last thing to do ----------
    (declare-all-existing-individuals-permanent)))

;; Final session setup.
(setup-session-globals/parser)
(setup-session-globals/grammar)

(stop-timer '*time-to-load-everything*)
(report-time-to-load-system)

(when cl-user::location-of-text-corpora
  (push :full-corpus *features*))

(eval-when (:load-toplevel :execute)
  (setq *sparser-loaded* t))

;; Finally, print a salutation to the REPL.
(format t "~%Welcome to the Sparser natural language analysis system.~
           ~%Copyright (c) David D. McDonald 1991-2005,2010-2023.~
           ~%Distributed under the Eclipse Public License.~
           ~%~
           ~%Type (in-package :sparser) to use Sparser symbols directly.~
           ~%~%")
