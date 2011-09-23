;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 199,19932  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "terminate"
;;;   Module:  "analyzers;psp:"
;;;  Version:  0.0 October 1992

;; original version lost. Initiating this file 10/5/92

(in-package :sparser)


(defun terminate-chart-level-process ()
  (tr :terminate-chart-process)
  (throw 'terminating-chart-processing nil))

