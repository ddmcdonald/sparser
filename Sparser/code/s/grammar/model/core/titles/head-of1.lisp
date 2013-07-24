;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "head of"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  July 2013

;; initiated 5/9/91, system version 1.8.4
;; 1.0 (7/23/13) Reworking somewhat like board-of-directors

(in-package :sparser)

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
;; 5/26 --this is the only rule that mentions "head" literally
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
