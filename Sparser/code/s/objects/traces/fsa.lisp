;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2016-2021  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "FSA"
;;;   Module:  "objects;traces:"
;;;  January:  September 2021

;; initiated November 1990
;; 0.1  (2/15/91 v1.8.1)  Changed *trace-pw-buffer* to *trace-next-terminal*
;; 0.2  (4/23 v1.8.4)  Added *trace-fsas*
;; 1.0  (12/92) Fleshed out with deftrace rouines
;; 1.1  (12/7/93 v2.3) added cases, flushed old stuff
;;      (7/15/94) added functions for on/off

(in-package :sparser)

;;;-------
;;; flags
;;;-------

(defparameter *trace-fsas* nil
  "Read in the 'new' fsas")

(defun trace-fsas ()
  (setq *trace-fsas* t))

(defun untrace-fsas ()
  (setq *trace-fsas* nil))


(defparameter *trace-polywords* nil)

(defun trace-polywords ()
  (setq *trace-polywords* t))

(defun untrace-polywords ()
  (setq *trace-polywords* nil))


(defparameter *trace-polyword-edge-creation* nil)

(defun trace-polyword-edges ()
  (setq *trace-polyword-edge-creation* t))

(defun untrace-polyword-edges ()
  (setq *trace-polyword-edge-creation* nil))


;;;-----------
;;; polywords
;;;-----------

(deftrace :pw-word-does-not-initiate-polywords (word)
  ;; called from check-for-polywords
  (when *trace-polywords*
    (trace-msg "[pw] ~s does not start any polywords" (pname word))))

(deftrace :pw-no-rule-set-on (word)
  ;; called from check-for-polywords
  (when *trace-polywords*
    (trace-msg "[pw] no rule set on ~s" (pname word))))

(deftrace :polyword-start (word position-scanned)
  ;; in do-polyword-fsa
  (when *trace-polywords*
    (trace-msg "[pw] Looking for polywords starting with ~A at p~A"
               word (pos-token-index position-scanned))))

(deftrace :pw-word-check (next-word)
  (when *trace-polywords*
    (trace-msg "[pw]  The next word is ~A" next-word)))

(deftrace :pw-word-extends ()
  (when *trace-polywords*
    (trace-msg "[pw]     it extends the polyword")))

(deftrace :pw-accept-state ()
  (when *trace-polywords*
    (trace-msg "[pw]     That is an accept state.")))

(deftrace :pw-word-doesnt-extend ()
  (when *trace-polywords*
    (trace-msg "[pw]     it does not extend the polyword")))

(deftrace :pw-complete-looking-further (label)
  (when *trace-polywords*
    (trace-msg "[pw]     it completes the polyword as ~A~
              ~%            Looking further."
               label)))

(deftrace :pw-doesnt-extend-taking-complete (edge)
  (when (or *trace-polywords* *trace-polyword-edge-creation*)
    (trace-msg "[pw]     it doesn't extend the polyword~
              ~%            Taking the pending completion and ~
                forming the edge:~
              ~%               ~A"
               edge)))

(deftrace :pw-taking-longest-complete (edge)
  (when (or *trace-polywords* *trace-polyword-edge-creation*)
    (trace-msg "[pw] Taking the pending completion and ~
                forming the edge:~
              ~%               ~A"
               edge)))

(deftrace :pw-caps-variant (p word)
  (when *trace-polywords*
    (trace-msg "[pw]   Looking for capitalized variant of ~
              ~s at p~a" (word-pname word)
              (pos-token-index p))))

(deftrace :pw-found-caps-variant (caps-word)
  (when *trace-polywords*
    (trace-msg "[pw]     found ~s" (word-pname caps-word))))

(deftrace :pw-no-caps-variant ()
  (when *trace-polywords*
    (trace-msg "[pw]     nothing found")))



;;;-----------------
;;; word level fsas
;;;-----------------

(deftrace :considering-word-level-fsas (word position)
  (when (or *trace-network*
            *trace-fsas*)
    (trace-msg "Doing any word-level FSAs for ~A at p~A"
               word (pos-token-index position))))

(deftrace :wfsa/unknown-word (word position)
  (when *trace-fsas*
    (trace-msg "[FSA] ~A at p~A is unknown and obviously has no word-level fsas"
               word (pos-token-index position))))


