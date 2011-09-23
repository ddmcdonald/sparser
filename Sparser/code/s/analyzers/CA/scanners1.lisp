;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scanners"
;;;   Module:  "analyzers;CA:"
;;;  Version:  1.5 April 1995

;; 1.4  (10/27 v2.0) doctored First-item... because w::hyphen is somehow
;;       not defined now.
;;      (11/15 v2.1) Moved the first item code to "grammar;rules:ca:"
;; 1.5  (12/7/93 v2.3) broke out a subr. of Edge-to-its-left, (12/9) added
;;       a check for preceding newline.
;;      (4/27/95) added Preceded-by-comma-and-an-edge

(in-package :sparser)

;;;----------------------------
;;; looking for specific cases
;;;----------------------------

(defun comma-just-to-its-left (edge)
  (let* ((starting-position (ev-position (edge-starts-at edge)))
         (prior-position (chart-position-before starting-position)))
    (eq word::comma
        (pos-terminal prior-position))))

(defun comma-just-to-its-right (edge)
  (let* ((ending-position (ev-position (edge-ends-at edge))))
    (eq word::comma
        (pos-terminal ending-position))))


(defun left-whitespace-is-newline (pos)
  (let ((ws (pos-preceding-whitespace pos)))
    (eq ws word::newline)))



(defun preceded-by-comma-and-an-edge (edge)
  ;; returns the edge if there is one.
  (when (comma-just-to-its-left edge)
    (edge-ending-at
     (chart-position-before (pos-edge-starts-at edge)))))




(defun conjunction-just-to-its-left (edge)
  (let* ((starting-position (pos-edge-starts-at edge))
         (prior-position (chart-position-before starting-position)))
    (eq word::|and|
        (pos-terminal prior-position))))


(defun edge-begins-with-the-word (word edge)
  (let* ((first-position (pos-edge-starts-at edge))
         (first-word (pos-terminal first-position)))
    (eq first-word word)))


;;;--------------------
;;; checking neighbors
;;;--------------------

(defun left-neighbor-is (label reference-point &key jump-word?)
  (let ((ref-position
         (etypecase reference-point
           (edge (pos-edge-starts-at reference-point))
           (position reference-point)))
        top-edge )

    (when jump-word?
      (setq ref-position (chart-position-before ref-position)))

    (setq top-edge (ev-top-node (pos-ends-here ref-position)))
    (unless (eq top-edge :multiple-initial-edges) ;;Feb0;62
      (if top-edge
        (eq label (edge-category top-edge))
        (eq label (pos-terminal
                   (chart-position-before ref-position)))))))


;;;-----------------
;;; access routines
;;;-----------------

(defun edge-to-its-left (edge)
  (unless (typep edge 'edge)
    (error "Wrong argument type.~%   Expected an edge and got ~
            a ~A" (type-of edge)))
  (let* ((starting-position (ev-position (edge-starts-at edge))))
    (edge/word-to-the-left starting-position)))


(defun edge/word-to-the-left (position)
  (let* ((ends-there (pos-ends-here position))
         (top-edge (ev-top-node ends-there)))
    (if top-edge
      (if (eq top-edge :multiple-initial-edges)
        ends-there ;; return the edge-vector
        top-edge)
      (pos-terminal
       ;; n.b. this is wierd because of what the convention is
       ;; for associating terminals with positions
       (chart-position-before (ev-position ends-there))))))



(defun edge-to-its-left/jump-word (edge)
  ;; immediately to the left is a word, we want the treetop just
  ;; before that.
  (unless (typep edge 'edge)
    (error "Wrong argument type.~%   Expected an edge and got ~
            a ~A" (type-of edge)))

  (let* ((position-one-back (chart-position-before
                             (pos-edge-starts-at edge))))
    (let ((result
           (or (ev-top-node (pos-ends-here position-one-back))
               (pos-terminal (chart-position-before position-one-back)))))
      ;(break "pos")
      result)))

