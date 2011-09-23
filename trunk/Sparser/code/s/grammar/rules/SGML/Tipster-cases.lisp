;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "Tipster cases"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  0.4 May 1994

;; initiated 10/19/92, populated by C&S 5/92,
;; specific treatments 6/18
;; (12/28 v2.3) added another case to Analyze-segment-as-document-number
;; 0.1 (12/9/93) Revamped the organization by C&S to fit new scheme
;; 0.2 (12/29) flushed TXT routines as redundant with TX routines of djns
;; 0.3 (5/5/94) tweeked parameter pattern
;; 0.4 (5/19) added adjustment-control in DOC, and gave TXT its own routines
;;      rather than share them with TX

(in-package :sparser)

#|
   These are the tags that should appear at the beginning of every
 article, with the interpretation that is appropriate to Tipster.
|#

;; DOC
;; DOCNO
;; DD (twice)
;; SO
;; TXT

;;;------------------------------------------
;;; field for the document start  <doc>
;;;------------------------------------------

(define-category Document-start)

(define-sgml-tag  "doc" 'document-start
  :initiation-action  'start-document-start-section
  :termination-action 'end-document-start-section )


(defun start-document-start-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  (use-original-lines-of-text)
  nil )


(defun end-document-start-section (final-pos/edge
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

      ;; there's no point in spanning the entire article with an
      ;; edge, though this moment might be nice for other things,
      ;; so I'm keeping the bulk of the framework so it doesn't have
      ;; to be typed in again later.

    (declare (ignore interior-start interior-end
                     exterior-start exterior-end))

    :document-start_ended ))



;;;------------------------------------------
;;; field for the "document number"  <DOCNO>
;;;------------------------------------------

(define-category Document-number)


(define-sgml-tag  "DOCNO" 'document-number
  :initiation-action  'start-document-number-section
  :termination-action 'end-document-number-section )


(defun start-document-number-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  nil )


(defun end-document-number-section (final-pos/edge
                                     &optional leading-edge)

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-document-number interior-start
                                                interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::document-number
                  :referent source
                  :rule (sgml-tag-named "DOCNO")
                  :form category::text-segment)))
      edge )))



(defun analyze-segment-as-document-number (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    (ecase layout
      (:single-span
       (pull-out-document-number-from-edge
        (ev-top-node (pos-starts-here start-pos))))
      (:contiguous-edges
       (pull-document-number-out-of-edge-sequence
        start-pos end-pos)))))


;;;-----------------------------------------
;;; field for the article's "source":  <SO>
;;;-----------------------------------------

(define-category Article-source)

(define-sgml-tag  "SO" 'Article-source
  :initiation-action  'start-Article-source-section
  :termination-action 'end-Article-source-section )


(defun start-Article-source-section (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  nil )


(defun end-Article-source-section (final-pos/edge
                                     &optional leading-edge)

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-article-source interior-start
                                               interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::article-source
                  :referent source
                  :rule (sgml-tag-named "SO")
                  :form category::text-segment)))
      edge )))



(defun analyze-segment-as-article-source (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    (case layout
      (:single-span
       (pull-out-source-from-edge
        (ev-top-node (pos-starts-here start-pos)))))))



;;;------------------------------------
;;; field for the article's date: <DD>
;;;------------------------------------

(define-category  Article-date)


(define-sgml-tag  "DD" 'article-date
  :initiation-action  'start-article-date-segment
  :termination-action 'end-article-date-segment )


(defun start-article-date-segment (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  nil )

(defun end-article-date-segment (final-pos/edge
                                  &optional leading-edge)

  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (let* ((source
            (analyze-segment-as-article-date interior-start
                                             interior-end))
           (edge (make-edge-over-long-span
                  exterior-start exterior-end
                  category::article-date
                  :referent source
                  :rule (sgml-tag-named "DD")
                  :form category::text-segment)))
      edge )))


(defun analyze-segment-as-article-date (start-pos end-pos)
  (let ((layout (analyze-segment-layout start-pos end-pos)))
    (ecase layout
      (:single-span
       (pull-out-date-from-edge
        (ev-top-node (pos-starts-here start-pos))))
      (:contiguous-edges
       (pull-date-out-of-edge-sequence start-pos end-pos)))))



;;;--------------------------------------
;;; the start of the text body --  <TXT>
;;;--------------------------------------

(define-sgml-tag  "TXT" 'text-body
  :initiation-action  'start-txt-body
  :termination-action 'end-txt-body )



(defun start-txt-body (edge &optional pos-before/edge)
  (declare (ignore edge pos-before/edge))
  (when *capitalization-is-uninformative*
    (setq *capitalization-is-uninformative* nil))
  (adjust-text-to-fixed-line-length))


(defun end-txt-body (final-pos/edge &optional leading-edge)
  (multiple-value-bind (interior-start interior-end
                        exterior-start exterior-end)
                       (calculate-labeled-segment-boundaries
                        final-pos/edge leading-edge)
    (declare (ignore interior-start interior-end
                     exterior-start exterior-end))

    :end-of-text-body ))

