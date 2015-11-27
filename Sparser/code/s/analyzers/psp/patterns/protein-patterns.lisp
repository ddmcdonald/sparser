;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "protein-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  1.1 Nov 2015

(in-package :sparser)

(defun ns-protein-pattern-resolve (start-pos end-pos unsorted-edges
                                             hyphen-positions slash-positions
                                             colon-positions other-punct)
  (or
   (cond
    (colon-positions 
     (make-bio-complex start-pos end-pos unsorted-edges
                       hyphen-positions slash-positions
                       colon-positions other-punct))
    (slash-positions (make-protein-collection start-pos end-pos unsorted-edges
                                              hyphen-positions slash-positions
                                              colon-positions other-punct))
    (hyphen-positions (make-bio-complex-with-hyphen start-pos end-pos unsorted-edges
                                                    hyphen-positions slash-positions
                                                    colon-positions other-punct)))
   (ns-pattern-dispatch start-pos end-pos unsorted-edges
                        hyphen-positions slash-positions
                        colon-positions other-punct)))