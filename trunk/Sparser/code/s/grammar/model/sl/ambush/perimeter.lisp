;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;    File: "perimeter"
;;;  Module: "grammar/model/sl/ambush/
;;; version: August 2007

;; Initiated 8/1/07

(in-package :sparser)

;; three hundred meters
;                                 SOURCE-START
;e0    ONES-NUMBER             1 "three" 2
;e2    SEQUENCE-OF-NUMBERS     2 "hundred" 3
;                                 "meters"
;                                 END-OF-SOURCE

;; three hundred AND sixty DEGREE perimeter 
;; WE'LL set up a three sixty once we get out of town
;; all right set up a perimeter three hundred meters outside of town
;; there's a tractor on the road about a hundred AND SIXTY meters