;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "defining other words"
;;;    Module:  "interface;grammar:"
;;;   version:  April 1995

;; initiated 4/12/95

(in-package :sparser)


;;;------------------------------------------
;;; routines used by the AutoDefine facility
;;;------------------------------------------
;;   These are called from Save-word-definition after the dossier has 
;; been opened and set to the stream and the date information has been
;; written.

(defun save-semantics-free-adjective (adj stream)
  (format stream "~&(define-adjective \"~A\")~%"
          (etypecase adj
            (word (word-pname adj))
            (polyword (pw-pname adj)))))


(defun save-semantics-free-adverb (adv stream)
  (format stream "~&(define-adverb \"~A\")~%"
          (etypecase adv
            (word (word-pname adv))
            (polyword (pw-pname adv)))))

