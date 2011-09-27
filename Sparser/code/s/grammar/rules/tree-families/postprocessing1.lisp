;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995-2005,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "postprocessing"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  1.0 September 2011

;; initiated 1/17/95. Stubbed Postprocess-tree-families 2/22.
;; Finished 4/14.   4/27 tweeked it enough to allow it to be run
;; several times as etfs are defined during a settion.
;; 0.1 (6/14) added check for Chomsky adjunction types and made the list of
;;      root labels fixed.
;; 1.0 (3/22/98) modified to handle cases as structures.  (3/11/05) Ignoring
;;   new kind of modifier etfs.
;;   (7/19/11) Cleaned up on case that shouldn't be complained about.
;;   Killed off the older version of this in objects/model/tree-families
;;   (9/26) Added a few more cases. Need to think through the old rationale
;;   for why to complain.

(in-package :sparser)

;;;--------------
;;; accumulators
;;;--------------

(defparameter *root-labels-of-tree-families*
               (list (category-named 's)
                     (category-named 'np)
                     (category-named 'pp)
                     (category-named 'adjunct-to-np)
                     (category-named 'adjunct-to-s)
                     )
  "This could be dynamically extended by the checks made during postprocessing,
   but holding off on that until the set gets larger and all the conventions
   are clear. 6/95")

(defparameter *root-categories-to-ETFs* (make-hash-table))


(defun clear-etf-accumulators ()
  ;; useful when debugging all this since these tables directly drive
  ;; the autodef tableau
  (setf (gethash (category-named 's) *root-categories-to-ETFs*) nil)
  (setf (gethash (category-named 'np) *root-categories-to-ETFs*) nil)
  (setf (gethash (category-named 'pp) *root-categories-to-ETFs*) nil)
  (setf (gethash (category-named 'adjunct-to-np) *root-categories-to-ETFs*) nil)
  (setf (gethash (category-named 'adjunct-to-s) *root-categories-to-ETFs*) nil))



;;;--------
;;; driver
;;;--------

(defun postprocess-tree-families ( &optional
                                   (list-of-tree-families
                                    *tree-families-defined*) )
  ;; Called from Postprocess-grammar-indexes. What it returns is
  ;; bound to *tree-families-defined* //and should be sorted.

  (let* ((s-etfs (gethash (category-named 's) *root-categories-to-ETFs*))
         (np-etfs (gethash (category-named 'np) *root-categories-to-ETFs*))
         (pp-etfs (gethash (category-named 'pp) *root-categories-to-ETFs*))
         (np-adjnt-etfs (gethash (category-named 'adjunct-to-np) *root-categories-to-ETFs*))
         (s-adjnt-etfs (gethash (category-named 'adjunct-to-s) *root-categories-to-ETFs*))
         first-case  lhs-symbol )

    (dolist (etf list-of-tree-families)


      (unless (eq (etf-type etf) :mixin)
        (unless (referential-category-p etf)  ;; ?? how do these get on the list ??
          (setq first-case (first (etf-cases etf))
                lhs-symbol (schr-lhs first-case))
          (cond
           ((eq lhs-symbol 's)
            (unless (member etf s-etfs)
              (push etf s-etfs)))
           
           ((or (eq lhs-symbol 'np)
                (eq lhs-symbol 'result-np)
                (eq lhs-symbol 'top-np)
                (eq lhs-symbol 'np-head))
            (unless (member etf np-etfs)
              (push etf np-etfs)))

           ((eq lhs-symbol 'pp)
            (unless (member etf pp-etfs)
              (push etf pp-etfs)))
           
           ((member lhs-symbol (schr-rhs first-case)
                    :test #'eq)
            (case lhs-symbol
              (np-head
               (unless (member etf np-adjnt-etfs)
                 (push etf np-adjnt-etfs)))
              (s
               (unless (member etf s-adjnt-etfs)
                 (push etf s-adjnt-etfs)))
              (otherwise
               (unless (form-category? (category-named lhs-symbol))
                 ;; /// But we do want to catalog the modifier etfs somewhere.
                 (format t "~&~%The tree family ~A~
                            ~%appears to involve Chomsky adjunction but its lhs-~
                            symbol wasn't anticipated:~%  ~A~%~%" etf lhs-symbol)))))
           
           (t (unless (eq etf *single-words*)
                (format t "~&~%The tree family ~A~
                             ~%Doesn't appear to involve Chomsky adjunction~
                             ~%and has ~A as the lhs on its first case.~
                            ~%Where the only options are np or s~%~%"
                        etf lhs-symbol )
                ;;(break)
                ))))))

    ;; update
    (setf (gethash (category-named 's) *root-categories-to-ETFs*)
          s-etfs)
    (setf (gethash (category-named 'np) *root-categories-to-ETFs*)
          np-etfs)
    (setf (gethash (category-named 'pp) *root-categories-to-ETFs*)
          pp-etfs)
    (setf (gethash (category-named 'adjunct-to-np) *root-categories-to-ETFs*)
          np-adjnt-etfs)
    (setf (gethash (category-named 'adjunct-to-s) *root-categories-to-ETFs*)
          s-adjnt-etfs)))
