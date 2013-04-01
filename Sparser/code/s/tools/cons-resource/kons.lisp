;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP)
;;; copyright (c) 1992-1994,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "kons"
;;;   module:  "tools;cons-resource:"
;;;  Version:  0.2 March 2013

;; started 7/13/92
;; 0.1 (9/15 v2.3) added Kpush
;; 0.2 (9/28) added Kpop. 2/3/13 added kreclaim. 3/29/13 added ktail-cons

(in-package :sparser)


(defparameter *number-of-calls-to-kcons* 0)

(defun kcons (first rest)
  ;; take the top cons cell from the resource, adjusting the state
  ;; pointers of the heap accordingly, and destructively install it.
  ;(incf *number-of-calls-to-kcons*)
  (let ((cons-cell (pop *next-cons-cell*)))
    (when (null cons-cell)
      (allocate-a-rasher-of-cons-cells)
      (setq cons-cell (pop *next-cons-cell*)))
    (rplaca cons-cell first)
    (rplacd cons-cell rest)
    cons-cell ))

(defun ktail-cons (item klist)
  ;; adapted from my add-to-the-end-of-the list
  ;; distructive -- pushes the last cons.
  (let ((prior-cons klist)
        cons )
    (when (null (cdr klist)) ;; one item
      (rplacd klist
              (kcons item nil))
      (return-from ktail-cons klist))
    (loop
      (setq cons (cdr prior-cons))
      (when (null (cdr cons)) ;; we're at the end of the list
        (rplacd prior-cons
                (kcons (car cons)
                       (kcons item nil)))
        (return-from ktail-cons klist))
      (setq prior-cons cons))))



(defmacro kpush (item symbol-pointing-to-list)
  `(setf ,symbol-pointing-to-list
         (kcons ,item ,symbol-pointing-to-list)))


(defvar *kcell* nil
  "Temporary used when reclaiming kcons cells. Done as a
   global for transparency to the caller")

(defmacro kpop (symbol-pointing-to-list)
  `(prog1
     (car ,symbol-pointing-to-list)
     (setq *kcell* ,symbol-pointing-to-list)
     (setq ,symbol-pointing-to-list
           (cdr ,symbol-pointing-to-list))
     (deallocate-kons *kcell*)))

(defun kreclaim (list)
  (let ( next-cdr )
    (dotimes (i (length list))
      (setq next-cdr (cdr list))
      (deallocate-kons list)
      (setq list next-cdr))))

