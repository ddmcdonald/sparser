;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2010-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interface"
;;;   Module:  "/interface/mumble/"
;;;  version:  0.1 November 2013

;; initiated 11/12/10. Elaborated through ..12/9 Picked up again 3/16/11.
;; Refactored to use realization-history for the crawling around 3/20.
;; 11/21/11 Added sanity check that we're annotating realizations. 10/12/12
;; added methods that start with edges. 
;; 0.1 (11/18/13) Removed all rnode/psi centric code  out to rnode-centric
;;      to clear the decks for working more directly with Krisp objects
;;      and improvising.

(in-package :sparser)

;; N.b. there's a check that the mumble code is loaded (package define)
;; in the grammar loader that brings this code in. 

;;;-------------------------
;;; is there a realization?
;;;-------------------------

(defmethod mumble::has-realization? ((c referential-category))
  (when *do-not-use-psi*
    (cat-realization c)))

(defmethod mumble::has-realization? ((i individual))
  (when *do-not-use-psi*
    (indiv-binds i)))

(defmethod mumble::has-realization? ((e edge))
  (let ((referent (edge-referent e)))
    (unless referent
      (error "No referent on the edge ~a" e))
    (mumble::has-realization? referent)))

(defmethod mumble::has-realization? ((b binding))
  b)

(defmethod mumble::has-realization? ((w word))
  w)

;;;-----------------------------
;;; Construct DTN (or whatever)
;;;-----------------------------

;;--- realization-for
;; Called from mumble::realize -- has to return something
;; that it can consume


(defmethod mumble::realization-for ((o t))
  (push-debug `(,o))
  (error "There is no realization-for method for~
        ~%the object ~a~
        ~%of type ~a" o (type-of o)))


;;;-----------------------------------------
;;; realizations for classes of individuals
;;;-----------------------------------------

(defmethod mumble::realization-for ((i individual))
  ;; 1st look for a tailored realization
  ;; 2d does this have a name?
  ;; 3d make a defNP from the name of the category
  (push-debug `(,i)) (break "stub"))


;;;--------------------------------------------
;;; experiment on 4/5/13 that wasn't completed
;;;--------------------------------------------

(defmethod mumble::realization-for ((e edge))
  (let ((referent (edge-referent e)))
    ;; new experiment 
    (let ((shadow (find-or-make-shadow referent)))
      (or (tailored-realization shadow e referent)
          (make-derivation-tree-from-bindings
             referent e)))))


;;; tailored realizations

(defmethod tailored-realization ((shadow t) (e edge) (referent t))
  (push-debug `(,shadow ,edge ,referent))
  nil)


;;; from first principles

(defun make-derivation-tree-from-bindings (referent edge)
  (case (cat-symbol (edge-form edge))
     (category::np
      (make-np-dtn-from-bindings referent))
    (otherwise
     (push-debug `(,referent ,edge))
     (break "New form: ~a"
            (edge-form edge)))))

(defmethod make-np-dtn-from-bindings ((i individual))
  (with-bindings (category has-determiner) i
    (unless category (error "no category binding"))
    (ad-hoc-1 category has-determiner i)))

(defun ad-hoc-1 (head-category determiner-value i)
  ;; do it all by hand just to see something completely through
  (push-debug `(,head-category ,determiner-value ,i))
  ;; (setq head-category (car *) determiner-value (cadr *) i (caddr *))
  (let* ((dtn (mumble::make-derivation-tree-node
              :referent i))
         (phrase (mumble-phrase 'common-noun))
         ;; args = h
         (args (mumble::parameters-to-phrase phrase)))

    (setf (mumble::resource dtn)
          phrase)
    (mumble::make-complement-node (car args)
                                  head-category
                                  dtn)
    (setf (mumble::features dtn)
          `(,(convert-determiner-value-to-policy
              determiner-value)))
    dtn))






