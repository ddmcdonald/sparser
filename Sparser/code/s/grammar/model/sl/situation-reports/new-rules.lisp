;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2006  BBN Solutions LLC.  -- all rights reserved
;;; $Id$
;;; 
;;;     File:  "new-rules"
;;;   Module:  "grammar;rules:words:"
;;;  Version:  0.0 November 2006

(in-package :sparser)

;; Force it to be a treetop so that we can run hyphen-ca-hook
;;
(assign-bracket word::hyphen ].phrase)
(assign-bracket word::hyphen phrase.[)
