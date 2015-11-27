;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
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
    (hyphen-positions (make-bio-complex-with-hyphen start-pos end-pos)))
   (ns-pattern-dispatch start-pos end-pos unsorted-edges
                        hyphen-positions slash-positions
                        colon-positions other-punct)))


(defun make-bio-complex (start-pos end-pos)
  (declare (special category::protein category::bio-complex))
   (let* ((ttops (treetops-between start-pos end-pos))
         (edges (loop for tt in ttops when (edge-p tt) collect tt))
         (referent (find-or-make-individual 'bio-complex)))
    (when
        (loop for edge in edges
          always
          (let ((ref (edge-referent edge)))
            (cond
             ((and (individual-p ref) (itypep ref category::protein))
              (setq referent 
                    (bind-dli-variable 'component ref referent)))
             ((word-p ref) t)
             (t nil))))
      (make-ns-edge start-pos end-pos category::bio-complex
                    :form category::n-bar
                    :rule 'make-bio-complex
                    :referent referent
                    :constituents edges))))

(defun make-bio-complex-with-hyphen (start-pos end-pos)
  (make-bio-complex start-pos end-pos))

(defun make-protein-collection (start-pos end-pos)
  (declare (special category::protein))
  (let* ((ttops (treetops-between start-pos end-pos))
         (edges (loop for tt in ttops when (edge-p tt) collect tt))
         proteins)
    (when
        (loop for edge in edges
          always
          (let ((ref (edge-referent edge)))
            (cond
             ((and (individual-p ref) (itypep ref category::protein))
              (push ref proteins))
             ((word-p ref) t)
             (t nil))))
      
      (make-ns-edge start-pos end-pos category::collection
                    :form category::n-bar
                    :rule 'make-bio-collection
                    :referent 
                    (find-or-make-individual 'collection 
                                             :items (reverse proteins)
                                             :type category::protein)
                    :constituents edges))))

