;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993.1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "FSA"
;;;   Module:  "objects;traces:"
;;;  Version:  1.1 July 1994

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


;;;-----------
;;; polywords
;;;-----------

(deftrace :polyword-start (word position-scanned)
  (when *trace-fsas*
    (trace-msg "[pw] Looking for polywords starting with ~A at p~A"
               word (pos-token-index position-scanned))))

(deftrace :pw-word-check (next-word)
  (when *trace-fsas*
    (trace-msg "[pw]  The next word is ~A" next-word)))

(deftrace :pw-word-extends ()
  (when *trace-fsas*
    (trace-msg "[pw]     it extends the polyword")))

(deftrace :pw-word-doesnt-extend ()
  (when *trace-fsas*
    (trace-msg "[pw]     it does not extend the polyword")))

(deftrace :pw-complete-looking-further (label)
  (when *trace-fsas*
    (trace-msg "[pw]     it completes the polyword as ~A~
              ~%            Looking further."
               label)))

(deftrace :pw-doesnt-extend-taking-complete (edge)
  (when *trace-fsas*
    (trace-msg "[pw]     it doesn't extend the polyword~
              ~%            Taking the pending completion and ~
                forming the edge:~
              ~%               ~A"
               edge)))


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
