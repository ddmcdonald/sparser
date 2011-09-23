;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1997 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:  2.3 January 1996

;; 2.0 initiated 6/13/93 v2.3 gradually to vet files from 5/91
;; 2.1 (7/16) added [extract subj] and [subj search1] as new files
;;      that will do the work that the old subj files did
;; 2.2 (3/31/95) upgraded gate on defnp.
;;     (4/26) added [stranded NP]
;; 2.3 (5/15) bumped [subj search1] and [stranded VP].
;;     (1/8/96) uncommented [topic company]

(in-package :sparser)

(gate-grammar *resolve-pronouns*
  (gload "ca;defNP2"))

(gate-grammar *find-subject-for-VP*
  (gload "ca;stranded VP1")
  (gload "ca;extract subj")
  (gload "ca;subj search2")
  (gload "ca;stranded NP")
  (gload "ca;ancilaries"))


(gate-grammar *topic*
  (gload "ca;first item")
  (when *companies*
    (gload "ca;topic company")))

