;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "time-methods"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   June 2014

;; created 6/1/14 to load preposition and sequencer methods after the dossiers
;; that load them. 

(in-package :sparser)


;;///////// Move this to some place it can be found again
(defun category-of-time-unit (unit) ;; method on individual ?
  (let* ((word (value-of 'name unit))
         (symbol (when word (word-symbol word))))
    (when symbol
      (case symbol
        (word::|month| category::month)
        (otherwise
         (push-debug `(,word ,unit))
         (error "Don't yet have the category decoder for ~a"
                symbol))))))


;; "before today"
(def-k-method modifier+noun ((sequencer category::sequencer)
                             (date category::date))
  ;; Hmm.... tried sh::before + date and it didn't fire. Need to
  ;; consider how sequencers are defined if we want finer control.
  (push-debug `(,sequencer ,date))
  ;;/// inadequate hack. Need to indeed rethink sequencers
  ;; doing this just as an example, knowing that the example
  ;; is based on "before"
  (define-or-find-individual 'closed-interval/end
      :ends-at date
      :modifier sequencer))

(def-k-method modifier+noun ((next category::next-sequence)
                             (unit category::time-unit))
  (tr :next+month unit)
  (push-debug `(,next ,unit))
  
  ;; Which type of time unit is this?
  (let ((c (category-of-time-unit unit)))
    ;; Does it involve a sequence?
    (if (and c (category-inherits-type? c category::sequential))
      
      ;; Lookup the value
      (relative-time-value c :next)
      
      ;; otherwise we make a relative time
      (break "make relative-time"))))
