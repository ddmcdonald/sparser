;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "article"
;;;   Module:  "objects;doc:"
;;;  Version:  December 1993

;; initiated 12/15/93 v2.3

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category/expr  document
  :instantiates nil
  :specializes nil
  :binds ((uid  :primitive string))
  :index (:temporary :key uid))


;;;----------------
;;; initialization
;;;----------------

#| Every run is with respect to a document, though not every
   "document" reflects something that we would intuitively think
   of in those terms, and probably wouldn't be referenced long-term.
       Here we instantiate a document unit, but we don't index it
   because we would rarely have identified the unique identifier
   before actually starting the analysis.  Later, when the uid may
   be found a lookup, and possibly a reconciliation, can be done. |#

(define-per-run-init-form '(set-the-current-article))


(defun set-the-current-article ()
  (setq *current-article*
        (def-individual/no-indexing 'document)))

