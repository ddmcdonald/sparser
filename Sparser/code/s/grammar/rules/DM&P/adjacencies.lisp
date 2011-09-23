;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "adjacencies"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  November 1994

;; initiated 8/23/94 v2.3, broken out from [sibling relations]
;; 9/27 adding a category to hold unanalyzed n-term sequences.
;; 0.1 (11/13) hacked to force pairs to be reified when first seen.

(in-package :sparser)

;;;------------------------------------
;;; classifier + np-head  -> pair-term
;;;------------------------------------

;;--- Drivers from Mining process

(defun consider-reifying/classifier+np-head (c-term h-term segment
                                             c-start h-start)
  ;; called from Mine-treetops-as-head/classifiers.
  (let ((pt
         (construct-pair-term
          h-term c-term
          :form category::np
          :left-edge (right-treetop-at/edge c-start)
          :right-edge (right-treetop-at/edge h-start))))
    (bind-variable 'contains pt segment)
    pt ))

#|  Original version that usually waits for the second occurance
  ;; We only do this on the second-time through
  (let ((binding (has-binding c-term :variable 'classifies :value h-term))
          ;; the binding has to exist or this call wouldn't have occurred
        pair-term )
    (if (> (binding-count binding) 1)
      (setq pair-term (construct-pair-term h-term c-term
                                           :form category::np))
      (if (pair-is-capitalized c-start h-start)
        (setq pair-term (construct-pair-term h-term c-term
                                             :form category::np))
        (else
          (tr :pair-term-premature))))
    (when pair-term
      (bind-variable 'contains pair-term segment)
      pair-term ))|#



(defun pair-is-capitalized (c-start h-start)
  (and (capitalized-instance c-start)
       (capitalized-instance h-start)))
  


(defun consider-reifying/adjacent-terms (left-term right-term segment
                                         left-start right-start)
  ;; called from Mine-treetops/established-terms/2
  (let ((pt
         (construct-pair-term right-term left-term
                              :form category::np
                              :left-edge (top-edge-starting-at left-start)
                              :right-edge (top-edge-starting-at right-start))))
    (bind-variable 'contains pt segment)
    pt ))

#|  Original version that usually waits for the second occurance
  (let ((binding (has-binding left-term :variable 'adjacent/precedes
                              :value right-term))
        pair-term )
    (if (> (binding-count binding) 1)
      (setq pair-term (construct-pair-term right-term left-term
                                           :form category::np))
      (if (pair-is-capitalized left-start right-start)
        (setq pair-term (construct-pair-term right-term left-term
                                             :form category::np))
        (tr :pair-term-premature)))
    (when pair-term
      (bind-variable 'contains pair-term segment)
      pair-term ))|#



(define-category  Paired-in-long-segment
  :specializes nil
  :instantiates self
  :binds ((pmt/first)     ;; the one on the left of the pair
          (pmt/second))   ;; the one on the right
  :index (:temporary :sequential-keys pmt/second pmt/first))


;; ?? is this the right place ??
#|(defun note-adjacency-in-long-segment (prior-tt tt)
  ;; called from Hack-long-segment/mining
  (let ((prior-item (edge-referent prior-tt))
        (item (edge-referent tt)))
    ))|#

;; versus this place
(defun scan-segment-items-adjacencies (terms segment)
  ;; called from Categorize-segment
  (let ( prior-term )
    (dolist (term terms)
      (when prior-term
        (if (adjacent-somehow prior-term term)
          (construct-pair-term term prior-term)
          (note-adjacent-terms prior-term term segment)))
      (setq prior-term term))))

(defun note-adjacent-terms (prior-term term segment)
  (let ((rel (find-individual 'paired-in-long-segment
                              :pmt/first prior-term
                              :pmt/second term)))
    (unless rel
      (setq rel (define-individual 'paired-in-long-segment
                  :pmt/first prior-term
                  :pmt/second term)))

    (bind-variable 'contains rel segment)))


(defun adjacent-somehow (prior-item item)
  (when (and (individual-p prior-item)
             (individual-p item))  ;; avoids "Black & White"
    (when *readout-segments*
      (format t "~&>>>> Checking Adjacent-somehow of~
                 ~%         ~A~
                 ~%     and ~A~%" prior-item item))
    
    (or (let ((result (find-individual 'paired-in-long-segment
                                       :pmt/first prior-item :pmt/second item)))
          (when *readout-segments*
            (when result
              (format t "~& they were together in a long segment")))
          result )
        (let ((result (eq (value-of 'classifies prior-item)
                          item)))
          (when *readout-segments*
            (when result
              (format t "~& the 1st classified the 2d~%")))
          result )
        (let ((result (eq (value-of 'adjacent/precedes prior-item)
                          item)))
          (when *readout-segments*
            (when result
              (format t "~& the 1st preceded the 2d~%")))
          result )
        (let ((result (find-individual 'pair-term
                                       :other prior-item :head item)))
          (when *readout-segments*
            (when result
              (format t "~& the 1st preceded the 2d pair term~%")))
          result )
        (else
          (when *readout-segments*
            (format t "~& no prior adjacency relationship~%"))
          nil))))

