;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "subsidiary lambdas"
;;;   Module:  "model;core:names:companies"
;;;  version:  1.2  May 1991 

;; 1.1  (4/10 v1.8.2) Extended Find-or-make/subsidiary for the case where
;;      the subsidiary was a company rather than a composite
;; 1.2  (5/10 v1.8.5)  Extended it to handle the new design of the
;;      subsidiary grammar

(in-package :CTI-source)


(define-category  unit+company)



;;;---------
;;; globals
;;;---------

(defvar *subsidiary/name* nil)
(defvar *subsidiary/type-of-unit* nil)
(defvar *subsidiary/parent-company* nil)

(defun clear-subsidiary-variables ()
  (setq *subsidiary/name* nil
        *subsidiary/type-of-unit* nil
        *subsidiary/parent-company* nil))

;;;--------
;;; driver
;;;--------

(defun find-or-make/subsidiary (subsidiary company)
  ;; called as a "merge" routine from the Reference calculation.
  ;; After the first two forms run the subsidiary variables will
  ;; have been set and can be reasoned over.
  (clear-subsidiary-variables)

  (setq *subsidiary/parent-company*
        (if (or (typep company 'company)
                (typep company 'subsidiary))  ;; cascade of subsidiaries
          company
          (interpret-referent-as-company company)))

  (cond ((composite? subsidiary)
         (distribute-composite-subsidiary-into-variables subsidiary))
        ((typep subsidiary 'company)
         (setq *subsidiary/name*
               (company-name subsidiary)))
        ((typep subsidiary 'word)
         ;; e.g. "unit"
         (setq *subsidiary/name* subsidiary))
        ((typep subsidiary 'subsidiary)
         (when *subsidiary/parent-company*
           ;; e.g. " co's [ subsid ] "
           (when (eq (subsid-parent-company subsidiary)
                     :owner-of-subsidiary-has-to-be-inferred)
             (setf (subsid-parent-company subsidiary)
                   *subsidiary/parent-company*)))
         (return-from Find-or-make/subsidiary
                      subsidiary))
        (t
         (break/debug "New case for the subsidiary referent:~% ~A"
                      subsidiary)))

  (if (category-of-subidiary-suggests-anaphor)
    (dereference-definite-reference-to-subsidiary/globals)
    (or (find/subsidiary/globals)
        (make/subsidiary/globals))))


;;;---------------
;;; index drivers
;;;---------------

(defun find/subsidiary/globals ()
  (find/subsidiary *subsidiary/parent-company*
                   *subsidiary/name*))

(defun make/subsidiary/globals ()
  (make/subsidiary *subsidiary/name*
                   *subsidiary/type-of-unit*
                   *subsidiary/parent-company*))


;;;------------------------
;;; populating the globals
;;;------------------------

(defun distribute-composite-subsidiary-into-variables (c)
  (ecase (cat-symbol (first c))

    (category::subsidiary/name+type-of-unit
     (let ((name (second c))
           (type (third c)))
       (setq *subsidiary/type-of-unit* type)
       (setq *subsidiary/name*
             (interpret-name-as-company-name name))))

    (category::subsidiary/company+type-of-unit
     (let ((company (second c))
           (type (third c)))
       (setq *subsidiary/type-of-unit* type)
       (setq *subsidiary/name*
             (company-name company))))

    (category::unit+company
     (setq *subsidiary/parent-company* (second c)
           *subsidiary/type-of-unit*   (third c)))

    (category::compound-company-name
     ;; feb2;211 -- this is the wrong interpretation, but
     ;; that's because the rule categories have to be
     ;; subtler
     (setq *subsidiary/name* c))

    ))


;;;----------
;;; anaphors
;;;----------

(defun category-of-subidiary-suggests-anaphor ()
  (let ((left-edge  *left-edge-into-reference*)
        (right-edge *right-edge-into-reference*)
        (rule (edge-rule *parent-edge-getting-reference*)))

    ;; Handles the one established case.  Waiting on citations
    ;; before doing any generalizations.
    (eq (edge-category left-edge)
        category::ThisSubsid)))


(defun dereference-definite-reference-to-subsidiary/globals ()
  (when *topic-company*
    (the-topic-company)))

