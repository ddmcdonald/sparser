;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1998-2005,2010-2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "make"
;;;   Module:  "objects;model:psi:"
;;;  version:  1.0 October 2009

;; initiated 3/7/98.
;; Split off the find routines and changed the name from "psi" 7/29/98.
;; Started elaborating carefully 9/12, continued 1/25/99. Adding traces
;; 5/18 and hacked the stub creator to include flag for the benefit of
;; prining. 
;; 0.1 (6/21) Added a resouce-stub. No reclaimation as yet.
;;  (2/7/05) cleaned up Make/psi.
;; 0.2 (3/19/07) Added special: *force-new-psi* to handle the case where
;;      an identical description in fact denoted a different individual.
;; 1.0 (8/6/09) Reworking to use interned v+v objects in the style of 
;;      extend-psi-by-binding. 10/9 added in the bindings case for make/psi
;; 1.1 (12/14/10) Changed make-psi-with-just-a-type to make a new object
;;      every time. Then fixed make-more-saturated-psi to put the value of
;;      the type inside a list. (3/19/11) Cleaned up.

(in-package :sparser)

;;;---------------------
;;; Primary entry point
;;;---------------------

(defvar *force-new-psi* nil)

(defun make/psi (category binding-instructions &optional force-new?)
  ;; called from make/individual and (eventually) subject to
  ;; bindings sited there and above, e.g. force-new
  (unless (referential-category-p category)
    (break "make/psi isn't starting with a referential category - why?"))
  (when force-new?
    (break "force-new? is set -- why?"))
  (if (null binding-instructions)
    (make-psi-with-just-a-type category)
    (else
      (when (consp (first binding-instructions))
	(setq binding-instructions
	      (revamp-binding-instructions-as-variable-value-plist
	       binding-instructions)))
      (let ((base-psi (find-or-make-psi-for-base-category category))
	    new-psi )
	(do ((variable (car binding-instructions) (car rest))
	     (value (cadr binding-instructions) (cadr rest))
	     (rest (cddr binding-instructions) (cddr rest))
	     (parent-psi base-psi new-psi))
	    ((null variable))
	  (setq new-psi 
		(find-or-make-psi-with-binding variable value parent-psi)))
	new-psi))))


;;;-------
;;; cases
;;;-------

;; current 7/22/09
(defun make-psi-with-just-a-type (category &optional provided-self-lp)
  ;; called from, e.g., find-or-make-psi-for-base-category, which 
  ;; has the lattice point in its hand when it's setting up the call.
  (tr :make-psi-for-type category)
  (let* ((lattice-point (or provided-self-lp
                            ;; n.b. it's not a 'self' lp at the moment
                            (cat-lattice-position category)))
;	 psi (lp-top-psi lattice-point))
;    (when psi
;      (tr :make-psi-for-type/found-existing psi))
;; 12/14/10 By some path that isn't clear from grep, that field is getting
;;  populated with psi that has a lattice-point as its type field.
;;  So always building a new one.
         (psi (allocate-psi)))
    (setf (psi-lp psi) lattice-point)
    (setf (psi-type psi) (list category))
    (setf (psi-source psi) :top)
    (setf (lp-top-psi lattice-point) psi)
    (let ((v+v (make-top-v+v category)))
      (setf (psi-v+v psi) `(,v+v))
      (setf (vv-psi v+v) psi))
;    (push-debug `(,psi ,lattice-point))
;    (break "New top-psi: ~a" psi)
    (tr :made-psi-for-type/psi psi category)
    psi ))


(defun make-more-saturated-psi (parent-psi variable v+v)
  ;; get the psi off the resource and hook it in. 
  ;; Create its lattice-point if it doesn't already exist.
  ;; At this point the v+v has been created and attached to
  ;; its variable but needs the psi we create here linked in.
  (let ((lp (find-or-make-next-lp-down-for-variable 
	     variable (psi-lp parent-psi)))
        (psi (allocate-psi)))
    (push-debug `(,lp ,psi ,v+v))
    (setf (psi-type psi) `(,lp))
    (setf (psi-lp psi) lp)
    (setf (psi-v+v psi) (cons v+v (psi-v+v parent-psi)))
    (setf (psi-downlinks psi) nil)
    (when (psi-downlinks parent-psi)
      (push-debug `(,parent-psi)))
;      (break "parent-psi has down-links to look at")
    (setf (psi-downlinks parent-psi)
	  (cons `(,v+v ,psi) (psi-downlinks parent-psi)))
    (setf (psi-source psi) parent-psi)
    (setf (psi-path psi) (cons parent-psi (psi-path parent-psi)))
    (tr :made-more-saturated-psi psi variable)
    psi))


;; not vetted yet
(defun make-psi-for-subtype (subtype-lp source)
  (break "No vetted yet: make-psi-for-subtype")
  (tr :making-new-psi-for-subtype subtype-lp source)
  (let ((psi (get-psi)))
    (setf (psi-type psi) subtype-lp)
    (setf (psi-lattice-point psi) subtype-lp)
    (setf (psi-v+v psi) (psi-v+v source))
    (setf (psi-source psi) source)
    
    (push psi (lp-subtype-instances subtype-lp))
    (tr :made-new-psi-for-subtype psi)
    psi))


