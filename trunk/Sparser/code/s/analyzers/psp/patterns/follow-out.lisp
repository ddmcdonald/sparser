;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "follow-out"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  September 1995

;; initiated 9/21/95

(in-package :sparser)


;;;------------------------------------------
;;; keeping track of earlier accepted states
;;;------------------------------------------

(defvar *prior-acceptable-states* (cons nil nil)
  "Holds a list of accepted states and the position that was
   reached at the point when they occurred.")



;;;-----------------
;;; initializations
;;;-----------------

(defun initialize-scan-pattern-process ()
  ;; Called from Scan-pattern-starting-pair if it succeeds.
  (clear-instantiated-scan-pattern-element-array)
  (rplaca *prior-acceptable-states* nil)
  (rplacd *prior-acceptable-states* nil))



;;;---------------
;;; state manager
;;;---------------

;; new version where there's only one next state for a given prior state
;; and item. 
(defun continuation-from-state/s? (from-state position word)
  (declare (ignore position))
  (tr :checking-for-scan-pattern-extension word from-state)

  (multiple-value-bind (next-state item-type)
                       (pattern-transition? from-state word)
    (if next-state
      (then (tr :scan-pattern-extension-succeeded word next-state)
            (push-instantiated-pattern-element word item-type)
            next-state)
      (else
        (tr :scan-pattern-extension-failed word)
        nil ))))


#+ignore  ;; original multi-state version
(defun continuation-from-state/s? (state-or-list-of-states position word)
  ;; This routine keeps track of the possible continuations
  ;; (if any) from the state(s) it is passed in and the word
  ;; just after the position it is given. 

  (tr :checking-for-scan-pattern-extension word state-or-list-of-states)
  (let ( next-states  result-of-transition )

    (unless (consp state-or-list-of-states)
      (setq state-or-list-of-states (list state-or-list-of-states)))
   
    (dolist (from-state state-or-list-of-states)
 (break "no")
      (setq result-of-transition (pattern-transition? from-state word))

      (when result-of-transition
        (if next-states
          (if (consp result-of-transition)
            (setq next-states
                  (append result-of-transition next-states))
            (setq next-states
                  (cons result-of-transition next-states)))
          (if (consp result-of-transition)
            (setq next-states result-of-transition)
            (setq next-states (list result-of-transition))))))

    (if next-states
      (then
        (tr :scan-pattern-extension-succeeded word next-states)
        (push-instantiated-pattern-element word)
        (nreverse next-states))
      (else
        (tr :scan-pattern-extension-failed word)
        nil ))))
    



;;;--------------------------------------------------------
;;; storage facility for the instantiated pattern elements
;;;--------------------------------------------------------

(defparameter *instantiated-scan-pattern-elements*
              (make-array 50 :initial-element nil))

(defparameter *last-scan-pattern-element* nil
  "An integer index that equals one minus the number of elements
   in the array.")


(defun clear-instantiated-scan-pattern-element-array ()
  (when *last-scan-pattern-element*
    (let ((array *instantiated-scan-pattern-elements*))
      (dotimes (i (1+ *last-scan-pattern-element*))
        (setf (aref array i) nil)))
    (setq *last-scan-pattern-element* nil)
    *instantiated-scan-pattern-elements* ))


(defun push-instantiated-pattern-element (item item-type)
  (unless item-type
    (break "Caller didn't include the 'item-type'~%"))

  (if (null *last-scan-pattern-element*)
    (then
      (setf (aref *instantiated-scan-pattern-elements* 0) 
            `(,item . ,item-type))
      (setq *last-scan-pattern-element* 0))
    (else
      (incf *last-scan-pattern-element*)
      (setf (aref *instantiated-scan-pattern-elements*
                  *last-scan-pattern-element*)
            `(,item . ,item-type))))

  *instantiated-scan-pattern-elements* )

