;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "globals"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  0.1 August 1995

;; broken out of [define-rule] 4/27.  Added to a little ..6/14
;; 0.1 (8/28) changed the name of the dossier-file symbol

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defparameter *rule-defining-window* nil
  "This will be bound to either the schema selection window or
   the rule populating window depending on the stage of the process")

(defparameter *rdt/input-field-for-selected-edge* nil
  "Managed by the radio buttons in the rule-population window.")


(defparameter *rdt/schema-items-in-table* nil
  "The list of items in the table at any given moment. It starts
   as the list of major categories as populated when postprocessing
   the exploded tree families.")


(defparameter *rdt/selected-schema* nil)

(defparameter *rdt/selected-schema-case* nil)

(defparameter *rdt/case-descriptors* nil
  "Points to the descriptors on the selected schema case for ease
   of access by routines that aren't directly threaded to the
   case itself.")

(defparameter *rdt/schema-type* nil
  "Identifies the pattern of syntactic and semantic items that
   need to be collected via the tableau and controls how the
   cfrs and saved output are written. It summarizes information
   in the descriptors.")


(defparameter *rdt/schema-cases-done* nil)

(defparameter *rdt/schema-cases-remaining* nil)

(defparameter *rdt/nailed-down-fields* nil
  "Holds pointers to the text fields (the window objects) that 
   are not to be changed.")


(defparameter *rdt/reference-category* nil
  "The category from which the slot values of the tableau can be
   automatically taken.")



(defparameter *rdt/mapping* nil
  "Constructed as the schema case is decoded and in reaction to
   what the user types in the rewrite-rule tableau. Mimics the
   'mapping' in the realization fields of category definitions.
   Used to create the run-time rule and saved form.")

(defparameter *rdt/mapping-schema* nil
  "Holds the schema's substitution variables and their corresponding
   globals. Populated when the schema-case is decoded and used
   when the rule is constructed and saved.")

(defparameter *predefined-partial-rdt-mapping* nil
  "Setup by a caller, usually from a sublanguage, when some of
   the values of the labels are the same for all instances.
   Establishes the initial value of *rdt/mapping* when the
   state of the rule population widets are initialized.")


(defparameter *rdt/rules-defined* nil
  "Set in Write-cfr-from-rdt-tableau-values to the list of cfrs
   created by applying the cases of the schema to the mapping.")


(unless (boundp '*default-dossier-file*)
  (defparameter *default-dossier-file*
         (concatenate 'string
                      cl-user::location-of-sparser-directory
                      "code:s:grammar:model:dossiers:new rules")
               
    "A default location (within the Sparser directory) for the rules"))

