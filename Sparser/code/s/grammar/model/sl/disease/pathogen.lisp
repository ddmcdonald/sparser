;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013-2014  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "pathogen"
;;;    Module:   "sl;disease:"
;;;   version:   June 2014

;;category to represent named dieases, like bird flu.
;;I conspicuously decide not to name this file disease
;;in order to avoid confusion with the sl directory name
;;we can use this category to build up a representation for disease outbreaks in diease:spread
;; 6/14/14 Turned off the HxNy generator. Better to analyze that as a category
;; and recognize it while walking the contiguous word sequence

(in-package :sparser)

;;;------------
;;; the object
;;;------------

;;this is just a bare-bones representation, but works for now
(define-category pathogen
  :specializes physical-agent
  :mixins (has-uid)
  :binds ((name :primitive word)
          (pathogen-type pathogen-type)) ;e.g. h5n1 is a virus, ecoli is a bacteria
          ;;(vector :primitive word) e.g. avian flu is spread by infected birds
  :index (:permanent :key name)
  :realization (:common-noun name)) 


;;;------
;;; form
;;;------

(defun define-pathogen (string)
  (let ((name (define-or-find-individual
                  'pathogen :name string)))
        name))


;;;------------
;;; cfrs
;;;------------

;;cfr to absorb pathogen-type
;;e.g. "the h5n1 virus"
(def-cfr pathogen (pathogen pathogen-type)
  :form common-noun
  :referent (:head left-edge
             :bind (pathogen-type . right-edge)))

;;mirror of above
;;e.g. "the bird flu virus h5n1"
(def-cfr pathogen (pathogen-type pathogen)
  :form common-noun
  :referent (:head right-edge
             :bind (pathogen-type . left-edge)))
