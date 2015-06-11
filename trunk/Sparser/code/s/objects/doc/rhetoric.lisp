;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rhetoric"
;;;   Module:  "objects;doc;"
;;;  Version:  June 2015

;; Created 6/4/15 to mixins, forms, and computation that is needed
;; to identify and work with the rhetorical structure of a text
;; writ large (epistemic status, story structure, new vs. old information,
;; etc.)

(in-package :sparser)

;; (trace-completion)


;;--- completion actions

(defvar *labels-used-by-new-information-detector* nil
  "Holds the list of word and polywords with completion actions
   that provide information to the detector and its calculations.")

;;--- object (move to content-methods with the other classes)

(defclass epistemic-status ()
  (
(explicit-reference :initform nil :accessor explicit-reference
    :documentation "Does the sentence include an explicit
   reference into the literature?")
)
  (:documentation "The slots provide sentence-local buckets
   in which to accumulate different kinds of evidence about whether
   the sentence is providing new facts about something, referencing
   already established facts, or making a conjecture about
   what might be the case (which in isolation will look like a fact)."))


(defun note-explicit-reference (label pos-before pos-after)
  (declare (ignore pos-before pos-after)
           (special *sentence*))
  ;; Don't need them because we're not doing anything to the chart
  (let ((sentence *sentence*))
    (unless sentence
      (error "Global sentence devar is nil somehow. Check scope."))
    (let ((contents (contents sentence)))
      (unless (typep contents 'epistemic-status)
        (error "Forgot to fold epistemic-status into sentence contents"))

      (setf (explicit-reference contents) label))))

(defgeneric setup-epistemic-data-collector (label function)
  (:documentation ""))
  ;; define-completion-action talks a label (a word, polyword, or
  ;; category), a tag (to different these actions from others that
  ;; might be associated with the label), and the name of a function.
  ;; All of these share the same tag (:info-detection) and will
  ;; have a function that depends on what should be updated.

(defmethod setup-epistemic-data-collector ((label string) (fn symbol))
  (setup-epistemic-data-collector (resolve/make label) fn))

(defmethod setup-epistemic-data-collector ((label word) (fn symbol))
  (make-completion-datum-for-epistemics label fn))

(defmethod setup-epistemic-data-collector ((label polyword) (fn symbol))
  (make-completion-datum-for-epistemics label fn))

(defun make-completion-datum-for-epistemics (label fn-name)
  (define-completion-action label :info-detection fn-name)
  (push label *labels-used-by-new-information-detector*))


;;--- Def forms

(defun evidence-of-reference (string)
  (setup-epistemic-data-collector
   string 'note-explicit-reference))
  
