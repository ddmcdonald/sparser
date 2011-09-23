;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "drivers;actions:"
;;;  Version:  December 1994

;; initiated 10/21/91, tweeked 10/23,10/26
;; 12/14/94 added the other kinds of categories to the dispatch check

(in-package :sparser)

#|
   There are no objects representing completion actions, instead the
routines are kept in the "completion-action" field of the rule-sets of
the labels for which actions are defined.
   A number of different actions can be defined for a given label,
each is distinguished by a tag -- the rs field is essentially a plist.
|#


(defvar *number-of-completion-actions-defined* 0
  "A counter so that we can include these in any description of
   how many rules the system has.")


(defun define-completion-action (label tag function)
  (let ((rs (label-rule-set label)))
    (when (null rs)
      ;(setf (label-rule-set label)
      ;      (setq rs (make-rule-set :backpointer label)))
      (setq rs
            (etypecase label
              (word (setf (word-rule-set label)
                          (make-rule-set :backpointer label)))
              (polyword (setf (pw-rules label)
                              (make-rule-set :backpointer label)))
              ((or category referential-category mixin-category)
               (setf (cat-rule-set label)
                     (make-rule-set :backpointer label))))))
    (let ((action-plist (rs-completion-actions rs)))
      (if action-plist
        (let ((earlier-instance (member tag action-plist)))
          (if earlier-instance
            (rplaca (cdr earlier-instance)
                    function)
            (else
              (setf (rs-completion-actions rs)
                    (cons tag
                          (cons function
                                action-plist)))
              (incf *number-of-completion-actions-defined*))))

          (setf (rs-completion-actions rs)
              `(,tag ,function)))
      label )))


(defun delete-completion-action (label tag)
  (let ((rs (label-rule-set label)))
    (when (null rs)
      (break "Expected the label ~A to have a rule-set" label))
    (let ((action-plist (rs-completion-actions rs)))
      (unless action-plist
        (break "Expected the rule-set for the label ~A~
                ~%to include completion-actions" label))

      (if (eq (car action-plist) tag)
        (setf (rs-completion-actions rs) (cddr action-plist))
        (let ((cons-for-the-tag
               (member tag action-plist)))
          (rplaca cons-for-the-tag
                  (car (cddr cons-for-the-tag)))
          (rplacd cons-for-the-tag
                  (cdr (cddr cons-for-the-tag))))))))
    
