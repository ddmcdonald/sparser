;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "referent"
;;;   Module:  "model;core:names:proper:fsa:"
;;;  version:  1.0  April 1991

(in-package :CTI-source)

;;;--------------------------------------------------------
;;; referents for cap. seqs. given their assigned category
;;;--------------------------------------------------------

(defun establish-referent-of-capitalized-sequence (edge
                                                   category
                                                   daughters)
  (if category
    (ecase (cat-symbol category)
      (category::person
       (establish-referent-of-a-person daughters edge))
      (category::company
       (establish-referent-of-a-company daughters edge))
      (category::name (record-name daughters edge)))
    (record-name daughters edge)))

