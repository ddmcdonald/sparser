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

(defmethod mumble::has-realization? ((i psi))
  (unless *annotate-realizations*
    (error "You have to set *annotate-realizations* to t"))
  (let ((lp (psi-lp i)))
    (lp-realizations lp)))

(defmethod mumble::has-realization? ((c referential-category))
  (if *do-not-use-psi*
    (cat-realization c)
    (else
     (unless *annotate-realizations*
       (error "You have to set *annotate-realizations* to t"))
     (let ((lp (cat-lattice-position c)))
       (lp-realizations lp)))))

(defmethod mumble::has-realization? ((e edge))
  (let ((referent (edge-referent e)))
    (unless referent
      (error "No referent on the edge ~a" e))
    (mumble::has-realization? referent)))


;;;-------------
;;; what is it?
;;;-------------

(defmethod mumble::realization-for ((o t))
  (let ((options (realization-history o)))
    ;; choice among alternatives probably goes here
    ;; but surely wants more context
    (let ((dt (mumble::convert-to-derivation-tree options o)))
      (push-debug `(:dt ,dt))
      ;;(break "back from realization-for ~a~%with ~a" o dt)
      dt)))


;;;---------
;;; history
;;;---------

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



;;;---------------------------------
;;; Using rnodes to extract content
;;;---------------------------------

(defgeneric apply-rnode (rnode item)
  (:documentation "Use the information in the rnode to decode
 the content of the item so as to return a resource suitable
 for putting into a dtn."))

(defmethod apply-rnode ((rnode realization-node) (c category))
  (push-debug `(,rnode ,c))
  (unless (memq rnode (cat-rnodes c))
    (break "Does it matter that this rnode is listed on this category?"))
  (apply-rnode (rn-cfr rnode) c))

(defmethod apply-rnode ((schr schematic-rule) (c category))
  (let* ((realization-field (cat-realization c))
         (schema-part (third realization-field ))
         (keyword (car (schr-original-expression schr))))
    ;;(push-debug `(,schr ,keyword ,schema-part ,realization-field))
    ;;/// look up the general form of the schema field
    (let* ((entry (cadr schema-part))
           (word-part (car entry)))
      (if (eq (car word-part) keyword)
        word-part ;; (:common-noun . #<word "target">)
        (else
         (push-debug `(,entry))
         (break "Schema not structured as expected"))))))
        
         


;;;---------
;;; helpers
;;;---------

;;--- move to psi somewhere

(defun decompose-psi-by-rnode (psi rnode)
  ;; Syntactically, the psi has been realized with a binary rule
  ;; that factors into a head and an argument. Find (construct?) the
  ;; corresponding factoring in the psi and return those two parts
  ;; to provide referents for those parts of the generation process.
  (push-debug `(,psi ,rnode :decompose-by-rnode))
  (let* ((head-c+v (rn-head-c+v rnode))
         (head-var (when head-c+v (cv-variable head-c+v)))
         (arg-c+v (rn-arg-c+v rnode))
         (arg-var (when arg-c+v (cv-variable arg-c+v))))
    (let ((head (when head-var (value/var/v+v head-var psi)))
          (arg (when arg-var (value/var/v+v arg-var psi))))
      (unless (or head arg)
        (push-debug `(,head-c+v ,arg-c+v))
        (break "One of the head or the argument can't be found"))
      (values head arg))))
      



    



