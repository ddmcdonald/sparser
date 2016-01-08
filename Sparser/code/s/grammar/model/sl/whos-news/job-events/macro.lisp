;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "macro"
;;;   Module:  "model;sl:whos news:job events:"
;;;  version:  September 1995

;; initiated 4/13/94 v2.3. Threw out the original scheme and reconceptualized
;; the protocol 3/8/95  ...4/28.  (9/12) tweeked the autodef

(in-package :sparser)

;;;--------------
;;; autodef data 
;;;--------------

#|  Added to the autodef-tableau

(job-event
  (get-position
     )
  (leave-position
     ))
|#

(define-autodef-data  'job-event
  :module *job-events*
  :not-instantiable t
  :display-string "job event verbs"
  :description "A verb that involves a person, the position they have at some organization, and possibly an agent that gives them the position"
  :examples "\"elect\", \"name\", \"leave\"" )

(define-autodef-data  'get-position
  :display-string "getting a position"
  :description "A job-event verb where the person gets a new or an additional position"
  :examples "\"name\", \"confirm\""
  :module *job-events*
  :dossier "dossiers;job events"
  :form 'define-get-position-verb  ;; called by autodef
  :write-fn 'save-get-position-verb )

(define-autodef-data  'leave-position
  :display-string "leaving a position"
  :description "A job-event verb where after the event the person no longer has one or more of the positions they formerly held"
  :examples "\"retire\", \"leave\""
  :module *job-events*
  :dossier "dossiers;job events"
  :form 'define-leave-position-verb
  :write-fn 'save-leave-position-verb )


;;;---------
;;; drivers
;;;---------

(defun define-get-position-verb (string)
  (let ((new-category
         (instantiate-job-event/no-realization string t)))

    (setq *slvd/referent* new-category
          *slvd/reference-category* category::get-position
          *slvd/labeling-category* new-category)

    (setq *predefined-partial-rdt-mapping*
          `((s . ,category::job-event)
            (vg . ,new-category)))

    (launch-the-slvd-window)
    (initialize-slvd-state string "job event"
                           "for getting a position")

    ;; This return value signals to Autodefine-word that
    ;; the save-routine is going to be handled asynchronously
    ;; on this side of the fence.
    :self-contained ))


(defun define-leave-position-verb (string)
  (break "write this code!") string)


;;;--------------------
;;; the 'macro' proper
;;;--------------------

(defun instantiate-job-event/no-realization (verb-string
                                             get-pos?)
  (let* ((name (intern (concatenate 'string
                                    verb-string
                                    "/JOB-EVENT")
                       *sparser-source-package*))
         (form 

  `(define-category  ,name
     :instantiates  job-event
     :specializes  ,(if get-pos?
                      'get-position
                      'leave-position)

     :index (:special-case :find find/je
                           :index index/je
                           :reclaim reclaim/je) )  ))
    (eval form)))


;;;-----------------------------------------
;;; the 'save' routine that writes that out
;;;-----------------------------------------

(defun save-get-position-verb (s)  ;; stream
  ;; Called from slvd/save-to-file.  All the globals setup by
  ;; define-get-position-verb and the zillion intermediaries
  ;; are still live.

  (format s "~&~%~A~%" (day-month-&-year-as-formatted-string))
  (format s "~&(define-category  ")
  (format s "~A" (string-capitalize
                  (symbol-name (cat-symbol *slvd/referent*))))
  (format s "~&  :instantiates job-event~
             ~%  :specializes  get-position~
             ~%  :index (:special-case :find find/je~
             ~%                        :index index/je~
             ~%                        :reclaim reclaim/je)~
             ~%  :realization~
             ~%     (:tree-family ")
  (format s "~A~
             ~%      :mapping ("
          (string-downcase
           (symbol-name (etf-name *rdt/selected-schema*))))

  (let ((subst-symbol (car (first *rdt/mapping*)))
        (value (cdr (first *rdt/mapping*))))
    (write-mapping-pair subst-symbol value s)

    (dolist (pair (rest *rdt/mapping*))
      (setq subst-symbol (car pair)
            value (cdr pair))
      (format s "~%                ")
      (write-mapping-pair subst-symbol value s))
    (format s ")"))

  (format s "~&      :verb ")
  (write-minimal-irregulars-as-rdata *ad/word-being-defined* s)

  (format s "))"))

