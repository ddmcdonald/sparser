;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "logicals"
;;;   Module:  "interface;corpus:"
;;;  version:  0.4 January 1996

;; initiated 11/91 v1.9, tweeked 9/26/92
;; 0.1 (12/7/93 v2.3) renamed [WNEWS corpus] to avoid confict w/ grammar
;; 0.2 (1/11/94) added some more logicals.
;;     (3/30) added logicals for oil
;; 0.3 (6/13/95) added gating by the existance of a location for the corpus
;; 0.4 (8/9) flushed 'sp:' intermediary
;;     (9/15) added html. (9/19) redefined the directory that goes with 'Tipster'
;;     (12/28) aded KF logical. (1/16/96) redid their logical names and added some

(in-package :sparser)

  
(defun corpus-logicals ())  ;; for meta-point



;; Don't bother to set any of this up if there's no record of
;; where the text corpora are stored.

(when cl-user::location-of-text-corpora
  

  ;; n.b.  "corpus;" is defined in <version>;logicals using the global

  ;;;----------------------
  ;;; toplevel directories
  ;;;----------------------
  
  (def-logical-pathname "announcements;"  "corpus;computer announcements:")
  (def-logical-pathname "ERN;"            "corpus;earnings-reports:")
  (def-logical-pathname "html;"           "corpus;html:")
  (def-logical-pathname "oil;"            "corpus;oil:")
  (def-logical-pathname "tipster;"        "corpus;Tipster:")
  (def-logical-pathname "WNEWS corpus;"   "corpus;Who's News:")
  (def-logical-pathname "WSJ;"            "corpus;WSJ:")
  
  
  ;;;------------------
  ;;; earnings reports
  ;;;------------------
  
  (def-logical-pathname "original typed WSJ;" "ERN;from WSJ:")
  (def-logical-pathname "original typed LSE;" "ERN;from LSE, etc.:")

  (def-logical-pathname "KF set#1;"           "ERN;KF originals for 1st set:")
  (def-logical-pathname "KF clean #1;"        "ERN;KF cleaned up 1st set:")
  (def-logical-pathname "KF set#2;"           "ERN;KF typed in:")
  
  
  
  ;;;-----
  ;;; oil
  ;;;-----
  
  (def-logical-pathname "oil/Bus;"         "oil;by area:Business Development:")
  (def-logical-pathname "oil/hdw;"         "oil;by area:Computer Hardware:")
  (def-logical-pathname "oil/sw;"          "oil;by area:Computer Software:")
  (def-logical-pathname "oil/explor-proj;" "oil;by area:Exploration Projects:")
  (def-logical-pathname "oil/explor-tech;" "oil;by area:Exploration Technology:")
  (def-logical-pathname "oil/financials;"  "oil;by area:Fin.Test:")
  
  (def-logical-pathname "oil/byte;"     "oil;by publication:BYTE:")
  (def-logical-pathname "oil/djns;"     "oil;by publication:Dow Jones News Service:")
  (def-logical-pathname "oil/hbj;"      "oil;by publication:Houston Business Jrnl:")
  (def-logical-pathname "oil/o&g;"      "oil;by publication:Oil and Gas Journal:")
  (def-logical-pathname "oil/week;"     "oil;by publication:Oil Week:")
  (def-logical-pathname "oil/platts;"   "oil;by publication:Platts Oilgram News:")
  (def-logical-pathname "oil/scanned;"  "oil;by publication:scanned in:")
  (def-logical-pathname "oil/wsj;"      "oil;by publication:Wall Street Jrnl:")
  (def-logical-pathname "oil/post;"     "oil;by publication:Washington Post:")
  (def-logical-pathname "oil/world;"    "oil;by publication:World Oil:")
  
  
  ;;;--------------------------------
  ;;; other, selected subdirectories
  ;;;--------------------------------
  
  (def-logical-pathname "9-17-92;" "WSJ;DJNS format:9-17-92:")
  ;; a sample of 11 articles about the international financial farcas
  ;; that happend the day before.
  
  (def-logical-pathname "3 TNM;" "WSJ;DJNS format:TNM:")
  ;; three longish tnm articles collected at C&L in 1991
  
  
  (def-logical-pathname "tipster tests;"
                        ;;"tipster;test articles:"
                        ;;   these aren't in a uniform format since a few
                        ;;   are 'hacked' so they could be done as hand-written
                        ;; The WSJ set is uniform so we can give it a style
                        ;; and expect it to apply
                        "tipster;corpus by source:WSJ:")
  
  (def-logical-pathname "joint-ventures;"  "tipster;JV corpus:")
  
  (def-logical-pathname "Who's News DCI;"  "WNEWS corpus;DCI:")
  
  (def-logical-pathname "test files;" "WSJ;DJNS format:bankruptcy:Eastern:")
  
  )  ;; closes gate

