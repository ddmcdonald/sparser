;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "adjectives"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  January 2015

;; Initiated 1/22/13 to provides a place for the generic method for premodifiers.
;; 6/1/14 added traces. 
;; 7/31/14 added form rules. 1/12/14 Tried converting the method to a
;; k-method but got the calling pattern wrong (or something), so make the
;; addition to the original method, i.e. to not drop the modifier on the
;; floor. 

(in-package :sparser)

;;;-----------
;;; base case
;;;-----------

(defgeneric modifier+noun (modifier head)
  (:documentation "Motivated by adjectives like 'about'. Called when the
 generic-np-premodifier or modifier-creates-definite-individual ETF is used.
 Determines the referent of the edge that combines these two elements."))

(defmethod modifier+noun ((modifier t) (head t)) ;; Kurdish city - name-word city(l
  ;; Look at "nucleotide-free"
  (declare (special modifier head))
  (tr :modifier+noun_t+t)
  (let ((real-modifier 
         (if (is-shadow modifier)
             (dereference-shadow-individual modifier)
             modifier))
        (real-head 
         (if (is-shadow head)
             (dereference-shadow-individual head)
             head)))
    (declare (special real-modifier real-head))
    (if
     (category-p real-head)
     (setq real-head (make-individual-for-dm&p real-head)))
    (if
     (category-p real-modifier)
     (setq real-modifier (make-individual-for-dm&p real-modifier)))
    (bind-variable 'modifier real-modifier real-head)
    real-head))

(defun is-shadow (i)
  (assoc i *shadows-to-individuals*))

#| This form isn't working -- a shadow object ends up where
   a Krisp object is expected: "not of the expected type STRUCTURE"
   Can't sort out whether the issue is in the manner of the call
   or the structure of the method

(def-k-method modifier+noun ((m modifier) (head t)) ;; Kurdish city - name-word city
  (bind-variable 'modifier m head)
  head)  |#

#+ignore  ;; original that ignored the modifier
(defmethod modifier+noun ((modifier sh::modifier) (head t))
  ;; drop the modifier on the floor for the moment.
  ;; Need to make a design decision about single binding vs. full
  ;; individual.
  (declare (ignore modifier))
  (tr :modifier+noun_modifier+t)
  (dereference-shadow-individual head))

(defmethod modifier+noun ((modifier sh::modifier) (head t))
  ;; drop the modifier on the floor for the moment.
  ;; Need to make a design decision about single binding vs. full
  ;; individual.
  (tr :modifier+noun_modifier+t)
  (let ((real-modifier (dereference-shadow-individual modifier))
        (real-head (dereference-shadow-individual head)))
    (bind-variable 'modifier real-modifier real-head)
    real-head))


(def-form-rule (modifier noun)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier common-noun)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier common-noun/plural)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier n-bar)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))

(def-form-rule (modifier np)
  :form n-bar
  :referent (:method modifier+noun left-edge right-edge))




#| Originals
(def-form-rule (modifier noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier common-noun/plural)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule (modifier np)
  :form np
  :referent (:daughter right-edge)) |#

