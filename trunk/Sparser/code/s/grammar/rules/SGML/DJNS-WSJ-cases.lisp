;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DJNS/WSJ cases"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  0.3 May 1994

;; initiated (trivially) 10/19/91, fleshed out 5/15/92
;; 10/27 holding step to let other code work right now before the
;;    real style is put in place
;; 5/15 put in place real routines for AN, HL, CO, IN, and GV
;;    by copy&specialize on the working routine for SO.
;; 0.1 (12/9/93 v2.3) Completely revamped
;; 0.2 (5/5/94) tweeked parameter pattern
;; 0.3 (5/19) added adjustment-control in TX and specialized its routines
;;      to differentiate them from the TXT of DCI's encoding.

(in-package :sparser)

#| These are the tags found in the Wall Street Journal as provided
   by Dow Jones News Service circa 1990/91. |#

;; AN
;; HL
;; CO
;; IN
;; GV
;; TX


;;;-------------------------------
;;; subroutine common to all tags
;;;-------------------------------

(defun calculate-labeled-segment-boundaries (final-pos/edge
                                             leading-edge)
  (let ((interior-start
         (etypecase final-pos/edge
           (position
            ;; we're assuming that we're in sync. If we had to stack
            ;; this information then a different mechanism would be
            ;; needed.
            (chart-position-after *pos-current-section-starts-at*))
           (edge (pos-edge-ends-at leading-edge))))
        (interior-end
         (etypecase final-pos/edge
           (position final-pos/edge)
           (edge (pos-edge-starts-at final-pos/edge))))
        (exterior-start
         (etypecase final-pos/edge
           (position *pos-current-section-starts-at*)
           (edge (pos-edge-starts-at leading-edge))))
        (exterior-end
         (etypecase final-pos/edge
           (position final-pos/edge)
           (edge (pos-edge-ends-at final-pos/edge)))))

    (values interior-start interior-end
            exterior-start exterior-end)))




;;;---------------------------------------------
;;; field for an "assession number" (???)  <AN>
;;;---------------------------------------------

;; the category is defined in [rules;context:document number]


(define-sgml-tag  "AN" 'assession-number
  :initiation-action  'start-assession-number-section
  :termination-action 'end-assession-number-section )

(define-header-label "AN" 'assession-number
  ;; the actions should be identical to those of the SGML tag
  :initiation-action  'start-assession-number-section
  :termination-action 'end-assession-number-section )


(defun start-assession-number-section (edge &optional pos-before/edge)
  ;; if called from Establish-section-within-document (which
  ;; itself is called from Carry-out-actions), then the 2d argument
  ;; is the position just before the word that triggered the call.
  ;; If called from Start-SGML-section, it is the edge over the
  ;; angle-bracketed label that indicates the start of the section. 
  (declare (ignore edge pos-before/edge))
  nil )


(defun end-assession-number-section (final-pos/edge
                                     &optional leading-edge)
  ;; if called from Terminate-ongoing-section (which is itself
  ;; called from the section-marker dispatch in Carry-out-actions),
  ;; then there will only be the first argument, which will be
  ;; the position just before the word that indicated that the
  ;; section had finished.  If the call is from End-SGML-section,
  ;; then there will be two arguments. The first will be the
  ;; edge over the final angle-bracketed label, and the 2d will
  ;; be the initial one that had started the section. 

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((an
            (analyze-segment-as-assession-number interior-start
                                                 interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::assession-number
                  :referent an
                  :rule (sgml-tag-named "AN")
                  :form category::text-segment)))
      edge )))



(defun analyze-segment-as-assession-number (start-pos end-pos)
  (cond ((DJNS-article?)
         (let ((an (find-djns-assession-number-in-region
                    start-pos end-pos)))
           (when an
             (redo-current-article-as-djns an)
             an )))
        (t nil)))



;;;------------------------------------------
;;; field for the headline  <HL>
;;;------------------------------------------

(define-category headline)


