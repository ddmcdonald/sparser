;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "postprocessing"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  0.2 December 1995   

;; initiated 1/17/95. Stubbed Postprocess-tree-families 2/22.
;; Finished 4/14.   4/27 tweeked it enough to allow it to be run
;; several times as etfs are defined during a settion.
;; 0.1 (6/14) added check for Chomsky adjunction types and made the list of
;;      root labels fixed.
;; 0.2 (8/11) reordered the checks in postproc so adjuncts would be prefered.
;;     (8/28) added adjp.  (12/6) gave postprocessing routine a proper return value
;;     (12/26) added verb phrases as a stand-alone category

(in-package :sparser)

;;;--------------
;;; accumulators
;;;--------------

(defparameter *root-labels-of-tree-families*
               (list (category-named 's)
                     (category-named 'np)
                     (category-named 'vp)
                     (category-named 'pp)
                     (category-named 'adjp)
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
  (setf (gethash (category-named 'vp) *root-categories-to-ETFs*) nil)
  (setf (gethash (category-named 'pp) *root-categories-to-ETFs*) nil)
  (setf (gethash (category-named 'adjp) *root-categories-to-ETFs*) nil)
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
         (vp-etfs (gethash (category-named 'vp) *root-categories-to-ETFs*))
         (pp-etfs (gethash (category-named 'pp) *root-categories-to-ETFs*))
         (adjp-etfs (gethash (category-named 'adjp) *root-categories-to-ETFs*))
         (np-adjnt-etfs (gethash (category-named 'adjunct-to-np) *root-categories-to-ETFs*))
         (s-adjnt-etfs (gethash (category-named 'adjunct-to-s) *root-categories-to-ETFs*))
         first-case  lhs-symbol )

    (dolist (etf list-of-tree-families)
      (unless (eq (etf-type etf) :mixin)
        (unless (referential-category-p etf)  ;; ?? how do these get on the list ??
          (setq first-case (first (etf-cases etf))
                lhs-symbol (first (second first-case)))
          (cond
           ((member lhs-symbol (second (second first-case)) ;; rhs
                    :test #'eq)
            (case lhs-symbol
              (np-head
               (unless (member etf np-adjnt-etfs)
                 (push etf np-adjnt-etfs)))
              (np
               (unless (member etf np-adjnt-etfs)
                 (push etf np-adjnt-etfs)))
              (s
               (unless (member etf s-adjnt-etfs)
                 (push etf s-adjnt-etfs)))
              (otherwise
               (format t "~&~%The tree family ~A~
                          ~%appears to involve Chomsky adjunction but its lhs-~
                          symbol wasn't anticipated:~%  ~A~%~%"
                       etf lhs-symbol))))
           
           ((eq lhs-symbol 's)
            (unless (member etf s-etfs)
              (push etf s-etfs)))

           ((eq lhs-symbol 'np)
            (unless (member etf np-etfs)
              (push etf np-etfs)))

           ((eq lhs-symbol 'vp)
            (unless (member etf vp-etfs)
              (push etf vp-etfs)))
           
           ((eq lhs-symbol 'pp)
            (unless (member etf pp-etfs)
              (push etf pp-etfs)))

           ((eq lhs-symbol 'adjp)
            (unless (member etf adjp-etfs)
              (push etf adjp-etfs)))
           
           (t (format t "~&~%The tree family ~A~
                         ~%Doesn't appear to involve Chomsky adjunction~
                         ~%and has ~A as the lhs on its first case.~
                         ~%Where the only options are np or s~%~%"
                      etf lhs-symbol )
              ;(break)
              )))))

    ;; update
    (setf (gethash (category-named 's) *root-categories-to-ETFs*)
          s-etfs)
    (setf (gethash (category-named 'np) *root-categories-to-ETFs*)
          np-etfs)
    (setf (gethash (category-named 'vp) *root-categories-to-ETFs*)
          vp-etfs)
    (setf (gethash (category-named 'pp) *root-categories-to-ETFs*)
          pp-etfs)
    (setf (gethash (category-named 'adjp) *root-categories-to-ETFs*)
          adjp-etfs)
    (setf (gethash (category-named 'adjunct-to-np) *root-categories-to-ETFs*)
          np-adjnt-etfs)
    (setf (gethash (category-named 'adjunct-to-s) *root-categories-to-ETFs*)
          s-adjnt-etfs)

    ;; The primary call is from Postprocess-grammar-indexes and made at the
    ;; end of a load. Historically it expected some judgements to be made
    ;; here, so it wants an 'update' on what's on the master list of etfs,
    ;; so we provide it has a hook in case we later do want to do some filtering
    ;; or perhaps some global sorting. 
    *tree-families-defined* ))

