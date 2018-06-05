;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright 2018 David D. McDonald, all rights reserved
;;;
;;;     File: "bob-ont-reader"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  May 2018

;; initiated 5/10/18 to mine the structure of the TRIPS ontology directly
;; from the source files. Builds on bob-ont-reader.lisp

(in-package :sparser)

#| The files are all in trips/ {bob, cabot, ...}/src/OntologyManager/
     Data/LFdata/*.lisp
5/10/18 on cabot those are
abstract-types.lisp		physobj.lisp			social-contract.lisp
domain-and-attribute-types.lisp	predicates.lisp			specific-situation-types.lisp
feature-declarations.lisp	property-val.lisp		speech-acts.lisp
feature-types.lisp		root-types.lisp			time-location-types.lisp
music-terminology.lisp		situation-types.lisp

With forms like this, though inspection says only the parent is required 
(except for root)

;; natural, unnatural
(define-type ont::natural
 :parent ont::artificiality-val 
 :wordnet-sense-keys ("natural%3:00:02" )
 :arguments ((:REQUIRED ONT::FIGURE ((? lof f::phys-obj f::abstr-obj f::situation )))))

Also have observed :comment and :sem fields. 

Read all of the files, form by form. For each define-type form instantiate 
a trips-ont-concept (from Bob reader). Make a minimal tree tructue

|#

;;--- accumulators

(defvar *name-to-trips-type* (make-hash-table) ;; 2,534
  "Names are symbols like ont::mug, i.e 'mug in the :ont package.")

(defun get-trips-type (name)
  (let ((ont-name (intern (symbol-name name) (find-package :ont))))
    (gethash ont-name *name-to-trips-type*)))

(defvar *trips-types* nil ;; 2,752
  "List of the type-objects we create.")

(defun clear-trips-on-accumulators ()
  (setq *trips-types* nil)
  (clrhash *name-to-trips-type*))

;;--- The files to operate over

(defparameter *trips-file-list*
    '(abstract-types.lisp      	physobj.lisp	       	social-contract.lisp
domain-and-attribute-types.lisp	predicates.lisp	       	specific-situation-types.lisp
#|feature-declarations.lisp|#	property-val.lisp     	speech-acts.lisp
#|feature-types.lisp|#		root-types.lisp	       	time-location-types.lisp
music-terminology.lisp		situation-types.lisp))

(defvar *trips-lfdata* nil)
(defun set-base-directory-location-of-trips-lf
    (&optional (namestring "~/projects/cwc-integ/trips/cabot/src/OntologyManager/Data/LFdata/"))
  (setq *trips-lfdata* namestring))


;;--- driver

(defun assimiate-trips-type-definitions ()
  (ensure-ont-wn-packages)
  (set-base-directory-location-of-trips-lf)
  (clear-trips-on-accumulators)
  (let ((base *trips-lfdata*))
    (loop for file-name in *trips-file-list*
       as namestring = (string-append base file-name)
       do (read-trips-ont-file namestring))))
         
(defun read-trips-ont-file (namestring)
  (format t "~&~%Reading ~a~%" namestring)
  (with-open-file (stream
                   namestring
                   :direction :input
                   :if-does-not-exist :error)
    (loop for form = (read stream nil :eof)
       until (eq form :eof)
       do (process-trips-type-form form))))

(defun process-trips-type-form (form)
  (let ((operator (car form)))
    (unless (memq operator '(define-type in-package))
      (error "New TRIPS LF operator: ~a" operator))
    (when (eq operator 'define-type)
      (let* ((name (second form))
             (attr-value-pairs (cddr form))
             (name-of-super (cadr (memq :parent attr-value-pairs))))
        (format t "~a " name)
        (let* ((superc (get-trips-type name-of-super))
               (type (make-instance 'trips-ont-concept
                                    :name name
                                    :sc (when name-of-super ;; root doesn't have one
                                          (or superc name-of-super)))))
          (setf (gethash name *name-to-trips-type*) type)
          (push type *trips-types*)
          (when superc
            (push type (trc-subcs superc)))
          (loop for (tag value) on attr-value-pairs by #'cddr
             do (case tag
                  (:comment (setf (trc-comment type) value))
                  (:wordnet-sense-keys (setf (wn-senses type) value))))
          type)))))

(defun fill-in-trips-parent-fields (&aux tt-without-parents)
  (loop for tt in *trips-types*
     as super = (trc-superc tt)
     when (symbolp super)
     do (let ((super-tt (get-trips-type super)))
          (if super-tt
            (then (setf (trc-superc tt) super-tt)
                  (push tt (trc-subcs super-tt)))
            (push tt tt-without-parents))))
   tt-without-parents)


;;--- display (sub-)trees of TRIPS types

(defgeneric display-trips-tree (tt &optional stream)
  (:documentation "Write the type and all of its sub-types recursively
    to the stream")
  (:method ((tt-name symbol) &optional stream)
    (display-trips-tree (get-trips-type tt-name) (or stream *standard-output*)))
  (:method ((tt trips-ont-concept) &optional stream)
    (write-tree-of-tt-below tt 0 (or stream *standard-output*))))

(defgeneric write-tree-of-tt-below (tt indent stream)
  (:method ((tt-name symbol) (indent number) stream)
    (let ((tt (get-trips-type tt-name)))
      (unless t (error "No TRIPS type object named ~a" tt-name))
      (write-tree-of-tt-below tt indent stream)))
  (:method ((tt trips-ont-concept) (indent number) stream)
    (write-tt-tree-line tt indent stream)
    (with-slots (sub-concepts) tt
      (when sub-concepts
        (loop for s in sub-concepts
           do (write-tree-of-tt-below s (+ 2 indent) stream))))))

(defun write-tt-tree-line (tt indent stream)
  (format stream "~&~VT+ ~d ~a~%"  ;;"~&~VT~a~%"
          indent
          (round indent 2) ;; level
          (name tt)))

(defun write-tt-tree-to-org-file (&key type namestring)
  (unless namestring
    (setq namestring "~/ws/CLiC/clic/notes/trips-ontology-views/trips-tree.org"))
  (unless type (setq type 'root))
  (let ((tt (get-trips-type type)))
    (with-open-file (stream namestring :direction :output :if-exists :supersede)
      (format stream "-*-org-*~
                    ~%#+TITLE: TRIPS ontology~
                    ~%#+DATE: ~a~%"
              (date-&-time-as-formatted-string))
      (write-tree-of-tt-below tt 0 stream))))
              
