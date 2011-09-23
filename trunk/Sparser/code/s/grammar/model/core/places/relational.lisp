;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; $Id$
;;;
;;;     File:  "relational"
;;;   Module:  "model;core:places:"
;;;  version:  July 2011

;; Extracted from object file 7/21/11

(in-package :sparser)

;;/// Add "17 miles NW of Foo" and such

;;;------------------------------------
;;; relative (prepositional) locations
;;;------------------------------------

(define-category  spatial-orientation
  :specializes location
  :instantiates :self
  :binds ((name :primitive word))
  :realization (:preposition name))

(defun define-spatial-preposition (string)
  (define-individual 'spatial-orientation :name string))



(define-category  relative-location  ;; "above the house"
  :instantiates self
  :specializes location
  :binds ((place)
          (functor spatial-orientation))
  :realization (:tree-family content-pp
                :mapping ((type . :self)
                          (articulator . functor)
                          (item . place)
                          (pp . :self)
                          (preposition . spatial-orientation)
                          (complement . np))))


#| "spatial-orientation" is a bad label for all those prepositions
     and it should be changed. Here's all the relevent places
     7/21/11 1:30

Davids-macbookpro:s ddm$ grep spatial-orientation **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
init/changed-files.lisp:add a notion of spatial-orientation (see define-preposition) so
init/changed-files.lisp:spatial-orientation label over the preposition.  These have to be
drivers/sinks/export.lisp:				      (functor (type spatial-orientation)
drivers/sinks/export.lisp:				(functor (type spatial-orientation)
drivers/sinks/export.lisp:				 (functor ((type spatial-orientation) 
init/workspaces/checkpoint.lisp:  1 #<edge2 2 spatial-orientation 4>
init/workspaces/checkpoint.lisp:#<edge2 2 spatial-orientation 4> is a structure of type EDGE.  It has
init/workspaces/checkpoint.lisp: REFERENT           #<spatial-orientation "out of" 15>
init/workspaces/checkpoint.lisp: RULE               #<PSR953  spatial-orientation ->  "out of">
init/workspaces/checkpoint.lisp:#<edge2 2 spatial-orientation 4>
init/workspaces/checkpoint.lisp:#<PSR953  spatial-orientation ->  "out of">
grammar/rules/syntax/questions.lisp:(def-cfr event (WH/be/you spatial-orientation)
grammar/rules/syntax/questions.lisp:(def-cfr event (WH/be spatial-orientation)
grammar/rules/syntax/questions.lisp:(def-cfr event (event spatial-orientation)
grammar/rules/tree-families/shortcuts.lisp:;;   spatial-orientation to sv-location, and interjection
grammar/rules/tree-families/shortcuts.lisp:			(loc3 . spatial-orientation)
grammar/rules/tree-families/shortcuts.lisp:			 (prep . spatial-orientation)
grammar/rules/words/prepositions2.lisp:;; 2.0 (10/14/99) Added the spatial-orientation category for the spatial
grammar/model/core/places/object.lisp:(define-category  spatial-orientation
grammar/model/core/places/object.lisp:  (define-individual 'spatial-orientation :name string))
grammar/model/core/places/object.lisp:          (functor spatial-orientation))
grammar/model/core/places/object.lisp:                          (preposition . spatial-orientation)
grammar/model/sl/checkpoint/rules.lisp:(def-cfr location (spatial-orientation ;; a preposition
grammar/model/sl/checkpoint/rules.lisp:(def-cfr event (event spatial-orientation)
grammar/model/sl/checkpoint/rules.lisp:(def-cfr location (spatial-orientation direction)
grammar/model/sl/checkpoint/vocabulary.lisp:      (:location (vp (vg loc3) ;; spatial-orientation)
grammar/model/sl/checkpoint/vocabulary.lisp:							       (functor (spatial-orientation "out of")))))))
grammar/model/sl/checkpoint/vocabulary.lisp:								   (functor (spatial-orientation "out of")))))))
grammar/model/sl/checkpoint/vocabulary.lisp:								     (functor (spatial-orientation "in"))))
grammar/model/sl/checkpoint/vocabulary.lisp:						   (functor (spatial-orientation "in"))))
grammar/model/sl/checkpoint/vocabulary.lisp:							  (functor (spatial-orientation "in"))))
grammar/model/sl/checkpoint/vocabulary.lisp:			   (location (spatial-orientation "on")))))  ;; test fails due to sticky psi issue
grammar/model/sl/checkpoint/vocabulary.lisp:			(location (spatial-orientation "on")))))  ;; test fails due to sticky psi issue
Davids-macbookpro:s ddm$ 

|#

