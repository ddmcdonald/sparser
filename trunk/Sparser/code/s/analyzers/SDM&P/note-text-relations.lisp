;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "note-text-relations"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2013

;; Initiated 3/9/13

(in-package :sparser)

;;;-------------------------------
;;; wire it into segment-finished
;;;-------------------------------

;;  (do-note-text-relations-in-segment)
(defun do-note-text-relations-in-segment ()
  (setq *after-action-on-segments* 'note-text-relations-in-segment))

;;;--------
;;; driver
;;;--------

(defun note-text-relations-in-segment (coverage)
  (format-words-in-segment) ;;(break "TR: coverage = ~a" coverage)
  (let ((length (segment-length))
        (head-word (head-word-of-segment)))
    (note 'head head-word)
    (case coverage
      (:one-edge-over-entire-segment
       (let* ((edge (edge-over-segment))
              (form (edge-form edge)))
         (push-debug `(,edge ,form ,length))
         (break "stub")))
      (:all-contiguous-edges (break ":all-contiguous-edges"))
      (:no-edges (break ":no-edges"))
      (:discontinuous-edges (break "discontinuous"))
      (:some-adjacent-edges (break "some adjacente"))
      (otherwise
       (break "Unanticipated value for segment coverage: ~A"
              coverage)))

    (normal-segment-finished-options coverage)))

