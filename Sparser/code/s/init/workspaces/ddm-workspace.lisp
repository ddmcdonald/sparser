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
; (setup-bio) ;; load the bio model etc.
; (bio-traps) ;; turn off forest level parsing and this presently problematic parameter
;    (setq *note-text-relations* nil)
; (bf-off)

; (setq *kind-of-chart-processing-to-do* :successive-sweeps)
; (bio-setting)

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
  (ed (string-append "/Users/ddm/sparser/Sparser/code/s/"
                     string)))
#|
  (ddm-ed "init/workspaces/reference-points")

  (ddm-ed "grammar/model/sl/biology/verbs.lisp")

  (ddm-ed "grammar/rules/words/punctation-bracketing.lisp")
  
|#

(defun ddm-corpus-location ()
  ;; Note the pathname is given in ancient Mac syntax. 
  (setq cl-user::location-of-text-corpora
        "Users:ddm:sift:nlp:corpus:"))


