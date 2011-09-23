;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "hook"
;;;   Module:  "drivers;actions"
;;;  Version:  1.5 May 1994

;; 1.1 (10/21/92 v2.0) Completely revamped.
;;     10/30 fixed bug in the loop
;; 1.2 (7/13/92 v2.2) Put in a case stmt for the tags and populated the
;;       section-marker case. Documented all of them
;; 1.3 (6/11/93 v2.3) Added position args to the default call
;; 1.4 (12/8) Reorganized what actions got called in the marker case
;; 1.5 (5/20/94) changed args to default case to dispatch on edge vs. position

(in-package :sparser)


(defun carry-out-actions (rule-set-action-field
                          argument 
                          position-before
                          position-after)

  (do ((tag (car rule-set-action-field)
            (car remaining-rule-set-actions))
       (function (cadr rule-set-action-field)
                 (cadr remaining-rule-set-actions))
       (remaining-rule-set-actions (cddr rule-set-action-field)
                                   (cddr remaining-rule-set-actions)))
      ((null tag))

    (tr :carrying-out tag function)

    (case tag
      (:section-marker
       ;; the marker object is encoded into the rule-set's action field
       ;; in the 'function' position.  These markers are used when the
       ;; evidence for the section is something that just indicates the
       ;; start of the section, not a paired set of indicators like sgml
       (establish-section-within-document function ;; section-marker
                                          argument ;; edge
                                          position-before))

      (:sgml-tag
       ;; the call is from an edge labeled with either the start or
       ;; end pseudo-category for sgml tag words enclosed within <..>
       ;; the function was burned into the rule-set action for the
       ;; labels' completion rules, the argument is the edge, from whose
       ;; referent the canonical action will retrieve the specific section
       ;; marker object and from that the action to take.
       (funcall function ;; either Start-SGML-section or End-SGML-section
                argument ;; the edge
                ))

      (otherwise
       (etypecase argument
         (word
          (funcall function argument position-before position-after))
         (edge
          (funcall function argument)))))))

