;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "object"
;;;   Module:  "objects;brackets:"
;;;  Version:   1.2 March 2007

;; first version in October 1990
;; 1.1 (4/25/91 v1.8.1)  Dropped the operation field, and added plist
;;      and symbol, as well as a routine for constructing the pname
;;      of a bracket's symbol.
;; 1.2 (3/5/07) Appears that Allegro is mucking with the hashtable that's used to
;;      handle rank, so switching to a field. 4/27/09 Added brackets-for-word.

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (bracket
            (:conc-name #:b-)
            (:print-function print-bracket-structure))

  direction  ;; one of the symbols :[ or :]
  placement  ;; either :before or :after
  word       ;; a #<word>
  category   ;; a #<category> giving the form of a class of words
  symbol     ;; a specially constructed symbol in the :cs package
  rank       ;; a number: picks which wins when multiple brackets are available
  plist
  )


;;; symbols for brackets


;;;-------------------------------------
;;; predicates, sub-types of the object
;;;-------------------------------------

(defun open-bracket (b)
  (eq :[ (b-direction b)))

(defun close-bracket (b)
  (eq :] (b-direction b)))


;;;-----------
;;; Accessors
;;;-----------

(defun brackets-for-word (word)
  (unless (word-p word)
    (let ( w )
      (typecase word
	(string 
	 (setq w (word-named word)))
	(otherwise
	 (break "New datatype: ~a~%~a" (type-of word) word)))
      (unless w 
	(error "No word has been defined that is spelled \"~a\"" word))
      (setq word w)))
  (rs-phrase-boundary (word-rule-set word)))

