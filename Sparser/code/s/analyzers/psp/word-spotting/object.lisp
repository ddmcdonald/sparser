;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "object"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version: May 2021

;; Initiated 5/18/21

(in-package :sparser)

(defclass spotter (named-object)
  ((word :initarg :for :accessor backpointer)
   (note :initform nil :accessor note-category)
   )
  (:documentation ""))

(defun setup-word-to-spot (string &key
                                  ((:name supplied-name))
                                  note)
  "Instantiate a spotter based on the supplied keys and add it
   to the table the driver - spot - uses.
   Constructs a name to instantiate the spotter, then populates
   it given what's in the keys"

  (let* ((word (resolve/make string)) ;; word or polyword
         (name-to-use supplied-name))
    (let ((s (make-instance 'spotter
                            :name name-to-use
                            :for word)))
      (when note (setup-note-for-spotting s note))
      (add-word-to-spot word s)
      s)))

    
(defun setup-note-for-spotting (spotter note)
  (let* ((name
          (etypecase note
            (string (intern (string-upcase note)
                            (find-package :sparser)))
            (symbol (unless (eq (string-package note) (find-package :sparser))
                      (intern (symbol-name note) (find-package :sparser))))))
         (category (define-category/expr name)))
    (setf (note-category spotter) category)))
    
           
