;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "def form"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  1.1  March 1991

;; broken out from object file 3/8
;; 1.1  (3/8 v1.8.1)  Modified the fn to permit version that doesn't
;;      create rules, just an object.

(in-package :CTI-source)


(defun define-job-event (symbol &optional verb-subcategorization
                         &key infinitive
                              tensed/singular tensed/plural
                              past-participle present-participle
                              nominalization )
  (unless (symbolp symbol)
    (error "The argument to Job-event-named must be a symbol"))

  (let ((je (find/job-event symbol)))
    (if je
      je
      (else
        (setq je (make-job-event :name symbol))
        (when verb-subcategorization
          (let ((rules
                 (verb-assignments je verb-subcategorization
                                   :infinitive infinitive
                                   :tensed/singular tensed/singular
                                   :tensed/plural   tensed/plural
                                   :past-participle past-participle
                                   :present-participle present-participle
                                   :nominalization nominalization)))
            
            (setf (job-event-rules je) rules)))

        (index/job-event symbol je)
        je))))

