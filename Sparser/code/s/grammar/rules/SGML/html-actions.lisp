;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "html actions"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  September 1995

;; initiated 9/20/95

(in-package :sparser)


(defun do-html-tag (tag-edge
                    pos-before-open pos-after-close
                    pos-after-open pos-before-close 
                    layout )

  ;; called from Do-paired-punctuation-interior via 
  ;; the :angle-brackets hook.  This case handles both the first of
  ;; a paired tag and empty tags.

  (let ((category (edge-referent tag-edge)))

    (let ((i (define-or-find-individual category
               :start-index (pos-token-index (pos-edge-starts-at tag-edge)))))

      (bind-variable 'start-index (pos-token-index pos-before-open) i)
      (bind-variable 'interior-start (pos-token-index pos-after-close) i)

      (unless (eq layout :single-span)
        (break "Stub: there are attributes to be collected"))

      (when (value-of 'start-action i)
        (break "Stub: run start-action of html tag"))

      (let ((edge (make-edge-over-long-span 
                   pos-before-open
                   pos-after-close
                   category
                   :rule :html-tag
                   :form (edge-form tag-edge) ;; section-marker
                   :referent i )))

        (when (itypep i 'paired-html-tag)
          (push-on-pending-left-opener i edge))

        edge ))))



(defun do-html-tag/end (close-edge
                        pos-before-open pos-after-close
                        pos-after-open pos-before-close 
                        layout )

  ;; called from Do-paired-punctuation-interior via 
  ;; the :angle-brackets hook.  This case handles both the end case
  ;; of a paired tag.

  (let ((category (edge-referent close-edge)))
    (multiple-value-bind (i open-edge)
                         (pop-off-top-pending-left-opener)

      (unless (and (typep i 'individual)
                   (itypep i category))
        (break "Unbalanced document? The most recent open tag~
                ~%is a ~A, but we've just closed~
                ~%a ~A tag.~%" category i)
        (return-from Do-html-tag/end nil))

      (bind-variable 'end-index (pos-token-index pos-after-close) i)
      (bind-variable 'interior-end (pos-token-index pos-before-open) i)

      (when (value-of 'end-action i)
        (break "Stub: run end-action of html tag"))

      )))

