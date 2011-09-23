;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; $Id$
;;;
;;;     File:  "relational"
;;;   Module:  "model;core:places:"
;;;  version:  July 2011

;; Extracted from object file 7/21/11

(in-package :sparser)

;;;----------------------
;;; location description
;;;----------------------

(define-category  location-description    ;; e.g. "international", "local"
  :instantiates  self
  :specializes   location
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))

#| There will also be location-descriptions that are relative to some
   other location, e.g. "foreign", "overseas", and these will want a
   specialization of this category that adds that 'reference' location. |#


(defun define-location-description (string)
  (define-individual 'location-description
    :name string))

(define-autodef-data 'location-description
  :form 'define-location-description
  :dossier "dossiers;location descriptions"
  :display-string "descriptions of locations"
  :module *location*
  :description "A word that names a generic location"
  :examples "\"international\", \"local\"" )


;; 7/21/11 -- grep show this is never used. 
;;   And the dossier [location descriptions] has an ancient rule
;;   in it that's commented out and looks incomplete
;;   Rules for "-wide" and "=based" are in the (not loaded, OBE) file
;;   /places/geo/rules2.lisp

(define-category  location-phrase       ;; "city-wide", "New York-based"
  :instantiates location-description
  :specializes location-description
  :binds ((place))
  :index (:key place))


