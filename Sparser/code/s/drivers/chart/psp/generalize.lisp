;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "generalize"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  February 2017

;; initiated 2/15/27

(in-package :sparser)

;;; driver

(defgeneric interpretation-has-something-to-generalize? (interp)
  (:documentation "In the early stages of this effort there
  will only be some things that could geenralize. This says
  whether there is one of them in this interpretation.")
  (:method ((s sentence))
    (let* ((contents (contents s))
           (candidates (sentence-individuals contents)))
      (some #'canonical-category-for candidates))))

#| If there is something, find it (in tree? or in interpretation?).
Look at where it is in the interpretation -- is that kind of
location something we know how to deal with?
   If so understand the location-kind as a transformation
rule (assuming that's appropriate). Carry out the transformation and
reinsert a copy of the individual having applied the generalization


|#
;; generalize is not fbound
(defun generalization-tester ()
  (let ((sentence (previous (sentence)))) ;; vs passed in
    (when (interpretation-has-something-to-generalize? sentence)
      (let* ((start-pos (starts-at-pos sentence))
             (end-pos (ends-at-pos sentence))
             (single-edge (edge-spanning start-pos end-pos)))
        (when single-edge ;; we (probably) understand the sentence
          (generalization-tester-1 single-edge sentence))))))

(defun generalization-tester-1 (edge sentence)
  (multiple-value-bind (cannonical-category i)
      (loop for i in (sentence-individuals (contents sentence))
         ;; that list is ordered from bottom to top, so if
         ;; there are two individuals of the same type, this will
         ;; return the 'deeper' one.
         when (canonical-category-for i)
         return (values (canonical-category-for i) i))
    (when cannonical-category
      (let ((semtree (semtree edge)))
        ;; now recover a path and classify it. This may
        ;; call for shifting what the individual is presently
        ;; bound to, so have to wait becore copying this
        ;; individual.
        (let ((path (path-to-i-in-semtree i semtree))
              (j (individual-for-ref cannonical-category)))
          (generalize-given-position i j path))))))

(defun path-to-i-in-semtree (i tree)
  (labels ((walk-down-pv (i pv path)
             (let ((var-name (car pv))
                   (subtree (cadr pv)))
               (push var-name path)
               (push (walk-subtree i subtree path) path)
               path))
           (walk-subtree (i tree path)
             (when (consp tree)
               (let ((head (car tree))
                     (pairs (cdr tree)))
                 (push head path)
                 (cond
                   ((eq i head)
                    (return-from path-to-i-in-semtree
                      (nreverse path)))
                   (t (loop for pair in pairs
                         as subpath = (walk-down-pv i pair path)
                         when (eq (car subpath) i)
                         return subpath)))))))
    (walk-subtree i tree nil)))


(def-k-function generalize-given-position (i j path)
  (:documentation "Rearrange the interpretation as appropriate for the 
   category of object. Deleting and forming bindings to fit and replacing 
   i (theoriginal) with j (the new bare individual that's an instance of 
   the canonical category")
#|  (:method (i (j category::certainty) path)
    (let ((path-as-symbols ))
      (ecase (cond
               ((equal path '(copular-predication value))
                :detach-and-move))
        (null)
        (:detach-and-move
  |#
  )


(defun generalize-individual (i category)
  "Return a new individual, j, that has the same set of
   bindings as i but is of the generalizing category."
  ;;/// May need to check for / accommodate differences in variables
  ;; in the two categories.
  (copy-individual-changing-type i category))


;; goes in objects/model/bindings/make.lisp if we do need it
(defun copy-individual-changing-type (i new-category)  
  (declare (special *description-lattice*))
  (let ((j (if *description-lattice*
             (make-dli-for-ref-category new-category)
             (make-unindexed-individual new-category))))
    (dolist (b (reverse (indiv-binds i)))
      (setq j (bind-variable (binding-variable b)
                             (binding-value b)
                             j)))
    (unless *description-lattice*
      (index/individual j new-category (indiv-binds j)))
    j))


;;;------
;;; data
;;;------

(defparameter *category-to-canonical-category* (make-hash-table)
  "Maps from categories to their generalization if there
 is one.")

(defgeneric canonical-category-for (item)
  (:documentation "Does this item have a defined canonical
  version? The table is defined over categories, but
  we usually have individuals. Note that other operation
  are probably necessary, hopefully as extensions of these
  methods.")
  (:method ((name symbol))
    (canonical-category-for (category-named name :error)))
  (:method ((i individual))
    (let ((cc (gethash (itype-of i) *category-to-canonical-category*)))
      (when cc
        (values cc i)))))
#|
    (canonical-category-for (itype-of i)))
  (:method ((c category))
    (let ((cc (gethash c *category-to-canonical-category*)))
      (when cc
        (values cc c)))) |#

(defgeneric define-canonical-category (name)
  (:documentation "All of the subcategories of this category
    should be generalized to it.")
  (:method ((name symbol))
    (define-canonical-category (category-named name :error)))
  (:method ((canonical referential-category))
    (loop for c in (subcategories-of canonical)
       do (setf (gethash c *category-to-canonical-category*)
                canonical))))

