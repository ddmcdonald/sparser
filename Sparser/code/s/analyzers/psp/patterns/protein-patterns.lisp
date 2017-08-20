;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "protein-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  1.1 Nov 2015

(in-package :sparser)

(defun ns-protein-pattern-resolve (pattern start-pos end-pos)
  (or
   (cond
     ((member :colon pattern) (make-bio-complex start-pos end-pos))
     ((member :forward-slash pattern) (make-protein-collection start-pos end-pos))
     ((member :hyphen pattern) ;;(make-bio-complex-with-hyphen start-pos end-pos)
      (make-protein-collection start-pos end-pos)))
   (ns-pattern-dispatch pattern start-pos end-pos)))

(defun ns-amino-pattern-resolve (pattern start-pos end-pos)
  (or
   (cond
     ((member :forward-slash pattern) (make-amino-collection start-pos end-pos))
     ((member :hyphen pattern) (make-amino-collection start-pos end-pos)))
   (ns-pattern-dispatch pattern start-pos end-pos)))




(defun make-bio-complex (start-pos end-pos)
  (declare (special category::protein category::bio-complex 
                    category::nucleotide category::ion
                    category::n-bar
                    category::small-molecule
                    category::protein-family))
  (let* ((edges (loop for tt in (treetops-between start-pos end-pos)
                      when (edge-p tt) collect tt))
         (referent (find-or-make-individual 'bio-complex))
         (nucleotides nil))
                   
    (cond
     ((loop for edge in edges
        always
        (let ((ref (edge-referent edge)))
          (or
           (when 
               (individual-p ref) 
             (cond ((itypep ref category::nucleotide)
                    (when
                        (null nucleotides) ;; only one nucleotide per complex -- not GDP:GTP
                      (setq referent (bind-dli-variable 'component ref referent))
                      (setq nucleotides ref)))
                   ((or (itypep ref category::protein) (itypep ref category::protein-family)
                              (itypep ref category::small-molecule) (itypep ref category::ion))
                     (setq referent (bind-dli-variable 'component ref referent)))))
           (when (word-p ref) t))))
      (tr :making-a-bio-complex start-pos end-pos)
      (make-ns-edge start-pos end-pos category::bio-complex
                    :form category::n-bar
                    :rule 'make-bio-complex
                    :referent referent
                    :constituents edges))
     (t
      (tr :conditions-for-bio-complex-failed start-pos end-pos)
      nil))))

(defun make-bio-complex-with-hyphen (start-pos end-pos)
  (make-bio-complex start-pos end-pos))

(defun make-protein-collection (start-pos end-pos)
  (declare (special category::protein category::collection category::n-bar))
  (let* ((edges (loop for tt in (treetops-between start-pos end-pos)
                      when (edge-p tt) collect tt))
         proteins
         (category
          (if (cddr proteins)
              category::collection
              category::collection
              ;;category::hyphenated-pair Work in progress
              ;;  want "phosphorylated Trk-ROS" to specify a complex
              )))
    (cond
     ((loop for edge in edges
        always
        (let ((ref (edge-referent edge)))
          (cond
           ((and (individual-p ref) (itypep ref category::protein))
            (push ref proteins))
           ((word-p ref) t)
           (t nil))))
      (tr :making-a-protein-collection start-pos end-pos)
      (make-ns-edge start-pos end-pos category
                    :form category::n-bar
                    :rule 'make-protein-collection
                    :referent 
                    (find-or-make-individual category
                                             :items (reverse proteins)
                                             :type category::protein)
                    :constituents edges))
     (t
      (tr :conditions-for-protein-collection-failed start-pos end-pos)
      nil))))

(defun make-amino-collection (start-pos end-pos)
  (declare (special category::amino-acid category::collection category::n-bar))
  (let* ((edges (loop for tt in (treetops-between start-pos end-pos)
                      when (edge-p tt) collect tt))
         aminos)
    (cond
     ((loop for edge in edges
        always
        (let ((ref (edge-referent edge)))
          (cond
           ((and (individual-p ref) (itypep ref category::amino-acid))
            (push ref aminos))
           ((word-p ref) t)
           (t nil))))
      (tr :making-a-amino-collection start-pos end-pos)
      (make-ns-edge start-pos end-pos category::collection
                    :form category::n-bar
                    :rule 'make-amino-collection
                    :referent 
                    (find-or-make-individual 'collection 
                                             :items (reverse aminos)
                                             :type category::amino-acid)
                    :constituents edges))
     (t
      (tr :conditions-for-amino-collection-failed start-pos end-pos)
      nil))))


