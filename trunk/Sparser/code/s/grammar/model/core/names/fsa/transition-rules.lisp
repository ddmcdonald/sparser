;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "transition rules"
;;;   Module:  "model;core:names:fsa"
;;;  version:  0.3 February 1994

;; initiated 5/21/93 v2.3
;; 0.1 (6/7) changed the protocol to complain if the initial state of
;;      a transition isn't already defined.
;; 0.2 (6/8) added Delete-pnf-transition
;; 0.3 (2/1/94) moved over some defparameters that had been in [transitions]

(in-package :sparser)


;;;-----------------------
;;; the object for states
;;;-----------------------

(defstruct (pnf-state
            (:include label)
            (:print-function print-pnf-state-structures ))
  id )


(defun print-pnf-state-structures (obj stream depth)
  (declare (ignore depth))
  (write-string "#<state " stream)
  (write-string (symbol-name (label-symbol obj)) stream)
  (write-string ">" stream))


(defun define-pnf-state (symbol)
  (or (pnf-state-named symbol)
      (let ((state (make-pnf-state
                    :symbol symbol)))
        
        ;; states are the equivalent of right-looking labels
        (setf (pnf-state-id state)
              (next-right-looking-id))
        
        (intern-pnf-state state symbol)
        state )))


(defparameter *pnf-name-to-state-table* (make-hash-table :test #'eq))

(defun intern-pnf-state (state symbol)
  (setf (gethash symbol *pnf-name-to-state-table*) state))

(defun pnf-state-named (symbol)
  (gethash symbol *pnf-name-to-state-table*))



;;;-----------------------------------------------------------
;;; def-form for transitions -- implicitly defines the states
;;;-----------------------------------------------------------

(defmacro def-pnf-transition (prior-state item
                              &key next-state
                                   action )
  (def-pnf-transition/expr prior-state item next-state action))


;;;-----------------------------
;;; function that does the work
;;;-----------------------------

(defun def-pnf-transition/expr (prior-state-symbol
                                item-symbol
                                next-state-symbol
                                body )

  (let* ((prior-state
          (or (pnf-state-named prior-state-symbol)
              (break "There is no PNF state named ~A"
                     prior-state-symbol)))
         (item
          (or (if (stringp item-symbol)
                (resolve-string-to-word item-symbol)
                (category-named item-symbol))
              (error "There is no label with the name ~A"
                     item-symbol)))
         (next-state
          (or (pnf-state-named next-state-symbol)
              (define-pnf-state next-state-symbol)))
         (pair
          (cons next-state body))
         item-id )

    (let ((item-rs (rule-set-for item)))
      (unless item-rs
        (setq item-rs (establish-rule-set-for item)))
      (unless (setq item-id (car (rs-left-looking-ids item-rs)))
        (setf (rs-left-looking-ids item-rs)
              (cons (setq item-id (next-left-looking-id))
                    nil))))

    (let* ((state-id (pnf-state-id prior-state))
           (transition (multiply-ids state-id item-id))
           (key (+ state-id item-id)))

      (if transition
        (unless (equal transition pair)
          ;; did the action change or is it just a second
          ;; evaluation of some definition
          (setf (gethash key *edge-multiplication-table*)
                pair))
          
        (else
          (setf (gethash key *edge-multiplication-table*)
                pair)))
      key )))



;;;--------------------------------
;;; special multiplication routine
;;;--------------------------------

(defun pnf-transition? (state label)
  (let* ((state-id (pnf-state-id state))
         (label-rs (rule-set-for label))
         (label-id (and label-rs
                        (car (rs-left-looking-ids label-rs)))))
    (when state-id
      (when label-id
        (multiply-ids state-id label-id)))))



;;;--------
;;; delete
;;;--------

(defun delete-pnf-transition (prior-state-symbol item-symbol)
  (let ((prior-state (pnf-state-named prior-state-symbol))
        (item (if (stringp item-symbol)
                (resolve-string-to-word item-symbol)
                (category-named item-symbol))))
    (unless prior-state
      (error "There is no state named ~A" prior-state-symbol))
    (unless item
      (error "There is no category (or word) named ~A" item-symbol))

    (let* ((state-id (pnf-state-id prior-state))
           (item-rs (rule-set-for item))
           (item-id (when item-rs
                      (car (rs-left-looking-ids item-rs)))))
      (unless item-id
        (error "The item named ~A~%has never been mentioned in ~
                a state transition"))

      (let ((key (+ state-id item-id))
            (transition (multiply-ids state-id item-id)))
        (if transition
          (then
            (setf (gethash key *edge-multiplication-table*)
                  nil)
            transition)
          (format t "~%~A and ~A~%weren't a transition"
                  prior-state-symbol item-symbol))))))
  


;;;------------------------------------------------
;;; associating name-creating routines with states
;;;------------------------------------------------

(defmacro define-name-creator (name-of-state &body body)
  (let ((state (pnf-state-named name-of-state)))
    (unless state
      (break "There is no PNF state with the name ~A" name-of-state))
    (let* ((fn-name
            (intern
             (concatenate 'string
                          (symbol-name (label-symbol state))
                          "-name-creator"))))
      (setf (get (label-symbol state) :name-creator)
            fn-name)
      
      `(defun ,fn-name (item-list)
                      ,@body ) )))



;;;-------------------------------------------------
;;; associating category classification conclusions
;;;-------------------------------------------------

(defun define-state-classification (name-of-state category-name)
  (let ((state (pnf-state-named name-of-state)))
    (unless state
      (break "There is no PNF state with the name ~A" name-of-state))
    (let ((category (category-named category-name)))
      (unless category
        (break "There is no category named ~A" category-name))

      (setf (get (label-symbol state) :classification)
            category)

      category )))


;;;------------------------------------------------------------
;;; globally important states/categories referenced by the fsa
;;;------------------------------------------------------------

(define-pnf-state :pnf-start)

(defparameter *pnf-start* (pnf-state-named :pnf-start)
  "The initial state of the fsa")


(defparameter *unknown-word* (category-named 'unknown-word)
  ;; defined in syntax;categories
  "The category that can be placed on edges over unknown words")

