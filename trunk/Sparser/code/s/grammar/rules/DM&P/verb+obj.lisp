;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "verb+obj"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  November 1994

;; initiated 8/23/94 v2.3, broken out from [sibling relations].
;; Tweeked 11/21

(in-package :sparser)

;;;------------------------------------------
;;; an NP segment after a verb is its object
;;;------------------------------------------

(define-category  verb-object
  :specializes nil
  :instantiates self
  :binds ((verb)
          (object))
  :index (:temporary :sequential-keys verb object))


(def-form-rule (verb-segment np)   ;; the verb is the anchor
  :form  verb+object
  :referent (:function dm&p/note-verb+object left-edge right-edge)
  :new-category verb+object-segment )


(defun dm&p/Note-verb+object (verb-segment object-segment)
  (let ((head-of-object
         ;; copied from subj+verb
         (if (segment? object-segment)
           (referent-of-segment object-segment)
           (else ;; it's probably a function word case like "you"
             (unless (individual-p object-segment)
               (when *break-on-pattern-outside-coverage?*
                 (break "Either a threading bug or a design flaw~
                         ~%The subject edge refers to neither a ~
                         segment~%or an individual:~%  ~A~%"
                        object-segment))
               (return-from dm&p/Note-verb+object))
             object-segment)))
        (verb-term
         (head-of-verb-segment verb-segment))
        r )

    (if head-of-object
      (if verb-term
        (if (setq r (find-individual 'verb-object
                      :verb verb-term
                      :object head-of-object))
          r
          (else
            (setq r (make-an-individual 'verb-object
                      :verb verb-term
                      :object head-of-object))
            r ))

        (else
          (when *break-on-pattern-outside-coverage?*
            (break "no verb-term"))
          (return-from dm&p/Note-verb+object)))
      (else
        (when *break-on-pattern-outside-coverage?*
          (break "no head-of-object"))
        (return-from dm&p/Note-verb+object)))))

