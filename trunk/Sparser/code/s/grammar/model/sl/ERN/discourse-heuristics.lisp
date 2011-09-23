;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "discourse heuristics"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 1/8/96. Elaborated through 1/9

(in-package :sparser)

#|
;;; This is supposed to pick up straglers,
;;;   though if they're all of predictable types then the after-para action
;;;   might do just as well with less hassle.

(define-context-variable *position-reached-by-final-discourse-pass*
                         (chart-position 0)
               ;;/// this can't be evaled at load-time
  "Used by any routines that are scanning salient individuals 
   in the discourse history that are only partially saturated to 
   look for ways to fill in the empty slots from the discourse" )

(install-after-paragraph-action 'update-discourse-pass-position)

(defun update-discourse-pass-position (p)
  (declare (ignore p)))  |#


;;;-------------------------
;;; Using the topic-company
;;;-------------------------

;(install-after-paragraph-action 'fleshout-partial-financial-reports)
;(remove-after-paragraph-action 'fleshout-partial-financial-reports)


(defun fleshout-partial-financial-reports (p)
  (declare (ignore p))
  (let ((topic-company (topic-company))
        fr  chg )

    (dolist (fr/dh (discourse-entry (category-named 'financial-report)))

      ;; Check that we haven't already done it during an earlier
      ;; paragraph -- we assume that if a relation didn't get
      ;; fully fleshed out in the (first full) paragraph it appears in
      ;; that there isn't going to be any information in later articles
      ;; that would help.
      (unless (member (first fr/dh) *financial-reports-in-article*)
        (setq fr (first fr/dh))

        (when (null (value-of 'company fr))
          (when topic-company
            (bind-variable 'company topic-company fr)
            ;(format t "~&~%Set the 'company' of ~A~
            ;           ~%to ~A~%~%" fr topic-company)
            ))

        (push fr *financial-reports-in-article*)))


    (dolist (chg/dh (discourse-entry (category-named 'change-in-value-of-fin-dat)))
      (setq chg (first chg/dh))
      
      (when (value-of 'value-reached chg)
        ;; These aren't interesting without this slot filled
        
        (when (null (value-of 'company chg))
          (when topic-company
            (bind-variable 'company topic-company chg)
            ;(format t "~&~%Set the 'company' of ~A~
            ;           ~%to ~A~%~%" chg topic-company)
            ))
        
        (let ((fr (define-individual 'financial-report
                    :company (value-of 'company chg)
                    :datum (value-of 'datum chg)
                    :reporting-period (value-of 'time-period chg))))
          
          (if (itype (value-of 'change chg) 'change-by-amount)
            (let ((amt-of-chg (value-of 'change chg)))
              (bind-variable 'direction-of-change
                             (value-of 'direction amt-of-chg)
                             fr)
              
              ;; This distinction would be better caught at the source
              ;; when the With-binding is done, but right now that
              ;; form doesn't have the notational capacity to make
              ;; a distinction based on the type of the value being
              ;; copied up.
              (if (itype (value-of 'amount amt-of-chg) 'percent)
                (bind-variable 'percentage-changed
                               (value-of 'amount amt-of-chg)
                               fr)
                (bind-variable 'value
                               (value-of 'value-reached chg)
                               fr))))

          (unless (member fr *financial-reports-in-article*)
            (push fr *financial-reports-in-article*)))))

    *financial-reports-in-article* ))

