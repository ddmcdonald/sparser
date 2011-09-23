;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "sanity"
;;;   Module:  "model;sl:whos news:tests:"
;;;  version:  March 1991      system version 1.8.1

(in-package :sparser)

;;;------------------------
;;; sanity check citations
;;;------------------------

; (setq *trace-treetops* t)
;(p "")
;(p "asdf qwer zxcv")
;(p "	FOO Ltd.")
;(p "acting president and chief executive officer")
;(p "(Toronto) -")
;(p "	BELMORAL MINES Ltd. (Toronto) -")
;(p "J. Gordon Strasser, acting president")
;(p "was confirmed")
;(p "succeeding Kenneth Dalton")
#| (p "Neil F. Meehan, formerly president of Continental
Express, was named")  |#
;(p "Messrs. Dalton and Brown")

;(p/tts "former Fidelity Investments senior vice president")
#|(p/tts "Roger Servison, former Fidelity Investments
senior vice president")  |#
;(p/tts "Bar L.P.")
#| (p "J. Gordon Strasser, acting president and chief executive officer
 of this gold mining company was confirmed in the posts")  |#

