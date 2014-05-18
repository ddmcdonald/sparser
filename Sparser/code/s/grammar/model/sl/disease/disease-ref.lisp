;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "disease-ref"
;;;    Module:   "sl;disease:"
;;;   version:   December 2013

;;an analogous file to model;core;pronouns;ref4 for disease categories
;;manages anaphor like instances of pathogen and cases




(in-package :sparser)

;;;------------------------------------------
;;; pathogen: pathogen-type anaphor
;;;------------------------------------------

;;a cargo cult of the anaphora resolution in model;core;pronouns;ref4
;;should work for both pathogen-type and "it"
;;right now links back a pathogen-type to the most recently mentioned pathogen

(define-completion-action  category::pathogen-type ;; label
                           :pathogen-type                    ;; tag
                           'seek-pathogen-for-pathogen-type)   ;; function


;;this works but it messes up the company anaphora with "it"
#|(define-completion-action  category::pronoun/inanimate  ;; label
                           :pronoun                     ;; tag
                           'seek-pathogen-for-pathogen-type)   ;; function|#

(defun seek-pathogen-for-pathogen-type (pt-edge)
    (respan-pn-with-most-recent-pathogen-anaphor pt-edge))


(defun respan-pn-with-most-recent-pathogen-anaphor (pt-edge)
  (let ((pathogen-entries
         (discourse-entry (category-named 'pathogen)))
        (pt-form (edge-form pt-edge)))

    (let ((pathogen
           (if (cdr pathogen-entries) ;; more than one entry
             (most-recently-mentioned pathogen-entries)
             (when pathogen-entries
               ;;else it's empty so we don't respan the edge
               (first (first pathogen-entries))))))

      ;;/// take over the edge
      (when pathogen
        (let ((edge
               (make-new-edge-over-pronoun
                pt-edge  ;; edge to respan
                (category-for-pathogen-pt-respan)   ;; new category
                pt-form  ;; form
                pathogen ;; referent
                )))

          edge )))))


(defun category-for-pathogen-pt-respan ()
  (category-named 'pathogen))
