;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "hidden markup"
;;;   Module:  "drivers;chart:"
;;;  Version:  June 1994

;; initiated 6/13/94 v2.3

(in-package :sparser)

#|
  The trie sequences that constitute these section markers are found
by a search that's initiated at the next-terminal level by the "<" that
always initiates them.

|#

;;;------------
;;; predicates
;;;------------

(defun leading-hidden-markup-on-position? (p)
  (let ((ev (pos-starts-here p)))
    (ev-marker ev)))

(defun trailing-hidden-markup-on-position? (p)
  (let ((ev (pos-ends-here p)))
    (ev-marker ev)))


;;;---------
;;; drivers
;;;---------

(defun establish-hidden-section (p)
  (let ((marker (ev-marker (pos-starts-here p))))
    (unless marker
      (break "Threading bug: expected there to be a section marker ~
              on the~%vector starting at p~A"
             (pos-token-index p)))
    (let ((action
           (sm-initiation-action marker)))
      (when action
        (funcall action p)))))


(defun terminate-hidden-section (p)
  (let ((marker (ev-marker (pos-ends-here p))))
    (unless marker
      (break "Threading bug: expected there to be a section marker ~
              on the~%vector starting at p~A"
             (pos-token-index p)))
    (let ((action
           (sm-termination-action marker)))
      (when action
        (funcall action p)))))

