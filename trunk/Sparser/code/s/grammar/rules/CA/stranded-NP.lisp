;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "stranded NP"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:  April 1995

;; initiated 4/27/95

(in-package :sparser)

;;;----------
;;; full NPs
;;;----------

(set-ca-action  category::np  'np/ca-dispatch)
  ;; reacts to the form-category on a stranded edge


(defun np/ca-dispatch (np-edge)

  ;; For the moment just handles the very simple (and frequent)
  ;; case where the np would have composed with the edge
  ;; to its left except that it involved a (trailing) appositive
  ;; comma or an np-premodifier sequence comma.

  (let ((prior-edge (preceded-by-comma-and-an-edge np-edge)))
    (when prior-edge
      (let ((cfr (multiply-edges prior-edge np-edge)))
        (when cfr
          (make-chart-edge :left-edge prior-edge
                           :right-edge np-edge
                           :rule cfr))))))


;;;-------------------------
;;; incomplete NPs -- n-bar
;;;-------------------------

(set-ca-action  category::n-bar  'n-bar/ca-dispatch)
  ;; reacts to the form-category on a stranded edge


(defun n-bar/ca-dispatch (n-bar-edge)
  ;; Like the case for NP, for the moment this just looks for
  ;; the one easy case, and ultimately it will look differently
  ;; since all it should try to do is complete items to its
  ;; left until it sees something like a determiner and knows
  ;; that it's finished.
  (let ((prior-edge (preceded-by-comma-and-an-edge n-bar-edge)))
    (when prior-edge
      (let ((cfr (multiply-edges prior-edge n-bar-edge)))
        (when cfr
          (make-chart-edge :left-edge prior-edge
                           :right-edge n-bar-edge
                           :rule cfr))))))
