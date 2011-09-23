;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "abbreviations"
;;;   Module:  "init;versions:v2.3:workspace:"
;;;  version:  September 2009

;; broken out into this form 9/93.
;; 2/23/95 changed definition of P to look for whether *workshop-window* was up, and
;; to inhibit TTs accordingly.  8/28 added Design.  2/9/05 Added ir to inspect
;; rules. (1/07) lots of little additions. 4/9/09 Changed 'inspect' to 'd'
;; 7/21/09 vrp serves as 'wrapper' for exporting output in speech act-inspired format
;; Modified through 9/11/09. 9/18 factored out the checkpoint massaging done in
;; pp to the new file /grammar/model/sl/checkpoing/post-processing.lisp

(in-package :sparser)

;;;----------------------------
;;; frequently loaded packages
;;;----------------------------

(defun design ()
  (load "SysAp:Applications:MCL 2.0.1:Interface Tools:make-ift.lisp")
  (format t "~&~%do (ift::load-ift)~%~%"))



;;;-----------------------------------------------------
;;;     abbreviations of frequently called routines
;;;-----------------------------------------------------

(defun d (obj)
  (describe obj)
  obj)


(defun e ( &key from to )
  (display-chart-edges :stream *standard-output*
                       :from from :to to))

(defun e/ends ( &key from to )
  (display-chart-edges :stream *standard-output*
                       :from from :to to
                       :ends-rather-than-starts? t))

(defun chart ()
  (display-chart :style :just-terminals))


(defun ie (number-of-edge) (d (edge# number-of-edge)))
(defun ip (number-of-position) (d (position# number-of-position)))
(defun iw (string-for-word) (d (word-named string-for-word)))
(defun ir (number-of-rule)
  (let ((rule (psr# number-of-rule)))
    (d rule)))
(defun ic (category-name) (d (referential-category-named category-name)))

(defun psr# (n)
  (let ((symbol (intern (string-append "PSR" (format nil "~a" n))
			(find-package :rule))))
    (eval symbol)))

(defun p# (n)
  (position# n))

(defun e# (n)
  (edge# n))

(defun i# (n)
  (individual-object# n))

(defun psi# (n)
  (psi-object# n))

;; lp#  -- for lattice points


(defmacro ml (label-name1 label-name2)
  `(multiply-labels ,(resolve label-name1)
                    ,(resolve label-name2)))

;;;------------------
;;; packaged drivers
;;;------------------

;; outputs parse as s-expression in speech act-inspired format
(defun pp (string)
  (cond
    (*checkpoint-operations*
     (checkpoint-call-and-postprocessing string))
    (t (analyze-text-from-string string))))

(defun p (string)
  (pp string)
  (unless *workshop-window*
    (format t "~%~%")
    (tts)))

(defun p/e (string)  (pp string) (e))
(defun p/te (string) (pp string) (the-edges))

(defun pt (string)
  (time (pp string))
  (tts))

(defun f (pathname
          &key time (initial-region :header) )
  (declare (ignore initial-region))
  (unless pathname
    (setq pathname *article*))
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (format t "~%analyzing ~A~%~%" pathname)
  (if time
    (time (analyze-text-from-file pathname))
    (analyze-text-from-file pathname)))


;;------------ generic, switched routine
;;
(defun test-function (string/filename)
  (declare (ignore string/filename))
  (break "Test-function switch hasn't been set"))

(setf (symbol-function 'test-function) (symbol-function 'p))
;(setf (symbol-function 'test-function) (symbol-function 'p/tts/buffer))
