;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "control thread"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  0.1 June 1996

;; broken out of [define-rule] 4/27/  Tweeked ..5/16.  Added some just-before-saving
;; checks 6/14.  8/28 tweeked rdt/Abort-rule-population-process.
;; 11/16 tweeked rdt/Setup-next-pattern to check for patterns being complete
;; just as they are filled in. 
;; 0.1 (6/27/96) changed rdt/Setup-next-pattern to handle a timing error.

(in-package :sparser)


;;;----------------------
;;; item on Sparser menu
;;;----------------------

(defparameter *define-rule-menu-item*
  (make-instance 'menu-item
    :menu-item-title "define rule"
    :menu-item-action 'launch-the-rule-defining-tableau
    :disabled  *rule-defining-window*
    :update-function 'check-if-rdt-is-up ))


(defun check-if-rdt-is-up (rdt-menu-item)
  (if *rule-defining-window*
    (ccl:menu-item-disable rdt-menu-item)
    (ccl:menu-item-enable rdt-menu-item)))


(defun launch-the-rule-defining-tableau ()
  ;; action for the 'define rule' button on the Sparser menu
  (setq *rule-defining-window*
        (launch-schema-selection-window)))



;;;-------------------------------------
;;; leaving the rule definition tableau
;;;-------------------------------------

(defun rdt/Abort-rule-population-process (abort-button)
  ;; Always active. Takes us out of every rule-defining window
  ;; that's been active.  Notice the connection to the verb-defining
  ;; tableau (slvd).
  (declare (ignore abort-button))
  (ccl:window-close *rdt/rule-populating-window*)
  (when *rdt/schema-selection-window*
    (ccl:window-close *rdt/schema-selection-window*))
  (when *slvd/referent*
    (slvd/canceled-out-of-rule-population))
  (when *unknown-category-query-dialog*
    (ukcq/return-to-rule-def-tableau :ignore)))


(defun rdt/Choose-a-different-schema (different-schema-button)
  ;; This button is always active. It flushes the current case and
  ;; accumulated data and goes back to the schema selection window.
  (declare (ignore different-schema-button))
  (ccl:window-close *rdt/rule-populating-window*)
  (ccl:set-window-layer *rdt/schema-selection-window* 0)
  (initialize-schema-selection-state))



;;;-------------------------------------------------
;;; moving from schema selection to case population
;;;-------------------------------------------------

(defun rdt/Pass-selected-schema-to-rule-tableau (schema-window-ok-button)
  (ccl:dialog-item-disable schema-window-ok-button)
  (launch-rdt-rule-populating-window)
  (ccl:dialog-item-disable *rdtrpw/ok-button*)
  (populate-rule-tableau-from-selected-schema))


(defun populate-rule-tableau-from-selected-schema ()
  ;; The initial call from rdt/Pass-selected-schema-to-rule-tableau
  (setup-rdt-case-section-state)
  (decode-selected-case-&-populate-rule-tableau))




;;;----------------------------------
;;; moving from one case to the next
;;;----------------------------------

(defun setup-rdt-case-section-state ()
  ;; called from Populate-rule-tableau-from-selected-schema
  ;; the first time through
  (let ((cases (copy-list (etf-cases *rdt/selected-schema*))))
    (if *rdt/selected-schema-case*
      ;; one was selected before we moved to the Populate window
      (setq *rdt/schema-cases-remaining*
            (delete *rdt/selected-schema-case* cases))
      ;; we arbitrarily pick the first one
      (setq *rdt/selected-schema-case* (pop cases)
            *rdt/schema-cases-remaining* cases))

    (unless *rdt/schema-cases-remaining*
      (rdt/setup-for-no-more-patterns))))


(defun rdt/Setup-next-pattern (next-pattern-button)
  ;; what happens for all the other cases

  ;; setup
  (ccl:dialog-item-disable next-pattern-button)
  (setup-rdt-semantic-widgets-in-canonical-positions)
  (initialize-rdt-accumulators)
  (decode-selected-case-&-populate-rule-tableau)

  ;; check whether it happens that the pattern is already
  ;; filled in just because all of its labels were set
  ;; in earlier patterns.. If it is, we'll reset the
  ;; buttons accordingly.
  (when (are-rdt-fields-complete? *rdt/case-descriptors*)
    (ccl:dialog-item-enable *rdtrpw/ok-button*)))


;;--- checking whether we should move to the next case

(defun is-rdt-tableau-completely-filled-in? ()
  ;; called from rdtrpw/Interpret-typed-chars-as-category or
  ;; Fill-rdt-field each time a field is filled in, or from
  ;; rdt/Setup-next-pattern as an initial check.
  (when (are-rdt-fields-complete? *rdt/case-descriptors*)
    (rdt/Construct-mapping-from-tableau)
    (if (rdt/next-case-in-selected-schema)
      (then
        (ccl:dialog-item-enable *rdtrpw/next-pattern-button*)
        (ccl:set-default-button *rdt/rule-populating-window*
                                *rdtrpw/next-pattern-button*))

      (ccl:dialog-item-enable *rdtrpw/ok-button*))))


(defun rdt/Next-case-in-selected-schema ()
  ;; called from Is-rdt-tableau-completely-filled-in? when the
  ;; current case has been filled in. 
  (push *rdt/selected-schema-case*
        *rdt/schema-cases-done*)
  (setq *rdt/selected-schema-case*
        (pop *rdt/schema-cases-remaining*))
  (unless *rdt/selected-schema-case*
      (rdt/setup-for-no-more-patterns))
  *rdt/selected-schema-case* )


(defun rdt/Setup-for-no-more-patterns ()
  (ccl:set-dialog-item-text *rdtrpw/next-pattern-button*
                            "no more patterns")
  ;; switch defaults
  (set-default-button *rdt/rule-populating-window*
                      *rdtrpw/ok-button*))


;;;-------------
;;; final phase
;;;-------------

(defun rdt/Readout-rule-tableau (evaluate-button)
  ;; This button becomes active when all the cases of the etf have 
  ;; been filled in.
  (ccl:dialog-item-disable evaluate-button)

  ;; sanity checks, defaulting
  (unless *rdt/reference-category*
    (rdt/default-the-reference-category-for-purposes-of-saving-the-rule))
  (check-mapping-for-duplicates)
  (check-that-all-substitution-symbols-have-values)

  (write-cfr-from-rdt-tableau-values)
  (rdt/save-new-rule)
  ;; (rtd/shutdown) 
  ;; We are doing the shut down off the announcement of results
  ;; that's done *rdt/result-ok-button* as part of the call to
  ;; Announce-effect-of-rule-definition that done by the save routine.
  )



(defun rtd/shutdown ()
  (ccl:window-close *rdt/rule-populating-window*)
  (when *rdt/schema-selection-window*
    (ccl:window-close *rdt/schema-selection-window*)))

