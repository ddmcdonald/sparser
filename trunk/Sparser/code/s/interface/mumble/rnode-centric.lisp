;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rnode-centric"
;;;   Module:  "/interface/mumble/"
;;;  version:  November 2013

;; Broken out from interface 11/18/13

(in-package :sparser)

; Rnodes are the original scheme for going from Sparser's output
; to Mumble's input, as invisioned in the 1998 paper.
;  They haven't been made to work. The effort to provide annotations
; on Sparser rule mechanisms is spotty, and the structure of a rnode
; and its interaction with lattice-points is laced with inconsistencies
; to the point where it should probably be torn out and rebuild from
; scratch after it's thoroughly rethought.
;
;  It does not work at all when the *do-not-use-psi* flag is up, which
; has been the case since early in 2013. This file accumulates all of
; that code in one place, freeing up the other files to go forward.


(defmethod mumble::has-realization? ((i psi))
  (unless *annotate-realizations*
    (error "You have to set *annotate-realizations* to t"))
  (let ((lp (psi-lp i)))
    (lp-realizations lp)))

#| Primary (old) entry points
(defmethod mumble::has-realization? ((i individual))
  ;; Called from mumble::realize
  (unless *annotate-realizations*
    (error "You have to set *annotate-realizations* to t"))
  (or (indiv-rnodes i)
      (mumble::has-realization? (itype-of i))))

(defmethod mumble::has-realization? ((c referential-category))
  (unless *annotate-realizations*
    (error "You have to set *annotate-realizations* to t"))
  (let ((lp (cat-lattice-position c)))
    (lp-realizations lp)))  |#


#+ignore
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
      



    
