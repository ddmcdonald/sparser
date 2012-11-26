;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules to turn off"
;;;   Module:  "model;dossiers:"
;;;  version:  November 2012

;; initiated 11/24/12 to solve problem of rules interferring with what's
;; needed in Grok. The full set of rules and actions are designed for
;; deep parsing and information extraction. They can make assumptions
;; that are not suitable for other analysis modes such as Fire or Grok
;; and are not amenable to handle by omitting grammar modules or specific
;; switch settings.

(in-package :sparser)

;;;-----------
;;; machinery
;;;-----------

(defun turn-off-interfering-rules (key)
  "Lookup the set of rules. Delete them. Store the cfr objects
   (/// where ???) so they can be restored."
  (declare (special *rules-intefering-with-Grok*))
  (case key
    (:grok (turn-off-rule-set *rules-intefering-with-Grok*))
    (otherwise
     (error "~a is not associated with a set of rules"))))

(defun turn-off-rule-set (list-of-descriptions-of-rules)
  (let ( deleted-cfrs )
    (dolist (descriptor list-of-descriptions-of-rules)
      (let* ((lhs (car descriptor))             
             (rhs (cadr descriptor))
             (cfr (find-cfr lhs rhs)))
        (unless cfr
          (push-debug `(,lhs ,rhs ,descriptor))
           (cerror "Ignore this and keep going"
                   "The rule components do not fit an ~
                    already defined rule:~
                  ~%   lhs: ~A~
                  ~%   rhs: ~A~"
                  lhs rhs))
        (push (delete/cfr cfr)
              deleted-cfrs)))
    deleted-cfrs))
    

;;;-------
;;; cases
;;;-------

;; The Answer system had rules it needed to turn off, as did the
;; little experiment for Cary Pine.

(defvar *rules-intefering-with-Grok*
  '(  (comma-number ("," number))
    ))
