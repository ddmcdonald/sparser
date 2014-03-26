;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "state"
;;;            grammar/rules/situation/
;;;  version:  October 2013

;; Initiated 10/9/13. Elaborated 10/10/13

(in-package :sparser)

;;;---------------------------------------------
;;; object -- differentiated by discourse level
;;;---------------------------------------------

(defclass state (named-object)
  ((transition-table :type list :accessor transition-table
    :documentation
      "An alist of what state we move to next when we're in this
       state and we get a particular input. 
       Pairs are (<input> . <next>)  /// dotted pairs?
       ///reify transitions? "))
  (:documentation "Base case just to manage the name keyword.
    By basing it on named-object we get a print method for free."))

(defclass phrasal-state (state)
  ()
  (:documentation "For accumulating at least NPs and VGs."))

(defclass sentential-state (state)
  ()
  (:documentation "For accumulating all the elements of a sentence."))

(defclass discourse-state (state)
  ()
  (:documentation "This will be interesting, but waiting for cases"))


;;;---------
;;; drivers 
;;;---------

(defmethod update-situation-state ((edge edge) (type symbol))
  ;; called from incorporate-referent-into-the-situation which
  ;; wants the new state returned. 
  (let* ((situation (the-situation))
         (state (ecase type
                  (phrase (state situation))
                  (sentence (sentence-state situation))
                  (discourse (break "stub"))))
         (transitions (transition-table state))
         (form (edge-form edge)))
    (let ((entry (assoc form transitions)))
      (unless entry
        (push-debug `(,situation ,state ,form ,transitions))
        (error "No transition in ~a for ~a" state form))
      (push-debug `(,entry)) ;(break "decipher entry")
      (let ((new-state (cadr entry))
            (actions (cddr entry))) ;; deprecated if we can
        (when actions               ;; get away with it
          (push-debug `(,actions ,entry))
          (break "first case of actions on a state transition"))
        (ecase type
          (phrase (setf (state situation) new-state))
          (sentence (setf (sentence-state situation) new-state))
          (discourse (break "stub")))
        new-state))))


(defun phrasal-state ()
  (state (the-situation)))

(defun set-phrasal-state (keyword)
  ;; for when the code knows what it's doing.
  (let ((state (state-named keyword))
        (situation (the-situation)))
    (setf (state situation) state)))
    


;;;-----------------
;;; defining states
;;;-----------------

(defvar *keywords-to-state-objects* (make-hash-table)
  "These are permanent, so a resource wouldn't be appropriate")

(defun get-state (keyword)
  (gethash keyword *keywords-to-state-objects*))

(defun state-named (keyword)
  (let ((s (get-state keyword)))
    (unless s
      (error "No state has been defined with the name ~s"
             keyword))
    s))

(defmacro define-state (name type transition-table)
  `(define-state/expr ',name ',type ',transition-table))

(defun define-state/expr (keyword type transition-table)
  ;;(push-debug `(,keyword ,type ,transition-table)) (break "stub")
  (let ((state (find-or-make-c3-state keyword type)))
    (setf (transition-table state)
          (interpret-transition-table-expessions transition-table))
    state))

(defun find-or-make-c3-state (keyword type)
  (or (get-state keyword)
      (let ((state 
             (ecase type
               (phrase (make-instance 'phrasal-state :name keyword))
               (sentence (make-instance 'sentential-state :name keyword))
               (discourse (make-instance 'discourse-state :name keyword)))))
        (setf (gethash keyword *keywords-to-state-objects*) state)
        state)))

(defun interpret-transition-table-expessions (expressions)
  (let ( entries )
    (dolist (exp expressions)
      ;; (<form-category> <state name> . <actions>)
      (unless (consp exp)
        (error "Transtion entry is not a list"))
      (unless (symbolp (car exp))
        (error "Transition form-category is not a symbol"))
      (unless (keywordp (cadr exp))
        (error "Transition state is not a keyword"))      
      (let ((category (category-named (car exp) :break-if-none)))
        (unless (form-category? category)
          (error "~a should be a form category" category))
        (let* ((keyword (cadr exp))
               (state (or (get-state keyword)
                          ;; can't define them w/o a type
                          ;; so forward references won't work
                          keyword)))
          ;; Trying to avoid the need for actions that are
          ;; taken after the transition
          (push `(,category ,state)
                entries))))
    (nreverse entries)))


;;;-------
;;; cases
;;;-------
;;  Define before mention is easy on the code.
;;  Forward ref. is tricky w/o knowing the level of the state

;;--- NPs

(define-state :assembling-np phrase ;; "Ford" (but actually "ford")
  ((proper-noun :assembling-np)
   ))

(define-state :initial-state phrase ;; "black"
  ((adjective :assembling-np)
   (verb+s :assembling-vg) ;; "has" when not a head
   ))

;;--- VGs

(define-state :assembling-vg phrase
  ((verb+s :assembling-vg)
   ))



;;--- sentence level

;; inital -> subject-seen -> verb-seen -> np-complement-seen

(define-state :subject-seen sentence nil)

(define-state :initial-sentence-state sentence
  ((np :subject-seen)))




