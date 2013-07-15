;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules to turn off"
;;;   Module:  "model;dossiers:"
;;;  version:  July 2013

;; initiated 11/24/12 to solve problem of rules interferring with what's
;; needed in Grok. The full set of rules and actions are designed for
;; deep parsing and information extraction. They can make assumptions
;; that are not suitable for other analysis modes such as Fire or Grok
;; and are not amenable to handle by omitting grammar modules or specific
;; switch settings.
;; 0.1 (7/12/13) Added a record to keep from trying to delete the same
;;      rules twice in a session.

(in-package :sparser)


;;;-------
;;; cases
;;;-------

;; The Answer system had rules it needed to turn off, as did the
;; little experiment for Cary Pine.

(defvar *rules-intefering-with-Grok*
  '(  (comma-number ("," number))
    ))


;;;-----------
;;; machinery
;;;-----------

(defvar *sets-of-interfering-rules-turned-off* nil
  "Records the keys used in calls to turn off a set of rules.
   Uses an alist of the key . rules-deleted, so we have the
   option of resurrecting them.")

(defun turn-off-interfering-rules (key)
  "Lookup the set of rules. Delete them. Store the cfr objects
   (/// where ???) so they can be restored."
  (unless (assq key *sets-of-interfering-rules-turned-off*)
    (let ((rules
           (case key 
             (:grok (turn-off-rule-set *rules-intefering-with-Grok*))
             (otherwise
              (error "~a is not associated with a set of rules" key)))))
      (push `(,key ,rules)
            *sets-of-interfering-rules-turned-off*)
      rules)))

(defun turn-off-rule-set (list-of-descriptions-of-rules)
  (let ( deleted-cfrs )
    (dolist (descriptor list-of-descriptions-of-rules)
      (let* ((lhs (car descriptor))
             (rhs (cadr descriptor))
             (cfr (find-cfr lhs rhs)))
        (cond (cfr
               (push (delete/cfr cfr)
                     deleted-cfrs))
              (t
               (push-debug `(,lhs ,rhs ,descriptor))
               (cerror "Ignore this and keep going"
                       "The rule components do not fit an already defined rule:~
                      ~%   lhs: ~A~%   rhs: ~A~%"
                       lhs rhs)))))
    deleted-cfrs))

