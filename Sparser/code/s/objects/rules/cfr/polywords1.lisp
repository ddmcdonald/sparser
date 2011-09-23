;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "polywords"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   1.1 December 1994

;; 1.0 (9/7/92 v2.3) Cleared out the special indexes.
;; 1.1 (5/6/93) Changed it so that if the pw was binary it didn't get
;;      rolled out, which keeps a spurious rule from being created.
;;     (12/16/94) added version to rollout from regular words rather than presume
;;      it's got a string.

(in-package :sparser)

;;;-----------------------
;;; making polyword-rules
;;;-----------------------

(defun construct-cfr-for-embedded-pw (pw)
  ;; called from construct-cfr when one of the labels on the
  ;; rhs is a polyword.  In a case like this, we just make a rule
  ;; whose lhs is the polyword, using the usual machinery below.
  ;; Also called from define-polyword/expr

  (let ((earlier-cfr (pw-fsa pw)))
    (or earlier-cfr
        (let ((cfr (make-cfr :category pw
                             :rhs      (list pw)
                             :form     nil
                             :referent nil)))

          (construct-polyword-cfr cfr)))))


(defun construct-cfr-for-word-list-pw (pw list-of-words)
  ;; Called from define-polyword/from-words. This is really only
  ;; a hook if we want to do something different here
  (declare (ignore list-of-words))
  (construct-cfr-for-embedded-pw pw))




(defun construct-polyword-cfr (cfr)
  ;; called from Construct-cfr when the rhs is a 
  ;; list of length one containing a polyword.
  (let* ((pw (first (cfr-rhs cfr)))
         (words (pw-words pw))
         (first-word (first words)))

    ;; since the polyword is run as a chart-level fsa rather than
    ;; through the parser, this stands in for Knit-into-psg-tables
    ;; and for the rest of the thread of code in Construct-cfr.
    ;;   It's a copy of selected code from cfr;dotted

    (if (= 2 (length words))
      (polyword-doesnt-need-rollout cfr pw words first-word)

      (let ((dotted-rules
             (rollout-naries-from-the-left words cfr)))

        (add-pw-to-words-rules first-word cfr)
        
        (setf (cfr-plist cfr)
              `(:polyword ,pw
                :n-ary (,pw ,dotted-rules)
                ,@(cfr-plist cfr)))
        
        (let ((r-symbol (gen-cfr-symbol)))
          (catalog/cfr cfr r-symbol))
        cfr ))))



(defun polyword-doesnt-need-rollout (cfr pw words first-word)
  ;; this cfr has the polyword as its entire righthand side but
  ;; the polyword is just two words long.
  (setf (cfr-rhs cfr)
        words)
  (knit-in-binary-rule cfr)

  (add-pw-to-words-rules first-word cfr)
  (setf (cfr-plist cfr)
        `(:polyword ,pw
          ,@(cfr-plist cfr)))
  (let ((r-symbol (gen-cfr-symbol)))
    (catalog/cfr cfr r-symbol))
  cfr )



;;;------------
;;; subroutine
;;;------------

(defun add-pw-to-words-rules (first-word cfr)
  (let ((rs (word-rule-set first-word))
        fsa-field )
    (unless rs
      (setq rs (setf (word-rule-set first-word)
                     (make-rule-set :backpointer first-word))))
    (setq fsa-field (rs-fsa rs))
          
    ;; we only put one cfr in the fsa field, even if the word
    ;; is the start of many polywords.  The fsa interpreter
    ;; does the right thing.
    (let ( already-has-a-cfr? )
      (dolist (item fsa-field)
        (when (typep item 'cfr)
          (setq already-has-a-cfr? t)))
      (unless already-has-a-cfr?          
        (setf (rs-fsa rs) (push cfr fsa-field))))))

