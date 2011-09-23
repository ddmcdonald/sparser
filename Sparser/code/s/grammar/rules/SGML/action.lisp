;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "action"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  0.2 January 1996

;; initiated 10/21/91.  Put in traces 4/24/92, improved them 7/13
;; 0.1 (7/13/92 v2.2) Changed the action tag to :sgml-tag
;; 0.2 (12/8/93 v2.3) moved the pushing and poping of the tags to this
;;      level of operation rather than the individual actions.
;;     (5/5) added tr traces   (7/27) added pause-check
;;     (9/18/95) futzed with Update-section-marker-edge to deal with paragraphs
;;      though it's unclear if I'm consistent with the intended protocols.
;; 0.3 (1/1/96) blocked pushing the tag on the stack if it's a paragraph
;;      and the 'para's aren't paired' flag is up. Tweeked that 1/8.

(in-package :sparser)

;;;-------
;;; hooks
;;;-------

(define-completion-action category::SGML-tag/start
                          :sgml-tag
                          'start-SGML-section )

(define-completion-action category::SGML-tag/end
                          :sgml-tag
                          'end-SGML-section )

;;;---------
;;; drivers
;;;---------

(defun start-SGML-section (edge)
  (let ((SGML-tag (edge-referent edge)))
    (unless SGML-tag
      (break "Threading bug: there should have been a section-~
              marker in the~% referent field of ~A" edge))

    (tr :completed-sgml-start sgml-tag)

    (unless (and *paragraph-is-not-paired-sgml*
                 (or (eq sgml-tag (section-marker-named "paragraph-start"))
                     (eq sgml-tag (section-marker-named "p"))))
      ;(format t "~&~%pushing ~A on section-stack~%"
      ;        sgml-tag)
      (push-on-pending-left-opener SGML-tag edge))

    (let ((action (sm-initiation-action SGML-tag))
          result )
      (when action
        (tr :sgml-start-fn action)
        (setq result (funcall action edge))
        (update-section-marker-edge edge result)))))


(defun end-SGML-section (edge)
  (let ((SGML-tag (edge-referent edge)))
    (unless SGML-tag
      (break "Threading bug: there should have been a section-~
              marker in the~% referent field of ~A" edge))

    (end-sgml-section/sm sgml-tag edge)))

(defun end-SGML-section/sm (sgml-tag edge)

    (tr :completed-sgml-end sgml-tag)

    (multiple-value-bind (last-tag leading-edge)
                         (pop-off-top-pending-left-opener)
      (unless (eq last-tag SGML-tag)
        (break "Threading bug?   Expected the top of the pending object ~
                stack to be~%   the sgml tag ~A, but it's ~A"
               SGML-tag last-tag))

      (let ((action (sm-termination-action SGML-tag)))
        (when action
          (tr :sgml-termination-fn action)
          (funcall action edge leading-edge))

        
        (synchronize/should-we-pause? sgml-tag
                                      leading-edge edge)

        sgml-tag )))




;;;-------------------------------
;;; switching the edge's referent
;;;-------------------------------

(defun update-section-marker-edge (edge result)
  (when (individual-p result)
    ;; typically a section-object, but no point in restricting it
    ;; But if it is, we should probably check that we're in sync
    (when (and (section-marker-p (edge-referent edge))
               (itypep result 'section-object))
      (unless (eq (edge-referent edge)
                  (value-of 'type result))
        (unless (itypep result 'paragraph)
          (break "result and edge's referent aren't in sync"))))

    (setf (edge-referent edge) result)))

