;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "Apple cases"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  June 1994

;; initiated 1/13/94 v2.3 
;; redesigned from header labels to marker-pairs 5/20.  Fleshed out several
;; cases 6/9

(in-package :sparser)


;;--- paired markup
;; para
;; section
;; subsection
;; sequence
;; list
;; item
;; warn

;;--- hidden paired markup
;; ital
;; bold

;;--- annotation
;; syn


;(trace-sections)
;(untrace-sections)
;(trace-hidden-markup)
;(untrace-hidden-markup)


;;;--------------------
;;; section delimiters
;;;--------------------

(define-markup-tag-pair 'bkb/paragraph
  "/para"  "/epara"
  :initiation-action 'start-new-paragraph
  :termination-action 'finish-ongoing-paragraph )

;; uses standard paragraph routines



(define-markup-tag-pair 'bkb/section
  "/section"  "/esection"
  :initiation-action 'bkb/start-section-title
  :termination-action 'bkb/end-section-title )

(defun bkb/start-section-title (sm-edge)
  (when *trace-sections*
    (format t "~%section start: ~A~%" sm-edge))

(defun bkb/end-section-title (end-edge start-edge)
  (when *trace-sections*
    (format t "~%section end: ~A~%" end-edge))
  (synchronize-with-workbench-views start-edge end-edge))



(define-markup-tag-pair 'bkb/subsection
  "/subsection"  "/esubsection"
  :initiation-action 'bkb/start-subsection-title
  :termination-action 'bkb/end-subsection-title )

(defun bkb/start-subsection-title (sm-edge)
  (when *trace-sections*
    (format t "~%subsection start: ~A~%" sm-edge)))

(defun bkb/end-subsection-title (end-edge start-edge)
  (when *trace-sections*
    (format t "~%subsection end: ~A~%" end-edge))
  (synchronize-with-workbench-views start-edge end-edge))



(define-markup-tag-pair 'bkb/sequence
  "/sequence"  "/esequence"
  :initiation-action 'bkb/start-sequence
  :termination-action 'bkb/end-sequence )

(defun bkb/start-sequence (sm-edge)
  (when *trace-sections*
    (format t "~%sequence start: ~A~%" sm-edge)))

(defun bkb/end-sequence (end-edge start-edge)
  (when *trace-sections*
    (format t "~%sequence end: ~A~%" end-edge))
  (synchronize-with-workbench-views start-edge end-edge))



(define-markup-tag-pair 'bkb/list
  "/list"  "/elist"
  :initiation-action 'bkb/start-list
  :termination-action 'bkb/end-list )

(defun bkb/start-list (sm-edge)
  (when *trace-sections*
    (format t "~%list start: ~A~%" sm-edge)))

(defun bkb/end-list (end-edge start-edge)
  (when *trace-sections*
    (format t "~%list end: ~A~%" end-edge))
  (synchronize-with-workbench-views start-edge end-edge))



(define-markup-tag-pair 'bkb/item
  "/item"  "/eitem"
  :initiation-action 'bkb/start-item
  :termination-action 'bkb/end-item )   ;; interior markup !!

(defun bkb/start-item (sm-edge)
  (when *trace-sections*
    (format t "~%item start: ~A~%" sm-edge)))

(defun bkb/end-item (end-edge start-edge)
  (when *trace-sections*
    (format t "~%item end: ~A~%" end-edge))
  (synchronize-with-workbench-views start-edge end-edge))




(define-markup-tag-pair 'bkb/figure
  "/fig"  "/efig"
  :initiation-action 'bkb/start-figure
  :termination-action 'bkb/end-figure )

(defun bkb/start-figure (sm-edge)
  (when *trace-sections*
    (format t "~%figure start: ~A~%" sm-edge)))

(defun bkb/end-figure (end-edge start-edge)
  (when *trace-sections*
    (format t "~%figure end: ~A~%" end-edge))
  (synchronize-with-workbench-views start-edge end-edge))




(define-markup-tag-pair 'bkb/warning
  "/warn"  "/ewarn"
  :initiation-action 'bkb/start-warning
  :termination-action 'bkb/end-warning )

(defun bkb/start-figure (sm-edge)
  (when *trace-sections*
    (format t "~%warning start: ~A~%" sm-edge)))

(defun bkb/end-figure (end-edge start-edge)
  (when *trace-sections*
    (format t "~%warning end: ~A~%" end-edge))
  (synchronize-with-workbench-views start-edge end-edge))




;;;--------------
;;; face changes
;;;--------------

(define-invisible-markup :tag-pair  'bold-face
  "/bold"  "/ebold"
  :initiation-action 'start-bold-region
  :termination-action 'end-bold-region)

(defun start-bold-region (position)
  (when *trace-hidden-markup*
    (format t "~%bold region starts at p~A~%"
            (pos-token-index position))))

(defun end-bold-region (position)
  (when *trace-hidden-markup*
    (format t "~%bold region ends at p~A~%"
            (pos-token-index position))))



(define-invisible-markup :tag-pair  'italic-face
  "/ital"  "/eital"
  :initiation-action 'start-italic-region
  :termination-action 'end-italic-region)

(defun start-italic-region (position)
  (when *trace-hidden-markup*
    (format t "~%italic region starts at p~A~%"
            (pos-token-index position))))

(defun end-italic-region (position)
  (when *trace-hidden-markup*
    (format t "~%italic region ends at p~A~%"
            (pos-token-index position))))




;;;-----------------------------------
;;; embedded annotation on every word
;;;-----------------------------------

(define-invisible-markup :annotation 'syntax
  "/syn"
  :initiation-action 'set-up-to-annotate-prior-word
  :interior-markup '(interior-markup-for-syn
                     @ADVL
                     @DN
                     @+FMAINV
                     @SUBJ
                     ))

(defun set-up-to-annotate-prior-word (position-after features)
  (declare (ignore position-after features))
  (break)
  )

