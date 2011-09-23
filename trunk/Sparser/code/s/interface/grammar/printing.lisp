;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "printing"
;;;    Module:  "interface;grammar:"
;;;   version:  April 1994

;; initiated 2/10/92 v2.2, adjusted 2/20 to changes in field names
;; (4/6/94) Added Describe-gmod

(in-package :sparser)


(defun describe-gmod (gm)
  ;; called when 'describe' is selected off a leaf menu on the
  ;; grammar modules menu
  (number-of-objects gm *standard-output*))


;;;----------------------------
;;; routines on single modules
;;;----------------------------

(defun pretty-print-grammar-module (gm &optional
                                       (stream *standard-output*))
  (format stream "~&~%Grammar module   ")
  (display-grammar-module gm stream)

  (format stream "~%  cf rules: ")
  (dolist (rule (gmod-cf-rules gm))
    (format stream "~A~%           " rule))

  (format stream "~%  cs rules: ")
  (dolist (rule (gmod-cs-rules gm))
    (format stream "~A~%           " rule))

  (format stream "~% non terminals: ")
  (dolist (c (gmod-non-terminals gm))
    (format stream "~A~%             " c))

  (format stream "~% object types: ")
  (dolist (c (gmod-object-types gm))
    (format stream "~A~%             " c))

  (format stream "~% words: ")
  (dolist (w (gmod-words gm))
    (princ-word w stream)
    (format stream " "))

  (format stream "~% polywords: ")
  (dolist (p (gmod-polywords gm))
    (princ-word p stream)
    (format stream " "))

  (format stream "~% files: ")
  (dolist (f (gmod-files gm))
    (format stream "~A~%        " f))

  gm )


(defun number-of-objects (gm &optional
                              (stream *standard-output*))
  (format stream "~%module: ")
  (display-grammar-module gm stream)
  (format stream "~% ~A context free rules" (length (gmod-cf-rules gm)))
  (format stream "~% ~A context sensitive rules" (length (gmod-cs-rules gm)))
  (format stream "~% ~A non terminals" (length (gmod-non-terminals gm)))
  (format stream "~% ~A object types" (length (gmod-object-types gm)))
  (format stream "~% ~A words" (length (gmod-words gm)))
  (format stream "~% ~A polywords" (length (gmod-polywords gm)))
  (format stream "~% ~A files~%" (length (gmod-files gm)))
  gm )


;;;-------------------------------
;;; routines over all the modules
;;;-------------------------------

(defun numbers-of-objects (&optional (stream *standard-output*))
  (dolist (gm *grammar-modules-in-image*)
    (number-of-objects gm stream)
    (terpri stream)))


