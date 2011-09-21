;;;-*- Mode: lisp; Package: Mumble; Syntax: Common-lisp; Base: 10 -*-

;;;  MUMBLE-86:  types; postprocessing

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved


(in-package :mumble)


;################################################################
;      Postprocessing references to other objects;
;################################################################
#|
   When the grammar writer is writing a choice (or whatever) and
 puts down the name of a constituent-structure-label (or whatever) the
 object that will actually get manipulated inside the program is
 not the symbol they wrote (e.g. "subject") but rather the internal
 vector of properties that give "subject" its definition in the grammar.
   So... at some point a transition must take place -- a massive substitution
 of objects for atoms.  This can't happen before all of the definitions
 are in place, therefore it is a function of postprocessing.

   This substitution also must occur when ever an object is revised online
 because of debugging.  We must slip in and edit any of the objects fields that
 were changed by the edits.
|#


;################################################################
;  Postprocessing all objects at once after all files are loaded
;################################################################

(defun postprocess-entire-system ()
  (declare (special *lattice-of-all-the-types*))
  (when *loading-whole-system*
    (format t "~&Postprocessing the entire system.~%")
    (postprocess-whole-type-lattice  *lattice-of-all-the-types*)
    (alphabetize-catalogs)))

(add-mumble-initialization 'postprocess-entire-system)

;;; I don't believe either of the following are called anymore.

(defun postprocess-the-dictionary ()
  (declare (special *lattice-of-dictionary-types*))
  (postprocess-whole-type-lattice  *lattice-of-dictionary-types*))

(defun postprocess-the-grammar ()
  (declare (special *lattice-of-grammar-objects*))
  (postprocess-whole-type-lattice *lattice-of-grammar-objects*))


(defun postprocess-whole-type-lattice  (lattice-descriptor)
  "Intended for the all-at-once postprocessing that takes place after
   a set of object-defining files are loaded.  Takes a descriptor of
   a lattice as input and goes through the catalogs of objects of
   those types in the order dictated by the descriptor, applying the
   type's postprocessing function to each of the objects in the
   catalog in the order they happen to already have in the catalog."

  ;; We break the function down into two levels of subsidiary functions, 
  ;; postprocess-all-objects-of-type and postprocess-object.  This isn't
  ;; necessary, but it's convenient when a postprocessing function breaks
  ;; (probably because of a bad object definition form) because they give
  ;; the user convenient stack frames to return from (presumably after
  ;; fixing the problem some other way.
  
  (dolist (type-partial-order lattice-descriptor)
    (dolist (type type-partial-order)
      (let* ((the-type-object (type-named type))
	     (function        (postprocessing-fn the-type-object)))
	(when function
	  (postprocess-all-objects-of-type the-type-object function))))))

(defun postprocess-all-objects-of-type (the-type-object postp-function)
  "Calls the postprocessing function on all members in the catalog of the type
object."
  (format t "~&Postprocessing objects of type ~s~%" (name the-type-object))
  (dolist (obj (members (mcatalog the-type-object)))
    (unless (postprocessed? obj)
      (postprocess-object obj postp-function))))

(defun postprocess-object (obj postp-function)
  "Calls the postprocessing function on one object."
  (funcall postp-function obj)
  (setf (postprocessed? obj) t))

(defun alphabetize-catalogs ()
  (let ((the-type-object-catalog (mcatalog (mtype 'mtype))))
    ; first, alphabetize the type of type object's catalog
    (setf (members the-type-object-catalog)
	  (sort (members the-type-object-catalog)
		#'string-lessp))
    ; sort the catalog for every object type
    (mapcar #'(lambda (object-type)
		(setf (members (mcatalog (type-named object-type)))
		      (sort (members (mcatalog (type-named object-type)))
			    #'string-lessp :key #'name)))
	    (members the-type-object-catalog))))


;################################################################
;            Postprocessing them one at a time
;################################################################

#|  Called as NEW objects are created and added to the system AFTER the system
has been initially loaded and postprocessed.
Does: 1. substitution of vectors for symbols within the new object |#

(defun postprocess (obj)
  (let* ((obj-type          (mtype (type-of obj)))
	 (postprocessing-fn (postprocessing-fn obj-type)))
    (when (and postprocessing-fn (not (postprocessed? obj)))
      (funcall postprocessing-fn  obj)
      (setf (postprocessed? obj) t))))

(defun return-object-of-type (type-name item)
  (let ((object (mumble-value item type-name)))
    (or object 
	(mbug "Missing definition of ~A of type ~A" item type-name))))
