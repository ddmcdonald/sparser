;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2016,2022  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "places"
;;;   Module:  "model;core:places:"
;;;  version:  April 2022

;; places -- entities that denote locations

;; initated 8/12/11. Added name->place-name 11/7. 7/22/13 made the
;; names permanent.8/28/13 Made convert-name-to-place-name take other
;; types of arguments. 
;; 0.1 4/14/14 Changed the v/r on type in name-of-location and named-
;;   location to be a category rather than 'path-type' (which could
;;   never have worked). 1/4/16 compiler quieting.

;; 4/27/22 This has mostly been supplanted by the conceptualizations
;; in places/grounded-places.lisp. We retain name-of-location, but
;; named-location is replaced with grounded-place

(in-package :sparser)

#|  The idea is to treat places that have names just like people
that have names, with a special kind of name: name-of-location
which is created by a call to make-location name from 
categorize-and-form-name (/// which is probably a rusty pathway)

Those are the names of named-location instances, which are organized
by their type (pond, river, street, town, etc.)

|#
;;;---------------------------------
;;; place names -- name-of-location
;;;---------------------------------

(define-category name-of-location ;; modeled on person-name
  :instantiates self
  :specializes name
  :binds ((sequence . sequence)
          (type :primitive category)) ;; e.g. "Pond"
  :index (:permanent :key sequence))

(defun make-location-name (items location-head)
  "If the head names a category (e.g. 'road' or any other
   sort of path) then we create an individual of that type
   and set this as its name. Othewise we just make the name.
   The return value is passed to classify-&-record-span as
   the result. categorize-and-form-name is our caller. If we
   just return a name the conversion to a NE with that name
   is done by keying off the category of the name."
  ;;//// let the establish-referent do the work.
  ;;/// type-checks on location-head: (:or region-type path-type)
  (let* ((sequence (cond
                     ((listp items)
                      (define-sequence items))
                     ((itypep items 'sequence)
                      items)))
         (name (define-individual 'name-of-location
                 :sequence sequence
                 :type location-head)))
    name))

(defun convert-name-to-place-name (name-edge)
  "Called from move+to+name DA rule in moving.lisp
   where it has to make over an existing edge already
   in place."
  (let* ((name (edge-referent name-edge))
         (sequence
          (cond
           ((itypep name 'uncategorized-name)
            (value-of 'name/s name))
	   ((itypep name 'named-object)
	    (value-of 'name/s (binding-value (binds-variable name 'name))))
           ((itypep name 'name-word)
            (define-sequence `(,name)))
           (t (push-debug `(,name name-edge))
              (error "Unexpected type of name: ~a~%~a"
                     (itype-of name) name)))))
    (let* ((place-name (define-individual 'name-of-location
                         :sequence sequence))
           (place (define-individual 'named-location
                    :name place-name)))
      (set-edge-referent name-edge place)
      (setf (edge-category name-edge) category::location)
      ;; Passed back to execute-da-trie, which has to know
      ;; where to continue from
      name-edge)))

(defun extract-name-sequence-from-name (name)
  (cond
    ((itypep name 'uncategorized-name)
     (value-of 'name/s name))
    ((itypep name 'name-word)
     (define-sequence `(,name)))
    (t (push-debug `(,name name-edge))
       (error "Unexpected type of name: ~a~%~a"
              (itype-of name) name))))

