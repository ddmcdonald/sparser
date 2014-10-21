;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ddm-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2014

;; Initiated 10/9/14 for personalized settings and recording what 
;; I'm doing -- ddm.

(in-package :sparser)

; (defvar script :biology)  ;; For customizing what gets loaded
; (load "/Users/ddm/sparser/load-nlp.lisp")
(defun ddm-standard () ;; (ddm-standard)
  (setup-bio) ;; load the bio model etc.
  ;; (bio-traps) ;; turn off forest level parsing and this presently problematic parameter
  (setq *note-text-relations* nil)
  (bf-off)
  (trace-lexicon-unpacking) (trace-morphology)
  (trace-chunker)
  (setq *kind-of-chart-processing-to-do* :successive-sweeps)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology/or-primed))

; (bio-setting)
; (f "/Users/ddm/sift/nlp/corpus/biology/Paul-test-cases.txt")

; (setq *parse-chunk-interior-online* t)
; (progn (trace-chunker) (trace-segments))
; (progn (untrace-chunker) (untrace-segments))

;; 10/14,19/14
; (ddm-ed "objects/chart/words/lookup/new-words4.lisp")
; (ddm-ed "grammar/rules/syntax/affix-rules1.lisp")
; (ddm-ed "grammar/rules/brackets/comlex-unpacking.lisp")
; (ddm-ed "grammar/rules/words/one-offs/comlex-def-forms.lisp")

; (setq *do-islands-2d-pass* nil)

#| 10/9/14 noun brackets are being added to word::single-quote
(br-off)
(brackets-on (punctuation-named #\'))
(assign-bracket single-quote ].phrase) 
  but these will interact with the
  use of ' in possessives and contractions
  adjudicate-after-scan-pattern-has-succeeded (trace-ns-sequences)
(p "in the ‘off’ state") 
|#

(defun ddm-ed (string)
  (ed (concatenate 'string
                   "/Users/ddm/sparser/Sparser/code/s/"
                   string)))
(defun load-ddm-ws ()
  (ddm-ed "init/workspaces/reference-points.lisp")
  (ddm-ed "init/workspaces/traces.lisp")
  (ddm-ed "init/workspaces/Biology-workspace.lisp"))
; (load "/Users/ddm/ws/Sparser local/workspaces/fire.lisp")

;  (ddm-ed "grammar/model/sl/biology/verbs.lisp")
;  (ddm-ed "grammar/rules/words/punctation-bracketing.lisp")

;  (ddm-ed "grammar/model/dossiers/modifiers.lisp")
  
(defun ddm-new-parsing-ws ()
  (ddm-ed "drivers/forest/parsing-containers.lisp")
  (ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "drivers/chart/psp/pts5.lisp")
  (ddm-ed "drivers/chart/psp/chunker.lisp")
  (ddm-ed "drivers/forest/new-forest-protocol.lisp")
  (ddm-ed "grammar/rules/DM&P/period-hook.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  (ddm-ed "objects/traces/psp1.lisp"))

; (ddm-ed "objects/doc/object1.lisp")  -- document structure
; (ddm-ed "tools/basics/resource.lisp)  -- auto recycling
; (ddm-ed "objects/doc/classes.lisp") -- what is this doing ????


(defun ddm-vg-elevation ()
  (ddm-ed "grammar/rules/syntax/categories.lisp")
  ;; propagate-suffix-to-segment 
  (ddm-ed "grammar/rules/SDM&P/create-categories.lisp"))

; uniform-scan
;(ddm-ed "analysers/psp/patterns/uniform-scan.lisp")
;(ddm-ed "analysers/psp/patterns/traces.lisp")



(defun ddm-corpus-location ()
  ;; Note the pathname is given in ancient Mac syntax. 
  (setq cl-user::location-of-text-corpora
        "Users:ddm:sift:nlp:corpus:"))


