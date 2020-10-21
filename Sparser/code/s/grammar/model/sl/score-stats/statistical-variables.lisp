;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;    File: "statistical-variables"
;;;  Module: "grammar/model/sl/score-stats/
;;; version: September 2020

;;; started 9/2020 to gather tests and their metrics for reading
;;; articles for the SCORE project and other articles with statistics,
;;; especially in the behavioral sciences

(in-package :sparser)

(define-category stat-var :specializes abstract
                 )


(define-category continuous-stat-var :specializes stat-var
                 )
(define-category ordinal-stat-var :specializes stat-var
                 )
(define-category categorical-stat-var :specializes stat-var
                 ;; has levels
                 ;; if independent, is a factor
                 )

(define-category binary-stat-var :specializes categorical-stat-var
                 ;; has only two levels
                 ;; if independent, is a factor
                 )
