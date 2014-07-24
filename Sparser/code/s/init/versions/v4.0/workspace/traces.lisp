;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1992,2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "traces"
;;;   Module:  "init;versions:<current version>:workspace"
;;;  version:  July 2014

;; initialized 10/30/91, added to 6/18/92 v2.2. 7/21/14 added some
;; predefined packages of traces developed for Grok. 

(in-package :sparser)

;;;------------------
;;; sets of settings
;;;------------------

(defun trace-segmentation ()
  (trace-brackets)
  (trace-segment-completion)
  (trace-segments)
  (trace-network)
  (trace-network-flow)
  (trace-status-history))

(defun untrace-segmentation ()
  (untrace-brackets)
  (untrace-segment-completion)
  (untrace-segments)
  (untrace-network)
  (untrace-network-flow)
  (untrace-status-history))


(defun trace-forest ()
  (trace-treetops)
  (trace-da-hook)
  (trace-da)
  (trace-extension))
(defun untrace-forest ()
  (untrace-treetops)
  (untrace-da-hook)
  (untrace-da)
  (untrace-extension))


;; (no-traces)
(defun no-traces ()
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
  (untrace-da-hook)
  (untrace-da)
  (untrace-extension)
  (untrace-edges)
  (untrace-edge-multiplication)
  (untrace-treetops)
  (unTrace-forest-edges)
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


;;--- single trace calls that were convenient in Grok

;; *trace-set-status*

;; (trace-forest-edges) ;; like trace-edges but over treetops

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

;; (trace-sdm&p)
;; (trace-ns-sequences)
;; (trace-edges) ;; = *parse-edges* + (trace-edge-creation) + (trace-edge-check)
;; (trace-scan-patterns)

;; (trace-conjunction)
;; (trace-parentheses)

;; (trace-psi)
;; (trace-psi-construction)
;; (trace-referent-creation)
;; (trace-bind-open-var)


;;;----------------------
;;; display alternatives
;;;----------------------

;(setq *display-word-stream* nil)
;(setq *display-word-stream* t)

;(setq *treetop-edge/style-for-printing* :category-and-text-segment)
;(setq *treetop-edge/style-for-printing* :structure)

;(setq *display-salient-objects* t)
;(setq *display-salient-objects* nil)

;(ask *objects-menu* (menu-install))
;(ask *objects-menu* (menu-deinstall))

;(ask *corpus-menu* (menu-install))
;(ask *corpus-menu* (menu-deinstall))


;;;----------------------------------------------------------
;;;              alternative settings for traces
;;;----------------------------------------------------------

; (setq *trace-readout* t)
; (setq *trace-readout* nil)
; (setq *trace-header-parsing* t)
; (setq *trace-header-parsing* nil)
; (setq *trace-CA* t)     ;; the hook
; (setq *trace-CA* nil)
; (setq *trace-CA-search* t)  ;; scans
; (setq *trace-CA-search* nil)
; (setq *trace-CA-subjects* t)
; (setq *trace-CA-subjects* nil)
; (setq *trace-pronominalization* t)
; (setq *trace-pronominalization* nil)
; (clear-index/person)
; (clear-index/company)
; (setq *trace-individuals* t)
; (setq *trace-individuals* nil)
; (setq *trace-discourse-history* t)
; (setq *trace-discourse-history* nil)
; (setq *trace-discourse-heuristics* t)
; (setq *trace-discourse-heuristics* nil)
; (setq *trace-paragraphs* t)
; (setq *trace-paragraphs* nil)
; (setq *trace-parentheses* t)
; (setq *trace-parentheses* nil)
; (setq *trace-conjunction* t)
; (setq *trace-conjunction* nil)
; (setq *trace-HA-contexts* t)
; (setq *trace-HA-contexts* nil)

; (setq *trace-sgml* t)
; (setq *trace-sgml* nil)
; (setq *trace-paired-punctuation* t)
; (setq *trace-paired-punctuation* nil)
; (setq *trace-treetops* t)      ;;monitors the hook
; (setq *trace-treetops* nil)
; (setq *trace-treetop-hits* t)  ;;monitors only hits on the hook
; (setq *trace-treetop-hits* nil)
; (setq *trace-traversal-hook* t)
; (setq *trace-traversal-hook* nil)
; (setq *trace-traversal-hits* t)
; (setq *trace-traversal-hits* nil)
; (setq *trace-segments* t)
; (setq *trace-segments* nil)
; (setq *trace-extension-decision* t)
; (setq *trace-extension-decision* nil)

; (setq *trace-psp-threading* t)
; (setq *trace-psp-threading* nil)
; (setq *trace-network* t)
; (setq *trace-network* nil)
; (setq *trace-scan* t)
; (setq *trace-scan* nil)
; (setq *trace-bracket-placement* t)
; (setq *trace-bracket-placement* nil)
; (setq *trace-fsas* t)
; (setq *trace-fsas* nil)
; (setq *trace-fsa-trigger* t)
; (setq *trace-fsa-trigger* nil)
; (setq *trace-terminal-edges* t)
; (setq *trace-terminal-edges* nil)

; (setq *trace-do-edge* t)
; (setq *trace-do-edge* nil)
; (setq *trace-edge-creation* t)
; (setq *trace-edge-creation* nil)
; (setq *trace-edge-just-done* t)
; (setq *trace-edge-just-done* nil)
; (setq *trace-completion* t)
; (setq *trace-completion* nil)
; (setq *trace-completion-hook* t)
; (setq *trace-completion-hook* nil)
; (setq *trace-edge-resource* t)
; (setq *trace-edge-resource* nil)
; (setq *trace-token-&-character-indicies* t)
; (setq *trace-token-&-character-indicies* nil)
; (setq *trace-character-buffer-filling* t)
; (setq *trace-character-buffer-filling* nil)

; (setq *trace-readout* t)
; (setq *trace-readout* nil)
; (setq *trace-readout/only-real-edges* t)
; (setq *trace-readout/only-real-edges* nil)
; (setq *trace-readout/calculation* t)
; (setq *trace-readout/calculation* nil)

; (setq *trace-actions* t)
; (setq *trace-actions* nil)
; (setq *trace-check-for-actions* t)
; (setq *trace-check-for-actions* nil)

; (setq *debug-known-non-fatal-errors* t)
(setq *debug-known-non-fatal-errors* nil)


; *character-buffer-in-use*
; *state-of-the-tokenizer*
; display character buffer: (dcb)
; (state-of-the-tokenizer)
; (display-chart-state)
; *number-of-positions-in-the-chart*
; *length-of-edge-resource*
; (display-chart :style :just-terminals)
; (display-chart :style :all-edges)
; (display-potential-anaphors)

; *eos-was-reached-on-last-scan*
; *bracket-closing-segment*
; *left-segment-boundary*
; *right-segment-boundary*
; *rightmost-active-position/segment*
; *rightmost-active-position/forest*
; *rightmost-quiessent-position*
; *position-after-rightmost-done-treetop*
        
; (setq *record-ETA-results* t)
; (setq *record-ETA-results* nil)
; (setq *announce-ETA-results-online* t)
; (setq *announce-ETA-results-online* nil)

; *significant-text-segments*
; *current-article-window*


;;; (edge# #)   (ev/s pos) (ev/e pos)
;;; (starting-edge pos #)
;;; (position# #)

; *words-defined*
; *categories-defined*
; (display-all-cfrs)
; (progn (inspect *context-free-rules-defined*) :done)
; *context-free-rules-defined*
; *next-right-looking-label-ID*
; *next-left-looking-label-ID*

; (setq *trace-next-token* t)
; (setq *trace-next-token* nil)
; (setq *trace-polyword-FSAs* t)
; (setq *trace-polyword-FSAs* nil)
; (setq *trace-pw-buffer* t)
; (setq *trace-pw-buffer* nil)

; (update-paragraph-initiation-routine)
; *document-source*
; *initial-region*
; *indentation-space*
; *paragraph-space*


; *evidence-topic-associations*


;;--------------------------------------------
; *position-of-next-available-edge-in-resource*
; *first-active-edge-in-resource*
; *most-recently-activated-edge*



;(Analyze-text-from-string  *test-string*)
;  (establish-character-source/file *test-pathname*)
;  (establish-character-source/string *test-string*)
;  (initialize-tokenizer-state)
;  (initialize-chart-state)
;  (per-article-initializations)
;  (chart-based-analysis)

