;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sweep"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/30/14. To hold the new class of containers to support
;; analysis and discourse structure to go with the new forest protocol

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun sweep-sentence-treetops (sentence start-pos end-pos)
  "Scan the treetops left to right"
  (declare (special tt prior-tt))
  (tr :sweep-sentence-treetops start-pos end-pos)
  (push-debug `(,sentence ,start-pos ,end-pos))
  (clear-sweep-sentence-tt-state-vars)
  (let ((rightmost-pos start-pos)
        (layout (make-sentence-layout sentence))
        form  pos-after  multiple?  )
    (loop
      (multiple-value-setq (tt pos-after multiple?)
        (next-treetop/rightward rightmost-pos))
      (when multiple?
        (setq tt (elt (ev-edge-vector tt)
                      (1- (ev-number-of-edges tt)))))
      (tr :next-tt-swept tt pos-after)

      (when (edge-p tt)
        (setq form (edge-form tt)))
      (unless form
        (if (eq (edge-category tt) 
                *the-punctuation-period*)
          ;; we're done
          (return)
          (else (push-debug `(,tt ,pos-after))
                (error "No form value on ~a" tt))))

      (case (cat-symbol form)
        ;; this is a gross control structure, but it lets
        ;; us play while sorting out what will be better
        ((category::np
          category::common-noun) ;; over guanie... ///not elevated
         (cond ((null prior-tt)
                (set-subject tt))
               (main-verb-seen?
                (push-loose-np tt))))
        (category::vg
         (if main-verb-seen?
           ;;/// need to modify verb builder and set of form categories
           ;; to retain the participlial nature of, e.g. "inhibiting"
           (push-post-mvs-verbs tt)
           (set-main-verb tt)))
        (category::preposition
         (push-preposition tt))
        (category::conjunction
         (push-conjunction tt))

        (otherwise
         (push-debug `(,tt ,form))
         (break "Next case in sweep.~
               ~% tt = ~a~
               ~% form = ~a"
                tt form)))

      (when (eq pos-after end-pos)
        (return)) ;; leave the loop

      (setq rightmost-pos pos-after)
      (setq prior-tt tt))

    layout))