(deftrace :wfsa/marked-capitalization ()
  ;; called from do-word-level-fsas
  (when *trace-fsas*
    (trace-msg "[FSA] the actual instance of the word isn't lowercase")))

(deftrace :wfsa/actual-state (state)
  ;; called from Check-variants-for-word-fsas
  (when *trace-fsas*
    (trace-msg "[FSA]     it's ~A" state)))

(deftrace :wfsa/variant-has-rules (variants)
  ;; called from Check-variants-for-word-fsas
  (when *trace-fsas*
    (trace-msg "[FSA]     Capitalization variant/s on the word is/are:~
                ~%     ~A" variants)))

(deftrace :wfsa/no-variants ()
  ;; called from Check-variants-for-word-fsas
  (when *trace-fsas*
    (trace-msg "[FSA]     But the word has no capitalization variants ~
                defined")))



(deftrace :wfsa/no-routine (word position)
  (when *trace-fsas*
    (trace-msg "[FSA] ~A at p~A has no fsa rules"
               word (pos-token-index position))))

(deftrace :wfsa/options (word position fsa-field)
  (when *trace-fsas*
    (if (cdr fsa-field)
      (trace-msg "[FSA] ~A at p~A has the fsas: ~A"
               word (pos-token-index position) fsa-field)
      (trace-msg "[FSA] ~A at p~A has the fsa: ~A"
                 word (pos-token-index position) (car fsa-field)))))

(deftrace :wfsa/succeeded/1 (position-reached)
  (when *trace-fsas*
    (trace-msg "[FSA]  it reached p~A"
               (pos-token-index position-reached))))

(deftrace :wfsa/failed/1 ()
  (when *trace-fsas*
    (trace-msg "[FSA]  it didn't find what it was looking for")))


;;;------------
;;; edge-level
;;;------------

(deftrace :considering-edge-level-fsas (edges position)
  (when *trace-network*
    (if (cdr edges)
      (trace-msg "Doing any edge-level FSAs associated with any of~
                ~%   ~A~
                ~%  over ~A at p~A"
                 edges (pos-terminal position) (pos-token-index position))
      (trace-msg "Doing any edge-level FSAs for the ~A~
                ~%  over ~A at p~A"
                 (car edges)
                 (pos-terminal position)
                 (pos-token-index position)))))

(deftrace :efsa-trying (fsa edge position-scanned)
  (declare (ignore position-scanned))
  (when *trace-fsas*
    (trace-msg "[FSA] Trying ~A for ~A"
               fsa edge)))

(deftrace :efsa-succeeded (position-reached)
  (when *trace-fsas*
    (trace-msg "[FSA]    it succeeded and reached p~A"
               (pos-token-index position-reached))))

(deftrace :efsa-failed ()
  (when *trace-fsas*
    (trace-msg "[FSA]    it failed")))



;;;---------------------
;;; apostrophe handling
;;;---------------------

(deftrace :apos-encountered (p)
  ;; called from apostrophe-fsa
  (when *trace-fsas*
    (trace-msg "[FSA] apostrophe encountered at p~a"
               (pos-token-index p))))

(deftrace :apos-start (p)
  ;; called from apostrophe-fsa
  (when *trace-fsas*
    (trace-msg "[FSA: apostrophe] Starting FSA for |'s_or't| at p~A"
               (pos-token-index p))))

(deftrace :apos-created-edge-over (word edge)
  ;; called from apostrophe-fsa
  (when *trace-fsas*
    (trace-msg "[FSA: apostrophe] scanned ~A and created the edge~
              ~%        ~A" word edge)))

(deftrace :apos-end (word)
   ;; called from apostrophe-fsa
  (when *trace-fsas*
    (trace-msg "[FSA: apostrophe] No 's' at the end ~
               of the prior word ~a" word)))

(deftrace :s-on-prior-word-apostrophe-afterwards (edge word)
  ;; called from mark-possessive-on-prior-word
  (when *trace-fsas*
    (trace-msg "  The prior word, \"~A\", ends in 's', so the ' ~
              ~%    is spanned as ~A" (word-pname word) edge)))

(deftrace :apos-space-to-left ()
  ;; called from apostrophe-fsa
  (when *trace-fsas*
    (trace-msg "[FSA: apostrophe] space to the left. Not completing")))

