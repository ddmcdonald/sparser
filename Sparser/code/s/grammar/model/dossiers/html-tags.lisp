;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "html tags"
;;;   Module:  "model;dossiers:"
;;;  version:  September 1995

;; initiated 9/20/95

(in-package :sparser)


;; 9/22
(define-html-tag "html")


(define-markup-tag-pair 'preserve-spacing
  "pre" "/pre"
  :initiation-action 'start-preserve-spacing-section
  :termination-action 'end-preserve-spacing-section )

(defun start-preserve-spacing-section (sm-edge)
  (setq *specific-closing-markup-tag-word-being-scanned-for*
        (word-named "pre"))
  (setq *position-closing-markup-scan-starts-from*
        (pos-edge-starts-at sm-edge))
  (setq *markup-tag-being-scanned-for* (edge-referent sm-edge))
  (break "check args")
  (switch-to-embedded-parsing-protocol :scan-for-closing-markup-tag))

(defun end-preserve-spacing-section (sm-edge)
  (break))
