;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1997-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "printers"
;;;   Module:  "objects;model:lattice-points:"
;;;  version:  August 2009

;; initiated 11/29/97. First populated 2/24/98. Fixed order of args bug
;; 3/3. Debugged 3/11. Tweaked, elaborated through 5/5. Added index 6/21/0.
;; 1/2/01 added subtype printer.  2/7/05 Fixed redundancy in subtype printer
;; which wasn't looking for an already created string.  7/30/07 added index
;; to self-node. 8/6/09 tweaked printer.

(in-package :sparser)


(defun print-lattice-point-structure (lp stream depth)
  (declare (ignore depth))
  (write-string "#<lp " stream)
  (princ-open-list-of-variables (lp-variables-bound lp) stream)
  (write-string ". " stream)
  (princ-open-list-of-variables (lp-variables-free lp) stream)
  (format stream " ~a" (lp-index lp))
  (write-string ">" stream))

(defun print-self-lattice-point-structure (lp stream depth)
  (declare (ignore depth))
  (format stream "#<self-lattice-point ~a ~a>"
          (string-downcase
           (symbol-name (cat-symbol (category-of-self-lattice-point lp))))
	  (lp-index lp)))

(defun print-top-lattice-point-structure (lp stream depth)
  (declare (ignore depth))
  (format stream "#<top-lp-of ~a  ~a>"
          (string-downcase
           (symbol-name (cat-symbol (lp-category lp))))
          (lp-index lp)))

(defun print-subtype-lattice-point (lp stream depth)
  (declare (ignore depth))
  (if (lp-supertype-print-string lp)
    (format stream "#<subtype-lp ~a>" (lp-supertype-print-string lp))
    (format stream "#<subtype-lp ~a/~a  ~a>"
            (lp-supertype-print-string lp)
            (string-downcase 
             (symbol-name (cat-symbol (lp-specializing-category lp))))
            (lp-index lp))))

(defun princ-open-list-of-variables (vars stream)
  (dolist (var vars)
    (write-string (princ-variable/string var) stream)
    (write-string " " stream)))

 
(defun print-realization-node-structure (rn stream depth)
  (declare (ignore depth))
  (format stream "#<rnode ~A>"
          (rn-cfr rn)))


