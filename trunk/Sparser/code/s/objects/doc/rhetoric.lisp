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


;;;-------------------
;;; Class definitions
;;;-------------------
#| This file is loaded well before these classes are used 
in the file objecs/doc/content.lisp as part of the definition of
sentence content and of paragraph content (or higher if you think
that would be useful. 
 
Those are the classes sentence-content and paragraph-content in that file

When you make a change here is ought to flow right through (I'm almost
positive) to the content definitions so that the next time one of them
is instantiated (which probably means re-building your test articles
from their xml) any slots you've added or other changes you've made
will take effect in the new content instances.

The names of the classes and the slots in them are what occurred to
me at the time. Change anything that doesn't feel natural. 
|#

;;-- Paragraph and/or maybe section level class

(defclass epistemic-state ()
   ;; has an initial state that's affected by the epistemic
   ;; status of the succession of sentences. E.g. that now every
   ;; sentence we encounter from this point on has new information.
  ()
  (:documentation "A place to record and update the state of a
    which can change as we go through its sentences"))
#| You could define a slot for this "initial state" of the paragraph
which could be set automatically by using the :init-form on the slot.
|#

(defclass discourse-relations ()
  ((background-knowledge :initform nil :accessor background-knowledge
    :documentation "Pairs of sentences (X, Y), where X is
       explicitely assumed or acknowledged prior to the assertion
       of Y.")
   (evidence-for :initform nil :accessor evidence-for
    :documentation "Pairs of sentences (X, Y), where X is 
       evidence for Y.")
   (experimental-result :initform nil :accessor experimental-result
    :documentation "Pairs of sentences (X, Y), where X is
       the (material) result of the experiment described by Y.")
   (cause :initform nil :accessor cause
    :documentation "Pairs of sentences (X, Y), where X causes the
     assertion of Y. Less restrictive than evidence-for. Triggered
     by words like 'therefore' and 'thus'."))
  (:documentation "Stores the discourse-relations between sentences 
    of a subsection."))

;;-- Sentence level

(defclass epistemic-status ()
  ((explicit-reference :initform nil :accessor explicit-reference
    :documentation "Does the sentence include an explicit
      reference into the literature?")
   (conjectures :initform nil :accessor conjectures
    :documentation "Evidence that the sentence is stating 
      a conjecture or a hypothesis rather than an actual fact.")
   (new-facts :initform nil :accessor new-facts
    :documentation "Evidence that the sentence contains
      novel information.")
   (known-results :initform nil :accessor known-results
    :documentation "Evidence that the sentence is reporting an
      already established fact.")
   (methodology :initform nil :accessor methodology
    :documentation "Evidence that the sentence is discussing
      experimental design, rather than results.")
  (motivation :initform nil :accessor motivation
    :documentation "Is the sentence providing motivation for
     an experiment, i.e., the claim that will be tested?"))
  (:documentation "The slots provide sentence-local buckets
   in which to accumulate different kinds of evidence about whether
   the sentence is providing new facts about something, referencing
   already established facts, or making a conjecture about
   what might be the case (which in isolation will look like a fact)."))

;;;--------------------
;;; function generator
;;;--------------------

#| These are for defining the function that complete calls, which I'm
assuming we can uniformly treat as adding the phrase to the designated
slot in the epistemic status class. The only this you have to be careful
about is to ensure that when you make an additional collection function
you also add the corresponding slot to the class. |#

(defparameter *trace-epistemic-collector* nil)
	
(defmacro define-epistemic-collector (fn-name slot-name)
  `(define-epistemic-collector/expr ',fn-name ',slot-name))

(defun define-epistemic-collector/expr (fn-name slot-name)
  (let ((form
         `(defun ,fn-name (edge-or-word &optional pos-before pos-after)
            (declare (ignore pos-before pos-after)
                     (special *reading-populated-document*
                              *scanning-epistemic-features*))
            (when *reading-populated-document*
              (unless *scanning-epistemic-features*
                (return-from ,fn-name)))
            (let ((sentence (identify-current-sentence)))
              (let ((contents (contents sentence))
                    (value (etypecase edge-or-word
                             (edge (edge-category edge-or-word))
                             (word edge-or-word))))
                (unless (typep contents 'epistemic-status)
                  (error "Forgot to fold epistemic-status into ~
                          sentence contents"))
                (when *trace-epistemic-collector*
                  (format t "~&>>> ~a~%" value))
                (push value
                      (slot-value contents ',slot-name))))) ))
    (eval form)
    fn-name))

(define-epistemic-collector note-conjecture-phrase conjectures)
(define-epistemic-collector note-explicit-reference explicit-reference)
(define-epistemic-collector note-new-fact new-facts)
(define-epistemic-collector note-known-result known-results)
(define-epistemic-collector note-methodology methodology)
(define-epistemic-collector note-motivation motivation)

#+ignore ;; original hand-coded versio
(defun note-explicit-reference (label pos-before pos-after)
  (declare (ignore pos-before pos-after)
           (special *sentence*))
  ;; Don't need them because we're not doing anything to the chart
  (let ((sentence *sentence*))
    (unless sentence
      (error "Global sentence defvar is nil somehow. Check scope."))
    (let ((contents (contents sentence)))
      (unless (typep contents 'epistemic-status)
        (error "Forgot to fold epistemic-status into sentence contents"))
      (push label (explicit-reference contents)))))

;;;-------------------------------------
;;; Hook up to the completion machinery
;;;-------------------------------------

(defvar *labels-used-by-new-information-detector* nil
  "Holds the list of word and polywords with completion actions
   that provide information to the detector and its calculations.")

;; (trace-completion)
;;  Traces whether a word (polyword, edge) going through the
;;  complete routine has a completion action action associated
;;  with it and notes whether it's run. 

(defgeneric setup-epistemic-data-collector (label function)
  (:documentation ""))
  ;; define-completion-action talks a label (a word, polyword, or
  ;; category), a tag (to different these actions from others that
  ;; might be associated with the label), and the name of a function.
  ;; All of these share the same tag (:info-detection) and will
  ;; have a function that depends on what should be updated.

(defmethod setup-epistemic-data-collector ((label string) (fn symbol))
  (let ((*use-occasional-polywords* t))
    (declare (special *use-occasional-polywords*))
    (setup-epistemic-data-collector (resolve/make label) fn)))

(defmethod setup-epistemic-data-collector ((label word) (fn symbol))
  ;; Words go through complete as words, and use a function call
  ;; with three arguments.
  (make-completion-datum-for-epistemics label fn))

(defmethod setup-epistemic-data-collector ((label polyword) (fn symbol))
  ;; Polywords go through complete as edges. The function takes the
  ;; edge as it's single argument
  (make-completion-datum-for-epistemics label fn))

(defun make-completion-datum-for-epistemics (label fn-name)
  (define-completion-action label :info-detection fn-name)
  (push label *labels-used-by-new-information-detector*))


;;;-----------
;;; Def forms
;;;-----------

(defun evidence-of-reference (string)
  (setup-epistemic-data-collector
   string 'note-explicit-reference))

(defun conjecture-phrase (string)
  (setup-epistemic-data-collector
   string 'note-conjecture-phrase))

(defun new-fact-phrase (string)
  (setup-epistemic-data-collector
   string 'note-new-fact))

(defun known-result-phrase (string)
  (setup-epistemic-data-collector
   string 'note-known-result))

(defun methodology-phrase (string)
  (setup-epistemic-data-collector
   string 'note-methodology))

(defun motivation-phrase (string)
  (setup-epistemic-data-collector
   string 'note-motivation))

