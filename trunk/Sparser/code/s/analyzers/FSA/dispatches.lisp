;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "dispatches"
;;;   Module:  "analyzers:FSA:"
;;;  Version:  December 1993

;; initiated 12/10/93 v2.3

(in-package :sparser)

;;;------
;;; stub
;;;------

(defun dispatch-off-capitalization-data (data word position)
  (declare (ignore data word position))
  (break "No definition has been established for ~
          ~%             dispatch-off-capitalization-data"))


;;;--------
;;; switch
;;;--------

(defvar *version-of-capitalization-dispatch* nil)

(defun establish-version-of-capitalization-dispatch (keyword
                                                     &optional function-name)
  (case keyword
    (:no-op (setf (symbol-function 'dispatch-off-capitalization-data)
                  (symbol-function 'capitalization-dispatch/no-op)))
    (otherwise
     (unless (symbolp function-name)
       (break "The function-name argument must be a symbol"))
     (unless (symbol-function function-name)
       (break "The function-name must be a defined function"))
     (setf (symbol-function 'dispatch-off-capitalization-data)
           (symbol-function function-name))))

  (setq *version-of-capitalization-dispatch* keyword))



;;;---------------
;;; default no-op
;;;---------------

(defun capitalization-dispatch/no-op (data word position)
  (declare (ignore data word position))
  nil )

