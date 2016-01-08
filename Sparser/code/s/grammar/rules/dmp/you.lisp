;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "you"
;;;   Module:  "grammar;rules:DM&P:"
;;;  version:  November 1994

;; initiated 11/15/94

(in-package :sparser)

;;;---------
;;; subject
;;;---------

(define-category  you-do
  :specializes event
  :instantiates self
  :binds ((action))
  :index (:key action))


;;--- form rules

(def-form-rule  ( pronoun/second  verb+object )   ;; full vp
  :form  s
  :referent (:function dm&p/note-you+vp right-edge)
  :new-category  subj+vp-segment )


;;--- function that does the construction

(defun dm&p/Note-you+vp (vp-segment)
  ;; has to return the referent of the clause edge
  (let ((vp-object
         (cond ((itype vp-segment 'segment)
                (referent-of-segment vp-segment))
               ((itype vp-segment 'verb-object)
                vp-segment)
               (t
                (break "New type of individual as vp complement ~
                        of 'you'~%  ~A~%" vp-segment))))
        obj )
    (unless vp-object
      (break "Couldn't extract an individual from the vp ~
              complement:~%  ~A~%" vp-segment))

    (setq obj
          ;; this looks for an existing individual before
          ;; making a new one
          (define-individual 'you-do
            :action vp-object))
    obj ))







;;;------------
;;; possessive
;;;------------

#| ?? do we really want an edge, or does a treatment as a separable
   prefix suffice ??    -- 11/15 not doing anything for now

;; e.g. "your computer", "your attention"

(def-form-rule  ( pronoun/second  noun )
  :form np
  :referent (:daughter right-edge))

            (:instantiate-individual pair-term  <-- makes permanent rule
                :with (head right-edge
                       other left-edge)))  |#

