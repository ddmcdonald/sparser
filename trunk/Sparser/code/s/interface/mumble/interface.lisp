;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2010-2012 David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;     File:  "interface"
;;;   Module:  "/interface/mumble/"
;;;  version:  0.0 October 2012

;; initiated 11/12/10. Elaborated through ..12/9 Picked up again 3/16/11.
;; Refactored to use realization-history for the crawling around 3/20.
;; 11/21/11 Added sanity check that we're annotating realizations. 10/12/12
;; added methods that start with edges. 

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

(defmethod mumble::has-realization? ((e edge))
  (let ((referent (edge-referent e)))
    (unless referent
      (error "No referent on the edge ~a" e))
    (mumble::has-realization? referent)))


;;;-------------
;;; what is it?
;;;-------------

;;--- realization-for 

(defmethod mumble::realization-for ((o t))
  (let ((options (realization-history o)))
    ;; choice among alternatives probably goes here
    ;; but surely wants more context
    (let ((dt (mumble::convert-to-derivation-tree options o)))
      (push-debug `(:dt ,dt))
      dt)))

(defmethod mumble::realization-for ((e edge))
  (let ((referent (edge-referent e)))
    (mumble::realization-for referent)))
    


;;--- history

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



;;--- move to psi somewhere

(defun decompose-psi-by-rnode (psi head-rnode arg-rnode)
  ;; Syntactically, the psi has been realized with a binary rule
  ;; that factors into a head and an argument. Find (construct?) the
  ;; corresponding factoring in the psi and return those two parts
  ;; to provide referents for those parts of the generation process.
  (push-debug `(,psi ,head-rnode ,arg-rnode :decompose-by-rnode))
  (let ((head-lp (rn-lattice-point head-rnode))
        (arg-lp (rn-lattice-point arg-rnode))
        (downlinks (psi-path psi)))
    (push-debug `(,head-lp ,arg-lp))
    (unless (= (length downlinks) 2)
      (error "Need a new way to decompose the psi: more than 2 downlinks"))
    ;; Now determine which one's which. The downlink psi have rnodes
    ;; when [??], so we look to see if the arg-rnode (1st) is in either
    ;; of these psi
    (let ((psi-1 (car downlinks)) (psi-2 (cadr downlinks))
          head-psi  arg-psi )
      #+ignore
      (cond ((memq arg-rnode (psi-rnodes psi-1))
             (setq head-psi psi-2 arg-psi psi-1))
            ((memq arg-rnode (psi-rnodes psi-2))
             (setq head-psi psi-1 arg-psi psi-2))
            ;; Doesn't work with head either
            (t (push-debug `(,psi-1 ,psi-2))
               (break "Next case for decompose-psi")))
      (values head-psi arg-psi))))
    

    



