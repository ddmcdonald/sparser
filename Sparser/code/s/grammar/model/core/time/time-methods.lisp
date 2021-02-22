;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2018 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "time-methods"
;;;    Module:   "grammar/model/core/time/"
;;;   Version:   April 2018

;; created 6/1/14 to load preposition and sequencer methods after the dossiers
;; that load them. 

(in-package :sparser)


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



(def-k-method modifier+noun ((next category::next)
                             (unit category::time-unit))
  "For phrases like '(the) next day' or 'next month'. Time units
   aren't naturally members of a sequence in the way that specific
   months or days of the week are, so we have to first ground the
   time unit against the current time and get a sequence from
   there."
  (tr :next+month unit)


  (let ((c (etypecase unit
             (category unit)
             (individual (itype-of unit)))))
    ;; Does it involve a sequence?
    (if (and c (category-inherits-type? c category::sequential))
      (relative-time-value c :next) ;; Lookup the value
      
      ;; otherwise we make a relative time
      (make-a-relative-time next unit))))