(define-sgml-tag  "HL" 'headline
  :initiation-action  'start-headline-section
  :termination-action 'end-headline-section )

(define-header-label  "HL" 'headline
  :initiation-action  'start-headline-section
  :termination-action 'end-headline-section )


(defun start-headline-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  (setq *capitalization-is-uninformative* t)
  nil )


(defun end-headline-section (final-pos/edge
                                     &optional leading-edge)

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-headline interior-start
                                         interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::headline
                  :referent source
                  :rule (sgml-tag-named "HL")
                  :form category::text-segment)))
      edge )))


(defun analyze-segment-as-headline (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    :analysis-of-headline-not-written ))



;;;---------------------------------------------------------
;;; field for company ticker symbols, locations, etc.  <CO>
;;;---------------------------------------------------------

(define-category CO-field)


(define-sgml-tag  "CO" 'CO-field
  :initiation-action  'start-CO-field-section
  :termination-action 'end-CO-field-section )

(define-header-label  "CO" 'CO-field
  :initiation-action  'start-CO-field-section
  :termination-action 'end-CO-field-section )


(defun start-CO-field-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  (setq *capitalization-is-uninformative* t)
  nil )


(defun end-CO-field-section (final-pos/edge
                                     &optional leading-edge)

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-CO-field interior-start
                                         interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::CO-field
                  :referent source
                  :rule (sgml-tag-named "CO")
                  :form category::text-segment)))
      edge )))


(defun analyze-segment-as-CO-field (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    :analysis-of-CO-field-not-written ))



;;;--------------------------------------
;;; field for the "industry" codes  <IN>
;;;--------------------------------------

(define-category Industry-field)


(define-sgml-tag  "IN" 'Industry-field
  :initiation-action  'start-Industry-field-section
  :termination-action 'end-Industry-field-section )

(define-header-label  "IN" 'Industry-field
  :initiation-action  'start-Industry-field-section
  :termination-action 'end-Industry-field-section )


(defun start-Industry-field-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  (setq *capitalization-is-uninformative* t)
  nil )


(defun end-Industry-field-section (final-pos/edge
                                     &optional leading-edge)

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-Industry-field interior-start
                                               interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::Industry-field
                  :referent source
                  :rule (sgml-tag-named "IN")
                  :form category::text-segment)))
      edge )))


(defun analyze-segment-as-Industry-field (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    :analysis-of-Industry-field-not-written ))


;;;------------------------------------------
;;; field for the "government" codes  <GV>
;;;------------------------------------------

(define-category Government-field)


(define-sgml-tag  "GV" 'Government-field
  :initiation-action  'start-Government-field-section
  :termination-action 'end-Government-field-section )

(define-header-label  "GV" 'Government-field
  :initiation-action  'start-Government-field-section
  :termination-action 'end-Government-field-section )


(defun start-Government-field-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  (setq *capitalization-is-uninformative* t)
  nil )


(defun end-Government-field-section (final-pos/edge
                                     &optional leading-edge)
  ;; if called from Terminate-ongoing-section (which is itself
  ;; called from the section-marker dispatch in Carry-out-actions),
  ;; then there will only be the first argument, which will be
  ;; the position just before the word that indicated that the
  ;; section had finished.  If the call is from End-SGML-section,
  ;; then there will be two arguments. The first will be the
  ;; edge over the final angle-bracketed label, and the 2d will
  ;; be the initial one that had started the section. 

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-Government-field interior-start
                                                 interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::Government-field
                  :referent source
                  :rule (sgml-tag-named "GV")
                  :form category::text-segment)))
      edge )))


(defun analyze-segment-as-Government-field (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    :analysis-of-Government-field-not-written ))


;;;-----------------------------------
;;; the start of the text body --  TX
;;;-----------------------------------

(define-category text-body)

(define-header-label  "TX" 'text-body
  :initiation-action  'start-tx-body
  :termination-action 'end-tx-body )


(defun start-tx-body (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  (when *capitalization-is-uninformative*
    (setq *capitalization-is-uninformative* nil)))



(defun end-tx-body (final-pos/edge &optional leading-edge)
  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (declare (ignore interior-start interior-end
                     exterior-start exterior-end))

    :end-of-text-body ))

