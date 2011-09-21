;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: curried-tree-families.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;;MUMBLE-86:  message-level;curried-tree-families

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)


(define-curried-tree-family fall-asleep (agent)
  Adverbial-complement-two-explicit-args
  ((verb "fall")(theme "asleep")))


(define-curried-tree-family chase (agent patient)
  transitive-verb_two-explicit-args 
  ((verb "chase")))


(define-curried-tree-family bite  (agent patient)
  transitive-verb_two-explicit-args
  ((verb "bite")))

(define-curried-tree-family bury  (agent patient)
  transitive-verb_two-explicit-args
  ((verb "bury")))

(define-curried-tree-family free  (agent patient)
  transitive-verb_two-explicit-args
  ((verb "free")))

(define-curried-tree-family produce  (agent patient)
  transitive-verb_two-explicit-args
  ((verb "produce")))

(define-curried-tree-family sue  (agent patient)
  transitive-verb_two-explicit-args 
  ((verb "sue")))




(define-curried-tree-family work-for  (agent object)
 transitive-prepcomp_two-explicit-args
  ((verb "work") (prep "for")))

(define-curried-tree-family snap-at  (agent object)
 transitive-prepcomp_two-explicit-args
  ((verb "snap") (prep "at")))



(define-curried-tree-family read (agent patient)
  transitive-verb_two-explicit-args 
  ((verb "read")))

(define-curried-tree-family buy (agent theme goal)
  For-dative_three-explicit-args 
  ((verb "buy")))


(define-curried-tree-family pp+in (object)
  prepositional-phrase-class
  ((prep "in")))


(define-curried-tree-family pp+at (object)
  prepositional-phrase-class
  ((prep "at")))

(define-curried-tree-family pp+for (object)
  prepositional-phrase-class
  ((prep "for")))

(define-curried-tree-family pp+by (object)
  prepositional-phrase-class
  ((prep "by")))

(define-curried-tree-family pp+on (object)
  prepositional-phrase-class
  ((prep "on")))

(define-curried-tree-family pp+of (object)
  prepositional-phrase-class
  ((prep "of")))

(define-curried-tree-family pp+to (object)
  prepositional-phrase-class
  ((prep "to")))

(define-curried-tree-family pp+across (object)
  prepositional-phrase-class
  ((prep "across")))

(define-curried-tree-family pp+around (object)
  prepositional-phrase-class
  ((prep "around")))

(define-curried-tree-family pp+from (object)
  prepositional-phrase-class
  ((prep "from")))

(define-curried-tree-family pp+up (object)
  prepositional-phrase-class
  ((prep "up")))

(define-curried-tree-family pp+toward (object)
  prepositional-phrase-class
  ((prep "toward")))

(define-curried-tree-family pp+through (object)
  prepositional-phrase-class
  ((prep "through")))

(define-curried-tree-family pp+between (object)
  prepositional-phrase-class
  ((prep "between")))

(define-curried-tree-family pp+out (object)
  prepositional-phrase-class
  ((prep "out")))

(define-curried-tree-family pp+onto (object)
  prepositional-phrase-class
  ((prep "onto")))

(define-curried-tree-family pp+with (object)
  prepositional-phrase-class
  ((prep "with")))

(define-curried-tree-family pp+about (object)
  prepositional-phrase-class
  ((prep "about")))

(define-curried-tree-family pp+along (object)
  prepositional-phrase-class
  ((prep "along")))

(define-curried-tree-family pp+until (object)
  prepositional-phrase-class
  ((prep "until")))
