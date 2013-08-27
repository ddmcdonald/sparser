;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "of-titles"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  August 2013

;; Initiated 8/26/13 to collect up all the cases of this pattern. 

(in-package :sparser)


;;//// Make the obvious macro if this is the way to go
;;  when considered from a NLG point of view
(define-category chief-of 
  :specializes title
  :instantiates self
  :rule-label title
  :binds ((company . company))
  :index (:key company)
  :realization (:tree-family empty-head-of-complement
                :mapping ((of-item . company)
                          (result-type . chief-of)
                          (np . title)
                          (base-np . "chief")
                          (complement . company))))


;; (define-debris-analysis-rule  chief+of+staff
;; But given "[deputy chief] of [staff] of ..."
;;  The DA has to operate middle out (not tested recently) 
;;  and look under the completed title edge.
;; Perhaps a notion of 'compound' title name, but it needs
;;  motivation
(define-single-word-title "chief of staff")

;;;----------
;;; head of
;;;----------
;; initiated 5/9/91, system version 1.8.4
;; 1.0 (7/23/13) Reworking somewhat like board-of-directors

(define-category head-of 
  :specializes title
  :instantiates self
  :rule-label title
  :binds ((company . company))
  :index (:key company)
  :realization (:tree-family empty-head-of-complement
                :mapping ((of-item . company)
                          (result-type . head-of)
                          (np . title)
                          (base-np . "head")
                          (complement . company))))

;; The result type would normally be :self, except that
;; in this case we're overriding the label of the np rule
;; to be title, which is inconsistent with supplying 
;; a company as the index variable. 

#|
;; 5/26/91 --this is the only rule that mentions "head" literally
;;         it should get flushed in favor of the verb
(def-cfr title ("head" ThisCo)
  :referent (:composite  head+company
                         left-edge right-edge))

;;;-------------------------------------------
;;; rules specific to "head" taken as a title
;;;-------------------------------------------

(def-cfr title (title of-company-activity)
  :referent (:merge find-or-make/title-of-company-activity
                    left-edge right-edge))

(defun find-or-make/title-of-company-activity (title activity)
  activity)
|#


;;;------------------------
;;; area of responsibility
;;;------------------------
;; initiated 5/17/95. 8/19/13 Revised to use search for an np and
;; to add the area to a modified-title rather than make an edge

;;--- "director of engineering" -- 1995, was just a word
;; "Deputy Chief of Staff of the Iranian Armed Forces" 

(define-debris-analysis-rule  title-of-area1
  :pattern ( title "of" np )
  :action title-of-area1/action )

(defun title-of-area1/action ()
  (let* ((title-edge (lookup-matched-tt 'first))
         (title (edge-referent title-edge)) ; 
         (np-edge (lookup-matched-tt 'third))
         (np-ref (edge-referent np-edge)))
    (unless (itypep (edge-referent title-edge) 'modified-title)
      (setf (edge-referent title-edge)
            (setq title (convert-to-modified-title title))))

    ;; Really ought to have a rule that packages this property.
    ;; Then could just call make-binary-edge
    (bind-variable 'area-of-responsibility np-ref title)
    (let ((start (pos-edge-starts-at title-edge))
          (end (pos-edge-ends-at np-edge)))
      (make-edge-over-long-span start end category::title
        :rule :title-of-area1/action
        :form category::np
        :referent title))))

;; 1995
;;--- "general manager of personal communications services"
#| 'gap' items still under development
(define-debris-analysis-rule  title-of-area2
  :pattern ( title "of" (:gap :no-close-class-words) )
  :action title-of-area2/action )

(defun testing-actions2 () ;; title-of-area2/action
  (break "found it -- figure out how to make the edge"))  |#

