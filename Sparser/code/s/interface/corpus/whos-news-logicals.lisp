;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Who's News logicals"
;;;   Module:  "interface;corpus:"
;;;  version:  June 1995

;; 12/93 v2.3 reworked to make it all current
;; 2/9/94 there's no Feb91;3 directory somehow, so removed the logical
;; 6/13/95 added gating by the existance of a location for the corpus

(in-package :sparser)


(when cl-user::location-of-text-corpora
  ;; "WNEWS corpus;" is defined in "interface;corpus;logicals"
  
  (def-logical-pathname "typed;"      "WNEWS corpus;typed in;")
  
  (def-logical-pathname "originals;"  "WNEWS corpus;originals;")
  
  (def-logical-pathname "wsj #1;"     "WNEWS corpus;batch 1;")
  
  (def-logical-pathname "Dec90;"      "WNEWS corpus;december 1990;")
  (def-logical-pathname "Dec 0;"      "Dec90;section 0;")
  (def-logical-pathname "Dec 1;"      "Dec90;section 1;")
  (def-logical-pathname "Dec 2;"      "Dec90;section 2;")
  (def-logical-pathname "Dec 3;"      "Dec90;section 3;")
  
  (def-logical-pathname "3-28;"       "WNEWS corpus;3-28-91;")
  
  (def-logical-pathname "Feb91;"      "WNEWS corpus;Feb91;")
  (def-logical-pathname "Feb0;"       "Feb91;0;")
  (def-logical-pathname "Feb1;"       "Feb91;1;")
  (def-logical-pathname "Feb2;"       "Feb91;2;")
  
  (def-logical-pathname "1st 15 Who's News;" "WNEWS corpus;1st 15 of test;"))
