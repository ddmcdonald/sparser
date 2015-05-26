;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "lattice-operations"
;;;    Module:   "analyzers;psp:edges:"
;;;   Version:   1.0 May 2015

;; initiated in May 2015
;; Code to place referents in a description lattice to facilitate anaphora and other reasoning

(in-package :sparser)

(defparameter *lattice-ht* (make-hash-table :size 10000) 
  "This is the initial way that edge-referent's are linked to the structures that are in the lattice. 
   A bit slower than putting a field in the referent, but applicable to all referents, and does not change their structure.")

(defparameter *complete-interps* nil)

(defun place-referent-in-lattice (referent edge)
  (let*
      ((base-and-new-bindings (base-and-new-bindings edge))
       (lattice-description
        (find-or-make-lattice-description base-and-new-bindings)))
    
    (push base-and-new-bindings *complete-interps*)
    (setf (gethash referent *lattice-ht*) lattice-description)
    referent))

(defun find-or-make-lattice-description (base-and-new-bindings)
  base-and-new-bindings)

(defun base-and-new-bindings (edge)
  (let
      ((hr (head-referent? edge))
       (er (edge-referent edge)))
    (cond
     (hr
      (list hr 
            (let*
                ((hr-bindings 
                  (when (individual-p hr)
                    (indiv-binds hr)))
                 (e-bindings
                  (when (individual-p er)
                    (indiv-binds er)))
                 (new-bindings
                  (loop for b in e-bindings
                    when
                    (not
                     (loop for hb in hr-bindings
                       thereis
                       (and
                        (eq (binding-variable hb)(binding-variable b))
                        (equalp (binding-value hb) (binding-value b)))))
                    collect b)))
              (when (cdr new-bindings)
                (print (list hr new-bindings)))
              new-bindings)))
     (t
      (list er
            (when (individual-p er)
              (indiv-binds er)))))))
              

(defun head-referent? (edge)
  (when
      (and
       edge
       (edge-referent edge))
    (let
        ((left (edge-left-daughter edge))
         (right (edge-right-daughter edge))
         (ref (edge-referent edge)))
      (cond
       ((and (edge-p left) (same-category? (edge-referent left) ref))
        (edge-referent left))
       ((and (edge-p right) (same-category? (edge-referent right) ref))
        (edge-referent right))))))

(defun same-category? (daughter-ref ref)
  (or
   (and
    (category-p daughter-ref)
    (itypep ref daughter-ref)))
  (or
   (and
    (individual-p daughter-ref)
    (equal (indiv-type daughter-ref)
           (indiv-type ref)))))

  

