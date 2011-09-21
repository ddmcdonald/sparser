;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: postprocessing-order.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86: objects;postprocessing-order

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)


(defparameter  *lattice-of-grammar-objects*     ;n.b. so far it's only one type wide
   '(  (grammatical-characteristic
	 word-stream-action-type
	 slot-label
	 node-label
	 word-label
	 word
	 tense-marker
	 ttrace
	 punctuation-mark
	 phrase
	 splicing-attachment-point
	 lowering-attachment-point
	 )
     ))

(defparameter  *lattice-of-dictionary-types*
   '(  ( accessory-type
         tree-family
	 curried-tree-family
	 single-choice
	 attachment-class
	 single-attachment-choice
	 bundle-type
         specification-template
         table-entry-for-individuals
         table-entry-for-classes
	 )
     ))

(defparameter  *lattice-of-all-the-types*
   ;will have to be spelled out if there's ever an interaction
   `(  ,(car *lattice-of-grammar-objects*)
       ,(car *lattice-of-dictionary-types*)
       ))
