;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "irregular verbs"
;;;   Module:  "model;dossiers:"
;;;  version:  July 2011

;; Conceptually this is like dossiers/semantics-free-verbs.lisp
;; initiated 4/28/95. Fleshed out a bit 7/11/11.

(in-package :sparser)

#|
 Model:
  infinitive ;; "to give"
  tensed/singular    ;; "he gives"
  tensed/plural      ;; "they give"
  past-tense         ;; "they gave"
  past-participle    ;; "they have given"
  present-participle ;; "they are giving"

 Template:
    Usually omit the referent so it becomes the category 'event'

(define-main-verb '
    :referent
    :infinitive ""
    :tensed/singular ""
    :tensed/plural ""
    :past-tense "gave"
    :past-participle "given"
    :present-participle "giving"
    :nominalization "")

|#

(define-main-verb 'break
    :infinitive "break"
    :past-tense "broke"
    :past-participle "broken"
    :present-participle "broken")

(define-main-verb 'give
    :infinitive "give"
    :past-tense "gave"
    :past-participle "given"
    :present-participle "giving")

;;added in 8/30/13
#|
(define-main-verb 'catch
  :infinitive "catch"
  :past-tense "caught"
  :past-participle "caught"
  :present-participle "catching")|#





