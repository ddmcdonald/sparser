;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "ancilaries"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:  May 1995

;; initiated 7/18/93 v2.3. Added position-based variant 5/29/95

(in-package :sparser)

#|  Very specialized search/extraction routines called by CA routines  |#


(defun comma-just-before-edge? (edge)
  (eq word::comma
      (pos-terminal
       (chart-position-before
        (pos-edge-starts-at edge)))))


(defun comma-just-before-position? (position)
  (eq word::comma
      (pos-terminal
       (chart-position-before position))))
