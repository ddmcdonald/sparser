;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Grok"
;;;   Module:  "init;workspaces:"
;;;  version:  January 2012

;; Initiated 10/30/12 to take over from the Fire workspace. Tweeked through
;; 1/21/13

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

(in-package :sparser)

(setq *annotate-realizations* nil) ;; Will be t, but not ready yet

;;-- Default display setup. Interleave the segment markers with
;; the running text.
(setq *display-word-stream* nil)
(setq *readout-segments-inline-with-text* t)
(setq *record-bracketing-progress* t)

;;-- For Comlex shakeout
(trace-lexicon-unpacking)
;; (just-bracketing-setting) -- largely supplanted by Grok since we want some rules
;; (grok-setting)  -- for meta-.

;;----- Flags that we want on if we're momentarily by-passing some hard cases

(defun ddm-setup () ;; 2/13/13 for finding odd bugs. New things turned off
  (setq *annotate-realizations* nil)
  (setq *break-on-new-bracket-situations* nil)
  (setq *uniformly-scan-all-no-space-token-sequences* nil)
  (setq *new-segment-coverage* nil))

;; If nil, this flag turns off all the errors about new cases for bracketsing and
;; has them return plausible defaults. Useful if looking for weirder errors.
;;   (setq *break-on-new-bracket-situations* nil)

;;--- experimental things to add to grok setting

;;   (setq *uniformly-scan-all-no-space-token-sequences* t)
;; That is causing problems right now (2/11/13), so committing a horrible thing instead
(reify-spelled-name 
 (list (word-named "H") (word-named "5") (word-named "N") (word-named "1")))


;; (setq *new-segment-coverage* t)   ;; to debug that, add cases

;;--------- Cases for debugging segmentation, bracket calculations

;; (p "Boeing Co. said the U.S. government has suspended the sale")
;; (f "/Users/ddm/Sparser/Sparser/code/s/drivers/timing/Bankruptcy/Eastern/just-body.lisp")

;; (p *iraqi-girl*)
;; (p "in Iraq. H5N1 has killed at least 91 people,")

;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/1 Aljazeera_Jan-18.txt")

(setq *verbose-document-stream* t)
;; (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu") 

;; These are in dm&p in the workspaces file under init. They're stray medium size
;; articles lifted from the new
;; (fire)
;; (medtronic)

;; (f "/Users/ddm/sift/nlp/Grok/corpus/helicopter-attack.txt")
;;   N.b. hard pathname. Need soft one. Perhaps via asdf, certainly via a pointer
;;    off load-truename

;; (p "in the region and the World Health Organisation (WHO) will send a team of experts there on Wednesday")
;;   will get to establish-referent-of-pn and we make a named-object
;;
;; (p "the World Health Organization (WHO)")
;;  "WHO" is analyzed as the WH word, so need to take steps without
;;  actually encoding the answer
;;  This article has all the pieces:
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/4 bbc_Jan-31.txt")


#|
-- For searching with grep.
cd sparser/Sparser/code/s/
grep XX **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
|#

;;-----Traces ----------------
;; *trace-set-status*

(defun trace-segmentation ()
  (trace-brackets)
  (trace-segment-completion)
  (trace-segments)
  (trace-network)
  (trace-network-flow)
  (trace-status-history))

;; (trace-pnf)  ;; when proper names / capitalized sequences are implicated

;; (no-Sparser-traces)  ;; turn the traces off

;; (brackets-on <string for a word>)  ;; usually always lowercase
;; (brackets-on <number of a position>)


;; (trace-fsas)
;; (trace-jfp-sections)

;; ;; objects/traces/psp1
;; (trace-network) ;; for low-level scan
;; (trace-network-flow) ;; lower, e.g. bracket introduction and changes
;; (trace-brackets)

;; (trace-pnf)
;; (trace-segments)
;; (trace-treetops)
;; (trace-sdm&p)
;; (trace-ns-sequences)
;; (trace-edges) ;; = *parse-edges* + (trace-edge-creation) + (trace-edge-check)
;; (trace-treetops)
;; (trace-scan-patterns)

;; (trace-conjunction)
;; (trace-parentheses)

;; (trace-psi)
;; (trace-psi-construction)
;; (trace-referent-creation)
;; (trace-bind-open-var)



;; (no-Sparser-traces)
(defun no-Sparser-traces ()
  (untrace-fsas)
  (untrace-pnf)
  ;(untrace-jfp-sections)
  (untrace-network)
  (untrace-network-flow)
  (untrace-status-history)
  (untrace-brackets)
  (untrace-segments)
  (untrace-segment-completion)
  (untrace-treetops)
  (untrace-edges)
  (untrace-edge-multiplication)
  (untrace-treetops)
  (untrace-scan-patterns)
  (untrace-sdm&p)
  (untrace-ns-sequences)
  (untrace-conjunction)
  (untrace-parentheses)
  (untrace-psi)
  (untrace-psi-construction)
  (untrace-referent-creation)
  (untrace-bind-open-var)
  (setq *readout-segments* nil)
  (setq *trace-edge-creation* nil)
  (setq *trace-paired-punctuation* nil)
  (setq *trace-completion-hook* nil))
