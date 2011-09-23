;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "article"
;;;   Module:  "grammar;rules:context:"
;;;  Version:  September 1995

;; initiated 12/15/93 v2.3.  Substantial work started 8/17/94. Tweeking ..9/15
;; 5/13/95 added permanent-instances wrapper.  9/19 filled out Deallocate-current
;; -article stub and reviewed Set-the-current-article

(in-package :sparser)

;;;----------------------------------
;;; root objects for section objects
;;;----------------------------------

(define-with-all-instances-permanent
  
  (defparameter *the-root-section-marker*
    (define-section-marker "root-section"))
  
  (defparameter *root-section-object*
    (define-individual 'section-object
      :type *the-root-section-marker*
      :parent :root
      :prior-sibling :root)) )



;;;-----------------------------------------------------------------
;;; object for the unit of analysis, whatever kind of section it is
;;;-----------------------------------------------------------------

(define-category  text-under-analysis
  :instantiates nil
  :specializes nil
  :binds ((uid  :primitive (:or pathname integer))
          (file :primitive pathname)
          )
  :index (:temporary :key uid))


;;;----------------
;;; initialization
;;;----------------

#| Every run is with respect to a document, even though not every
   "document" reflects something that we would intuitively think
   of in those terms, and probably wouldn't be referenced long-term.
       Here we instantiate a document unit, but we don't index it
   because we would rarely have identified the unique identifier
   before actually starting the analysis.  Later, when the uid may
   be found a lookup, and possibly a reconciliation, can be done. |#

;(define-per-run-init-form '(set-the-current-article))

(defun set-the-current-article (source-designator)
  ;; called from Do-article
  (when *orthographic-structure*
    (let ((old-so (find-individual
                   'text-under-analysis
                   :uid (etypecase source-designator
                          (pathname source-designator)
                          (string (length source-designator))
                          (document-stream source-designator))))
          so )
      
      (if old-so
        ;; /// it ought to have been reclaimed. Do that here
        (let ((uid (has-binding old-so :variable 'uid)))
          (when uid
            (setf (indiv-binds old-so) (kcons uid nil)))
          (setf (indiv-bound-in old-so) nil)
          (setq so old-so))
        
        (else
          (setq so (make-an-individual
                  'text-under-analysis
                  :uid (etypecase source-designator
                         (pathname source-designator)
                         (document-stream source-designator)
                         (string (length source-designator)))
                  :file (when (pathnamep source-designator)
                          source-designator)))))
      
      (setq *current-text-under-analysis* so)
      (setq *ongoing-section-object* *root-section-object*)
      so )))



;;;---------------------------------------------------------
;;; cleaning up the object that represents the root section
;;;---------------------------------------------------------

;(define-per-run-init-form '(deallocate-current-article))

(defun deallocate-current-article ()
  ;; since the article individual (and other section individuals)
  ;; aren't in the discourse history we'll have to deallocate them
  ;; by hand
  (let* ((root-section *root-section-object*)
         (old-bindings (indiv-binds root-section))
         (daughter-variable (variable/category 'daughters 'section-object))
         saved-bindings )

    (dolist (b old-bindings)
      (unless (eq (binding-variable b) daughter-variable)
        (push b saved-bindings)))

    (setf (indiv-binds root-section) saved-bindings)
    root-section ))

