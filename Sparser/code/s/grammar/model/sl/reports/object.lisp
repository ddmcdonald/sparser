;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar;model:sl:reports:"
;;;  version:  0.3 April 2013

;; initiated 10/22/93 v2.3 restarting from scratch. 5/3/95 changed "+" to "-"
;; 0.1 (1/8/96) Reorganized the conceptualization to break-out the verb.
;;  (3/11/05) Elaborating cases for make-a-report. 
;; 0.2 (2/29/08) Switching over to instantiating the category.
;; 0.3 (4/3/13) Blocking the whole 'make-a-report' category in favor of
;;      just the subj/verb tags. 

(in-package :sparser)

;;;----------------------------
;;; report verbs by themselves
;;;----------------------------

(define-category report-verb
  :specializes event
  :instantiates self
  :binds ((name . (:primitive (:or word polyword))))
  :index (:permanent :key name))
;; Realization is set up in the def form
;;  :realization (:main-verb name))

; (define-report-verb "report")
; (define-report-verb '("say" :past-tense "said"))

;;--- def-form

(defun define-report-verb (string/list)
  (let ((word/spec
         (etypecase string/list
           (string (resolve-string-to-word/make string/list))
           (list (deref-rdata-word-with-morph string/list))))
	;; when it's a spec, what will happen in :main-verb??
        (category
         (category-named 'report-verb)))
    (let* ((word (if (listp string/list)
		   (car string/list)
		   string/list))
	   (obj (define-individual 'report-verb
		    :name word)))
    (make-verb-rules word/spec category obj))))


;;;------------------
;;; partial relation
;;;------------------

(define-category someone-reports
  :specializes modifier  ;; hook to fold into clause that gives the report
  :instantiates self
  :binds ((reporter . (:or person company title)))
  :index (:temporary :key reporter)
  :realization ((:tree-family just-the-tags
                 :mapping ((result . :self)
                           (agent . reporter)
                           (subj-verb . :self)
                           (np . (person company title))
                           (vg . report-verb)))))




;;----------------------------
;; Attempt at full relation

;; This full relation lends itself to false positives since it gloms onto
;; any event to the right of the verb, e.g.
;;                                 "but"
;; e0    PRONOUN/FEMALE          2 "she" 3
;; e3    EVENTaGENT              3 "said testing" 5
;; e4 e5                           "for" :: for, FOR
;;  etc.
#+ignore
(define-category  make-a-report
  :specializes event
  :instantiates self
  :binds ((agent . (:or person company))
          (report))
  :index (:temporary :sequential-keys agent report)
  :realization
    ((:tree-family that-complement
      ;;  "Apple reports that its ..."
      :mapping ((s . event)
                (subj-verb . someone-reports)
                (np . (person company))
                (vg . report-verb)
                (vp . event\agent)
                (s/that-comp . event)
                (result . :self)
                (agent . agent)
                (theme . report))
      :additional-rules
        ((:reversed-tag (subj-verb (vg np)
                          :head left-referent
                          :binds (agent right-referent)))
         (:final-tag (s (s "," subj-verb)
                       :head third-daughter
                       :binds (report first-daughter)))))))


