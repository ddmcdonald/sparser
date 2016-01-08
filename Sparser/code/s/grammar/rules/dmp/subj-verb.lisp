;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "subj+verb"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  August 1994

;; initiated 8/23/94 v2.3, broken out from [sibling relations]

(in-package :sparser)

;;;--------------------------------------------
;;; an NP segment before a verb is its subject
;;;--------------------------------------------

(define-category  subject-verb
  :specializes nil
  :instantiates self
  :binds ((subject)
          (verb))
  :index (:temporary :sequential-keys verb subject))


(def-form-rule (np verb-segment)   ;; the verb is the anchor
  :form  subj+verb
  :referent (:function dm&p/note-subj+verb left-edge right-edge)
  :new-category subj+verb-segment )


(defun dm&p/note-subj+verb (subj-segment verb-segment)
  (let ((head-of-subj
         (if (segment? subj-segment)
           (referent-of-segment subj-segment)
           (else ;; it's probably a function word case like "you"
             (unless (individual-p subj-segment)
               (when *break-on-pattern-outside-coverage?*
                 (break "Either a threading bug or a design flaw~
                         ~%The subject edge refers to neither a ~
                         segment~%or an individual:~%  ~A~%"
                        subj-segment))
               (return-from dm&p/note-subj+verb))
             subj-segment)))
        (verb-term
         (head-of-verb-segment verb-segment))
        r )

    (unless head-of-subj
      (when *break-on-pattern-outside-coverage?*
        (break "No value for head of subject"))
      (return-from dm&p/note-subj+verb))
    (unless verb-term
      (when *break-on-pattern-outside-coverage?*
        (break "No value for verb"))
      (return-from dm&p/note-subj+verb))

    (if (setq r (find-individual 'subject-verb
                  :subject head-of-subj
                  :verb verb-term))
      ;; we have another instance of an already appreciated relation
      r 
      (else
        (setq r (make-an-individual 'subject-verb
                 :subject head-of-subj
                 :verb verb-term))
        r ))))

