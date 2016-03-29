;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2010-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interface"
;;;   Module:  "/interface/mumble/"
;;;  version:  February 2016

;; initiated 11/12/10. Elaborated through ..12/9 Picked up again 3/16/11.
;; Refactored to use realization-history for the crawling around 3/20.
;; 11/21/11 Added sanity check that we're annotating realizations. 10/12/12
;; added methods that start with edges. 
;; 0.1 (11/18/13) Removed all rnode/psi centric code  out to rnode-centric
;;      to clear the decks for working more directly with Krisp objects
;;      and improvising. 1/5/16 kill ad-hoc-1 to quiet compiler

(in-package :sparser)

;; N.b. there's a check that the mumble code is loaded (package defined)
;; in the grammar loader that brings this code in. 

;;;----------------------------------------------------------
;;; Mumble methods with signatures that need Sparser classes
;;;----------------------------------------------------------

(defmethod mumble::record-lexicalized-phrase 
           ((category category) (lp mumble::lexicalized-resource))
  (mumble::record-lexicalized-phrase 
   (symbol-name (cat-symbol category)) lp))

(defmethod get-lexicalized-phrase ((category category))
  (mumble::get-lexicalized-phrase 
   (symbol-name (cat-symbol category))))

;;;-----------------------------------------
;;; realizations for classes of individuals
;;;-----------------------------------------
     
(defgeneric tailored-individual-realization (individual)
  (:documentation "Looks for a type-specific realization
   'specialist' that will handle the derivation tree all
   on its own. Initially called with an individual that
   version of the method sets up the shadow environment
   and then funcalls this method on the shadow for a
   k-method that matches the type. A version that accepts
   anything (T) returns nil to indicate that there is not
   a specialist for this type of individual."))

; This can be done with a lot of generality if we finish
; the machinery to read schemas and their argument mappings
; and link in phrases at the ETF level, perhaps as an
; additional component of the ETF definition. See the code
; in Mumble/interface/tsro/map-translations for a start.
#|
(defmethod tailored-individual-realization ((i individual))
  (declare (special *shadows-to-individuals*))
  (let* ((shadow (find-or-make-shadow i))
         (*shadows-to-individuals*
          `((,shadow . ,i))))
    (funcall #'tailored-individual-realization shadow)))

(defmethod tailored-individual-realization ((top t))
  ;; indicate that there's no specialist. Read by the
  ;; 'or' in realiation-for(individual) which will now
  ;; try another method of getting a realization. 
  nil)

(def-k-method tailored-individual-realization ((i rate))
  (with-bindings (quantity units) i
    (let ((dtn (mumble::simple-2-arg-phrase
                'mumble::number-np quantity units)))
      (setf (mumble::referent dtn) i)
      dtn)))



;;--- hack in lieu of fixing all of the code that's in
;; Mumble/grammar/numbers.lisp, which most notably is not
;; getting an illions-distribution off the number for some reason

(def-k-method tailored-individual-realization ((n number))
  (let ((digits-word
         (cadr (memq :digit-sequence (indiv-plist n))))
        (actual-number (value-of 'value n)))
    (cond
     (digits-word
      (mumble::get-mumble-word-for-sparser-word digits-word))
     (actual-number
      (let ((number-string (format nil "~a" actual-number)))
        (mumble::find-or-make-word number-string))) ;; digit pos???
     (t (push-debug `(,n))
        (break "stub: need yet another way to get a word ~
              ~%from a number individual: ~a" n)))))
    
|#   


;;--- names

(defun realize-using-name-binding (i)
  )

;; need number and unit-rate-of-change for args



(defmethod mumble::realize ((i individual))
  (mumble::get-mumble-word-for-sparser-word (value-of 'name i)))



;;;--------------------------------------------
;;; experiment on 4/5/13 that wasn't completed
;;;--------------------------------------------

(defmethod mumble::realize ((e edge))
  (let ((referent (edge-referent e)))
    ;; new experiment 
    (let ((shadow (find-or-make-shadow referent)))
      (or (tailored-edge-realization shadow e referent)
          ;(make-derivation-tree-from-bindings referent e)
          ))))


;;; tailored realizations

(defmethod tailored-edge-realization ((shadow t) (edge edge) (referent t))
  (push-debug `(,shadow ,edge ,referent))
  (break "stub"))


;;; from first principles
#| 1/4/16 Mine this for concepts, but as written it won't work
     anymore. 
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
    dtn)) |#






