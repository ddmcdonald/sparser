;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2010-2011 David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;     File:  "interface"
;;;   Module:  "/interface/mumble/"
;;;  version:  0.0 November 2011

;; initiated 11/12/10. Elaborated through ..12/9 Picked up again 3/16/11.
;; Refactored to use realization-history for the crawling around 3/20.
;; 11/21/11 Added sanity check that we're annotating realizations.

(in-package :sparser)

;; N.b. there's a check that the mumble code is loaded (package define)
;; in the grammar loader that bring this code in. 

;;;-------------------------
;;; is there a realization?
;;;-------------------------

(defmethod mumble::has-realization? ((i individual))
  (unless *annotate-realizations*
    (error "You have to set *annotate-realizations* to t"))
  (or (indiv-rnodes i)
      (mumble::has-realization? (itype-of i))))

(defmethod mumble::has-realization? ((i psi))
  (unless *annotate-realizations*
    (error "You have to set *annotate-realizations* to t"))
  (let ((lp (psi-lp i)))
    (lp-realizations lp)))

(defmethod mumble::has-realization? ((c referential-category))
  (unless *annotate-realizations*
    (error "You have to set *annotate-realizations* to t"))
  (let ((lp (cat-lattice-position c)))
    (lp-realizations lp)))


;;;-------------
;;; what is it?
;;;-------------

(defmethod mumble::realization-for ((o t))
  (let ((options (realization-history o)))
    ;; choice among alternatives probably goes here
    ;; but surely wants more context
    (let ((dt (mumble::convert-to-derivation-tree options o)))
      (push-debug `(:dt ,dt))
      dt)))

(defgeneric realization-history (o)
  (:documentation "Soaks up the different possibilities for 
 how to get the stands of rnodes that have been accumulated
 given different sorts of Krisp objects."))

(defmethod realization-history ((i individual))
  (or (indiv-rnodes i)
      (realization-history (itype-of i))))

(defmethod realization-history ((c referential-category))
  (let ((lp (cat-lattice-position c)))
    (lp-realizations lp)))

(defmethod realization-history ((i psi))
  (lp-realizations (psi-lp i)))



;;;---------
;;; helpers
;;;---------

(defmethod binds-a-word? ((i individual))
  (or (binds i 'name)
      (binds i 'word)))

(defmethod bound-word ((i individual))
  (let* ((binding/s (binds-a-word? i))
	 ;; in principle there could be more than one
	 (binding (typecase binding/s
		    (cons (car binding/s))
		    (binding binding/s)
		    (otherwise
		     (error "New type: ~a~%~a" 
			    (type-of binding/s) binding/s)))))
    (binding-value binding)))
    

    



