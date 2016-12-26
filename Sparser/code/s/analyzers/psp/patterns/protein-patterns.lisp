;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "protein-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  1.1 Nov 2015

(in-package :sparser)

(defun ns-protein-pattern-resolve (start-pos end-pos unsorted-edges
                                   hyphen-positions slash-positions
                                   colon-positions other-punct)
  (or
   (cond
     (colon-positions (make-bio-complex start-pos end-pos))
     (slash-positions (make-protein-collection start-pos end-pos))
     (hyphen-positions ;;(make-bio-complex-with-hyphen start-pos end-pos)
      (make-protein-collection start-pos end-pos)))
   (ns-pattern-dispatch start-pos end-pos unsorted-edges
                        hyphen-positions slash-positions
                        colon-positions other-punct)))

(defun ns-amino-pattern-resolve (start-pos end-pos unsorted-edges
                                 hyphen-positions slash-positions
                                 colon-positions other-punct)
  (or
   (cond
     (slash-positions (make-amino-collection start-pos end-pos))
     (hyphen-positions (make-amino-collection start-pos end-pos)))
   (ns-pattern-dispatch start-pos end-pos unsorted-edges
                        hyphen-positions slash-positions
                        colon-positions other-punct)))




(defun make-bio-complex (start-pos end-pos)
  (declare (special category::protein category::bio-complex 
                    category::nucleotide category::ion
                    category::small-molecule
                    category::protein-family))
  (let* ((ttops (treetops-between start-pos end-pos))
         (edges (loop for tt in ttops when (edge-p tt) collect tt))
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
  (declare (special category::protein category::collection))
  (let* ((ttops (treetops-between start-pos end-pos))
         (edges (loop for tt in ttops when (edge-p tt) collect tt))
         proteins)
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
      (make-ns-edge start-pos end-pos category::collection
                    :form category::n-bar
                    :rule 'make-protein-collection
                    :referent 
                    (find-or-make-individual 'collection 
                                             :items (reverse proteins)
                                             :type category::protein)
                    :constituents edges))
     (t
      (tr :conditions-for-protein-collection-failed start-pos end-pos)
      nil))))

(defun make-amino-collection (start-pos end-pos)
  (declare (special category::amino-acid category::collection))
  (let* ((ttops (treetops-between start-pos end-pos))
         (edges (loop for tt in ttops when (edge-p tt) collect tt))
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


