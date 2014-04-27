;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "places"
;;;   Module:  "model;core:places:"
;;;  version:  0.1 April 2014

;; places -- entities that denote locations

;; initated 8/12/11. Added name->place-name 11/7. 7/22/13 made the
;; names permanent.8/28/13 Made convert-name-to-place-name take other
;; types of arguments. 
;; 0.1 4/14/14 Changed the v/r on type in name-of-location and named-
;;   location to be a category rather than 'path-type' (which could
;;   never have worked). 

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
  ;; Called from categorize-and-form-name
  ;; Returns a name. The object with that name is created in 
  ;; establish-referent-of-pn, keying off the category of the name
  ;;/// type-checks on location-head: (:or region-type path-type)
  (let* ((sequence (define-sequence items))
         (name (define-individual 'name-of-location
                 :sequence sequence
                 :type location-head)))
    name))

(defun convert-name-to-place-name (name-edge)
  ;; Called from move+to+name DA rule in moving.lisp
  ;; And (at least for the moment) by give-kind-its-name
  (let* ((name (edge-referent name-edge))
         (sequence
          (cond
           ((itypep name 'uncategorized-name)
            (value-of 'name/s name))
           ((itypep name 'name-word)
            (define-sequence `(,name)))
           (t (push-debug `(,name name-edge))
              (error "Unexpected type of name: ~a~%~a"
                     (i-type-of name) name)))))
    (let* ((place-name (define-individual 'name-of-location
                         :sequence sequence))
           (place (define-individual 'named-location
                    :name place-name)))
      (setf (edge-referent name-edge) place)
      (setf (edge-category name-edge) category::location)
      ;; Passed back to execute-da-trie, which has to know
      ;; where to continue from
      name-edge)))




;;;------------------------
;;; named locations proper
;;;------------------------

;; We make instances of the type: rivers, cities, streets.
;; The type was noted in the name.
;;    But (8/14/11) the name variable is going into the binds
;; field rather than the bound-in (no effect of individual-style
;; bound facts or something), so just to get further ahead
;; here's a category we should be able to dispense with. 

(define-category named-location
  :instantiates location
  :specializes location
  :binds ((type  :primitive category)
          (name . name-of-location))
  :index (:permanent
          :special-case :find find/named-location
                        :index index/named-location
                        :reclaim reclaim/named-location))



;;--- operations called from establish-referent-of-pn,
;; which wouldn't be the same as instantiating a named
;; location

(defun find/location-with-name (name)
  (let* ((type (value-of 'type name))
         (table (location-table-for type)))
    (when table
      (gethash name table))))

(defun make/location-with-name (name)
  (let* ((type (value-of 'type name))
         (i (define-individual 'named-location
              :name name
              :type type)))
    i))


;;--- operations from the special-case indexing calls,
;; which we might not need if we can get these done
;; as instances of their types. 

(defun find/named-location (named-location-category
                            binding-instructions)
  (let ((name (value-of-instr 'name binding-instructions)))
    (find/location-with-name name)))

(defun index/named-location (i named-loc-category bindings)
  (let* ((type (value-of/binding 'type bindings named-loc-category))
         (name (value-of/binding 'name bindings named-loc-category))
         (table (location-table-for type)))
    (setf (gethash name table) i)))

(defun location-table-for (type)
  (let ((table-of-tables (cat-instances category::named-location)))
    (unless table-of-tables
      (setq table-of-tables
            (setf (cat-instances category::named-location)
                  (make-hash-table))))
    (let ((type-specific-table (gethash type table-of-tables)))
      (unless type-specific-table
        (setq type-specific-table
              (setf (gethash type table-of-tables)
                    (make-hash-table))))
      type-specific-table)))

(defun reclaim/named-location (i instances named-loc-category)
  ;; called from unindex-individual
  (let* ((type (value-of 'type i named-loc-category))
         (name (value-of 'name i named-loc-category))
         (table (location-table-for type)))
    (remhash name table)))
  