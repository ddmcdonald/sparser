;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "rank"
;;;   Module:  "objects;chart:brackets:"
;;;  Version:  0.1 March 2007

;; initiated 1/24/95. Added call to additional check 4/19
;; 0.1 (3/5/07) Appears that Allegro is mucking with the hashtable that's 
;;      used to handle rank, so switched to a field
(in-package :sparser)


(defparameter *brackets-to-their-ranks* (make-hash-table))


(defun assign-rank-to-bracket (bracket rank)
  ;; called from define-bracket/expr when a rank is supplied
  (setf (gethash bracket *brackets-to-their-ranks*)
        rank))

(defun rank-of-bracket (bracket)
  ;; ?? revert when running on MCL?
  ;(gethash bracket *brackets-to-their-ranks*)
  (b-rank bracket))


(defun stronger-bracket (b1 b2)
  ;; Called from Place-boundary/begins-before and its variations
  (let ((rank1 (rank-of-bracket b1))
        (rank2 (rank-of-bracket b2)))
    (cond
     ;; The best situation is if all the brackets have been given ranks.
     ;; If only one has, then take that bracket.  If neither brackets
     ;; has a rank, then arbitrarily return the second of the two.
     ((and rank1 rank2)
      (if (< rank1 rank2)
        b1
        b2))
     (rank1  b1)
     (rank2  b2)
     (t (adjudicate-equal-rank-brackets b1 b2)))))
