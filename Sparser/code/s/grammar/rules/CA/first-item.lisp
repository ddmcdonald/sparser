;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011-2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "first item"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:  0.6 February 2013

;; 0.5 (12/7/93 v2.3) drastically simplified and started cleaning them up.
;; 0.6 (1/27/94) 1st serious application
;;     (10/24) moved in start-of-sentence check
;;     (1/9/95) added *most-recent-sentence-start* facility
;;     (7/13/11) Fixed case of dotted edge in could-be-the-start-of-a-sentence
;;     (2/3/13) Improved (updated?) sentence-start criteria. 

(in-package :sparser)


;;;---------------------------------------------
;;; begining of the body of a news wire article
;;;---------------------------------------------

(defun first-item-in-article (edge/pos)
  (let* ((left-neighbor
          (etypecase edge/pos
            (edge (edge-to-its-left edge/pos))
            (position (edge/word-to-the-left edge/pos)))))

    (when (typep left-neighbor 'edge-vector)
      ;; none of the cases below would involve ambiguous words
      (return-from first-item-in-article nil))
    (left-neighbor-marks-start-of-article left-neighbor)))


(defun left-neighbor-marks-start-of-article (left-neighbor)
  (etypecase left-neighbor
    (edge
     (if (eq (edge-form left-neighbor) category::section-marker)
       (let ((label (edge-category left-neighbor)))
         (case (label-symbol label)
           (word::sm-tx t)
           (otherwise nil)))))

    (word
     (if (eq left-neighbor *source-start*)
       t nil))))



;;;---------------------------
;;; beginnging of a paragraph
;;;---------------------------

(defun first-item-in-its-paragraph (edge/pos)
  (let* ((left-neighbor
          (etypecase edge/pos
            (edge (edge-to-its-left edge/pos))
            (position (edge/word-to-the-left edge/pos)))))

    (or (left-neighbor-marks-start-of-article left-neighbor)
        (break "stub: checkout what marks a paragraph"))))



;;;-------------------------
;;; beginning of a sentence
;;;-------------------------

(defvar *most-recent-sentence-start* nil
  "Bound to a position by any routine that knows that some position
   starts a sentence (e.g. a sectionizing routine).  It is up to the
   managing programs to be sure that any relevant analysis on an
   ongoing sentence is finished before it updates this state variable.")


(defun could-be-the-start-of-a-sentence (position)
  (if (eq position *most-recent-sentence-start*)
    t
    (let ((tt-to-the-left (left-treetop-at/edge position)))
      (if tt-to-the-left
        (etypecase tt-to-the-left
          (word
           (cond ((eq tt-to-the-left *the-punctuation-period*) t)
                 ((eq tt-to-the-left *source-start*) t)
                 ((or (eq tt-to-the-left *the-punctuation-open-parenthesis*)
                      (eq tt-to-the-left word::double-quote))
                  (could-be-the-start-of-a-sentence
                   (chart-position-before position)))))
          (edge
           (let ((category (edge-category tt-to-the-left))
                 (form (edge-form tt-to-the-left)))
             (cond
              ((eq category *the-punctuation-period*) t)
              ((eq form :dotted-intermediary)
               ;; e.g. the start of a multi-element abbreviation where
               ;; the question is has it covered over a period.
               (let ((position-before (chart-position-before position)))
                 (eq *the-punctuation-period*
                     (pos-terminal position-before))))
              (t
               (if form
                 (case (cat-symbol form)
                   (category::section-marker t)
                   (otherwise
                    ;;(format t "~&>>>> edge-form before cap-seq: ~A~%" form)
                    nil))
                 nil))))))
        nil))))

