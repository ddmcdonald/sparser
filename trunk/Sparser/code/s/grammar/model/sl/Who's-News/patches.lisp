;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "patches"
;;;   Module:  "model;sl:whos news:"
;;;  version:  April 1991      system version 1.8.2

(in-package :CTI-source)

#|  This file has the "trivial" rules identified from the Dec 2; 
  cataloging.  They're all here so that their interactions can be
  more easily monitored.  |#


(define-name "All")
 ;; in wsj200, we lose a company ("Goodyear's All American Pipeline")
 ;; because the capitalized function word rewrites itself as the lowercase
 ;; version and the propername fsa can no longer see it.

