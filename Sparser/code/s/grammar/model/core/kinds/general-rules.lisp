;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "general-rules"
;;;   Module:  "model;core:kinds:"
;;;  version:  December 2020

;; Initiated 12/28/20 for broad rules or rule helpers that had
;; been in obscure places

(in-package :sparser)

;;;--------------------------------------------------
;;; referent-functions to selecte the right variable
;;;--------------------------------------------------
;; See, e.g.. the rules in core/time/phraes.lisp

(defun add-time-to-event (event time)
  (declare (special *subcat-test*))
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'time event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var time event))))))

(defun add-manner-to-event (event manner)
  (declare (special *subcat-test*))
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'manner event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var manner event))))))

(defun add-location-to-event (event location)
  (declare (special *subcat-test*))
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'location event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var location event))))))

(defun add-purpose-to-event (event purpose)
  (declare (special *subcat-test*))
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'purpose event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var purpose event))))))

