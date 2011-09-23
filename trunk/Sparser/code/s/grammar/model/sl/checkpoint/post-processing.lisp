;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;    File: "loader"
;;;  Module: "grammar/model/sl/checkpoint/
;;; version: September 2009

;; This code used to be in the abbreviations file, but that's too obscure for ordinary
;; mortals to find so I moved it here (ddm 9/18/09).
;; 9/26/09 broke out checkpoint-format into a new function separate from 
;;         checkpoint-call-and-postprocessing and added support for compound sentences

(in-package :sparser)

(defun checkpoint-call-and-postprocessing (string)
  ;; Called for pp when the *checkpoint-operations* flag is up
  (let* ((output (analyze-text-from-string string))
        (laundered-output (checkpoint-format output)))
	(read-from-string
	 (substitute #\_ #\- 
		     (substitute #\_ #\/ ;; necessary clean-up to play nice with JESS
				 (format nil "~S" laundered-output))))))

(defun checkpoint-format (output)
  ;; called by checkpoint-call-and-postprocessing (as well as recursively)
  ;; presents output in checkpoint format (inspired by logical form language)
  ;; for virtual role player
  (cond 
    ((null output) output)
    ((listp output)
     (cond 
       ((and (listp (cadr output))
	     (eq 'event (car output))
	     (eq 'question (cadadr output)))
	;; another kludge to get the output to fit the format
	(cons 'speech-act (cdr output)))
       ((listp (car output))
	(case (cadar output)
	  (question (cons 'speech-act output))
	  (inversion (cons 'speech-act output))
	  (acknowledgement (cons 'speech-act output))
	  (greeting (cons 'speech-act output))
	  (t (list 'speech-act 
		   (list 'form 'request)
		   (list 'content output)))))
       ((eq 'SA-SEQ (car output))  ;; compound sentence
	(list 'speech-act-seq (checkpoint-format (cadr output)) (checkpoint-format (caddr output))))
       (t (list 'speech-act 
		(list 'form 'request)
		(list 'content output)))))
    (t (list 'speech-act 
	     (list 'form 'request)
	     (list 'content output)))))

;; deprecated, for testing/development only
(defun vrp (string)
  (format t "~A~%" 
    (pp string)))

;; helper functions to transform inversion construction for vrp output
(defun inversion-functor (string)
  (cond ((eq 'functor (caar string)) (cadar string))
	(t (inversion-functor (cdr string)))))

(defun inversion-target (string)
  (cond ((eq 'target (caar string)) (car string))
	(t (inversion-target (cdr string)))))

(defun inversion-other (string)
  (cond ((car string)
	 (cond ((and (not (eq 'functor (caar string)))
		     (not (eq 'target (caar string))))
		(cons (car string) (inversion-other (cdr string))))
	       (t (inversion-other (cdr string)))))
	(t nil)))