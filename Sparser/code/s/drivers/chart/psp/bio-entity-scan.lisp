;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "bio-entity-scan"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  February 2016

;; 8/11/14 This was intended for a scan that did not include bracket
;; checking so we could experiment with an alternative way of doing it.
;; That's yet to be written, so taking it over for other purposes.
;; 5/26/15 Stripping parts out that conflict with newer material.
;; Eventually should probably just drop the file and expunge references
;; to it once we've gleaned all we can. Cont. 2/8/16.

(in-package :sparser)


;;; Sweep for heuristic named entities for R3 / Big Mechanism bio entities

;; lookup-the-kind-of-chart-processing-to-do uses the keyword 
;; :r3-entity-sweep to call this function. The lookup fn is
;; called from chart-based-analysis which has the catch to terminate
;; chart parsing. 

; (setq *kind-of-chart-processing-to-do* :r3-entity-sweep)

; (p "alpha phi omega")
; (p "alpha phi omega. apple")  ;; walk over period
; (p "alpha AAA omega")  ;; full caps

; (define-polyword "aa bb cc")
; (p "alpha aa bb cc omega")  ;; continue after noticing polyword

; (p "alpha N76 omega")

; (p "alpha aa bb cc omega. N22 apple BBB")


;;---- move to somewhere under biology.

(defparameter *created-bio-entities* nil)

#+ignore
(defvar *bio-category-for-reifying* nil
  "Set the first time it's used. When we convert full caps or a
   no-space term to a bio entity, this is the category used for
   both the type of the new individual and for its label in 
   the chart. Set the first time its needed.")

#+ignore
(defun bio-category-for-reifying ()
  (or *bio-category-for-reifying*
      (let ((c (category-named 'bio-entity :break-if-none)))
        (setq *bio-category-for-reifying* c)
        c)))

#+ignore
(defun reify-bio-entity (name)
  (push name *created-bio-entities*)
  (let* ((category (bio-category-for-reifying))
         ;; use a new type that's intentially indeterminate?
         (kind (cat-symbol category)))
    (let ((form `(def-bio ,name ,kind :takes-plurals nil)))
      (save-reified-bio-entity-to-file name kind)
      (let ((i (eval form)))
        i))))


#|
(defparameter *fullcaps-to-bio-entities* nil ;; an alist
  "It's overkill to introduce edge checking into r3-entity-pass-loop
   so just caching the ones we find here to avoid duplicates")

(defun reify-fullcaps-as-bio-entity (position-before word)
  ;; Called from check-for-full-caps-hack, but on mixed case
  ;; as well as full caps
  (push-debug `(,position-before ,word)) ;(break "caps")
  (let* ((position-after (chart-position-after position-before))
         (chars (actual-characters-of-word 
                 position-before position-after `(,word)))
         (i (cdr (assoc chars *fullcaps-to-bio-entities*
                        :test #'string=))))
    (unless i
      (setq i (reify-bio-entity chars))
      (push `(,chars . ,i) *fullcaps-to-bio-entities*))
    (let* ((cfr (retrieve-single-rule-from-individual i))
           (form (cfr-form cfr)))
      (let ((edge (install-preterminal-edge
                   cfr word position-before position-after
                   (bio-category-for-reifying) form i)))
        edge))))  |#


