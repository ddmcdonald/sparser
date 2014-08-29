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
  :specializes nil
  :instantiates self
  :binds ((name :primitive word)
          (pathogen-type pathogen-type)) ;e.g. h5n1 is a virus, ecoli is a bacteria
          ;;(vector :primitive word) e.g. avian flu is spread by infected birds
  :index (:permanent :key name)
  :realization (:common-noun name)) 

;;;-----------
;;; citations
;;;-----------

;;"the bird flu virus h 5 n 1" from 1 Aljazeera_Jan-18.txt

;;"the potentially fatal MERS virus" from Saudia Arabia MERS article


;;;------
;;; form
;;;------

(defun define-pathogen (string)
  (let ((name (define-or-find-individual
                  'pathogen :name string)))
        name))


;;;------------
;;; the instances
;;;------------

;;(define-pathogen "h5n1")

;;function that iterates over all possible combinations of bird flu
;;x, y <= 9
#+ignore(defun define-hXnY ()
  (loop for i from 1 below 10 do
    (loop for j from 1 below 10 do
      (define-pathogen (concatenate 'string "h" (write-to-string i) "n" (write-to-string j))))))
;(define-hXnY)

;;from Saudia Arabia article - MERS is Middle Eastern Respiratory Syndrome
(define-pathogen "MERS")

;;from various disease based articles from New York Times -
(define-pathogen "ebola")


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