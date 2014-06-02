;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "time-methods"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   June 2014

;; created 6/1/14 to load preposition and sequencer methods after the dossiers
;; that load them. 

(in-package :sparser)


;; "before today"
(defmethod modifier+noun ((sh1 sh::sequencer) (sh2 sh::date))
  ;; Hmm.... tried sh::before + date and it didn't fire. Need to
  ;; consider how sequencers are defined if we want finer control.
  (let ((sequencer (dereference-shadow-individual sh1))
        (date (dereference-shadow-individual sh2)))
    (push-debug `(,sequencer ,date))
    ;;/// inadequate hack. Need to indeed rethink sequencers
    ;; doing this just as an example, knowing that the example
    ;; is based on "before"
    (let ((i (define-or-find-individual 'closed-interval/end
               :ends-at date
               :modifier sequencer)))
      i)))


(def-k-method modifier+noun ((next next-sequence) (unit time-unit))
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
               
  
