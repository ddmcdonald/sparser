;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "spatial prepositions"
;;;   Module:  "model;dossiers:"
;;;  version:  November 2016

;; initiated 11/18/16

(in-package :sparser)

#|/// Where/how do we do we state facts about opositions (e.g. 
 the two ends of a row) or geometry (e.g. of the sides of a block? |#

(defun define-dependent-location (string &key multiple)
  "See places/operators/dependent-location.lisp"
  (let ((*inihibit-constructing-plural* (not multiple)))
    (declare (special *inihibit-constructing-plural*))
    (define-individual (if multiple
                         'multiple-dependent-location
                         'dependent-location)
        :name string)))

(define-dependent-location "top")
(define-dependent-location "bottom")

(define-dependent-location "end" :multiple t) ;; rows have two ends
(define-dependent-location "middle")

(define-dependent-location "side" :multiple t) ;; place for count?

(define-dependent-location "surface")

