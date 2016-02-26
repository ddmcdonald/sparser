;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules to turn off"
;;;   Module:  "model;dossiers;"
;;;  version:  January 2016

;; initiated 11/24/12 to solve problem of rules interferring with what's
;; needed in Grok. The full set of rules and actions are designed for
;; deep parsing and information extraction. They can make assumptions
;; that are not suitable for other analysis modes such as Fire or Grok
;; and are not amenable to handle by omitting grammar modules or specific
;; switch settings.
;; 0.1 (7/12/13) Added a record to keep from trying to delete the same
;;     rules twice in a session.
;; 0.2 (1/25/16) Adjusted interface to more easily accommodate other scripts.

(in-package :sparser)

(defvar *sets-of-interfering-rules* nil
  "An alist of the form (key . (lhs rhs)) describing rules to delete.")

(defvar *sets-of-interfering-rules-turned-off* nil
  "Records the keys used in calls to turn off a set of rules.
Uses an alist of the form (key . rules-deleted), so we have the
option of resurrecting them.")

(defun interfering-rules (key)
  "Return the set of rule descriptions associated with a key."
  (check-type key keyword)
  (or (cdr (assq key *sets-of-interfering-rules*))
      (cerror "Use the empty set."
              "No set of interfering rules found for ~s." key)))

(defmacro define-interfering-rules (key list-of-descriptions-of-rules)
  "Associate a set of interfering rules with a key."
  (check-type key keyword)
  (check-type list-of-descriptions-of-rules list)
  `(setq *sets-of-interfering-rules*
         (acons ',key ',list-of-descriptions-of-rules
                *sets-of-interfering-rules*)))

(defun turn-off-interfering-rules (key)
  "Lookup the set of rules. Delete them. Store the cfr objects on
*sets-of-interfering-rules-turned-off* so they can be restored."
  (unless (assq key *sets-of-interfering-rules-turned-off*)
    (setq *sets-of-interfering-rules-turned-off*
          (acons key (turn-off-rule-set (interfering-rules key))
                 *sets-of-interfering-rules-turned-off*))))

(defun turn-off-rule-set (list-of-descriptions-of-rules)
  (loop for descriptor in list-of-descriptions-of-rules
        as lhs = (car descriptor)
        as rhs = (cadr descriptor)
        as cfr = (find-cfr lhs rhs)
        if cfr collect (delete/cfr cfr)
        else do (push-debug `(,lhs ,rhs ,descriptor))
                (cerror "Ignore this rule and keep going."
                        "Can't find rule matching ~a -> ~a.~%"
                        lhs rhs)))
