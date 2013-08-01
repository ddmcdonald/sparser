;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;
;;;     File:  "person+title"
;;;   Module:  "model;sl:pct:"
;;;  version:  0.2 July 2013

;; initiated 6/11/93 v2.3, populated with appositive rule 6/15
;; 0.1 (1/28/94) changing the relation to be 'has-title', and adding it.
;;     (2/29/08) commented out the define-realization rather than debug it now.
;; 0.2 (7/19/13) Moved in the title/person rules that were accumulating 
;;      in names to people

(in-package :sparser)

;;;----------
;;; category
;;;----------

;; Depricated not that position is a variable on person
(define-category  has-title
  :instantiates self
  :specializes nil
  :binds ((person . person)
          (title . title))
  :index (:sequential-keys title person))

;; 10/20/95
;; be-title ->  be title
;; event ->  person be-title
#+ignore
(define-realization has-title
         thing-is-description
         ((np/subject . person)
          (s . event)
          (description . (TITLE qualified-title))
          (result . has-title)
          (vp . be-title)
          (be . be)
          (complement . title)
          (individual . (PERSON employed-as))))


;;;----------------
;;; preposed title
;;;----------------

#| ?? what's a plausible route for getting the cs rules done automatically ??
   Maybe a notion of "named thing" ??  |#

;;////////// move into person rspec
(def-cfr person (title person)
  :form np
  :referent (:head right-edge
             :bind (position left-edge)))


(def-csr  named-object person 
  :left-context title
  :form np
  :referent (:function interpret-name-as-person right-edge))

(def-csr  name person ;; overtaken by the event of named-object ??
  :left-context title
  :form np
  :referent (:function interpret-name-as-person right-edge))

(def-csr  capitalized-word person  ;; possible now?
  :left-context title
  :form np
  :referent (:function interpret-cap-word-as-person right-edge))



;;;--------------------------------------------
;;; appositive setup -- stupid comma treatment
;;;--------------------------------------------

;;//// don't these two fall  out from rspec on person?
(def-cfr comma-title ("," title)
  :form appositive
  :referent (:daughter right-edge))

(def-cfr person (person comma-title)
  :form np
  :referent (:head left-edge
             :instantiate-individual has-title
                 :with (person left-edge
                        title right-edge)))


(def-csr  named-object person
  :right-context  comma-title
  :form appositive-prefix
  :referent (:function interpret-name-as-person left-edge))

(def-csr  named-object person
  :right-context  comma-title
  :form appositive-prefix
  :referent (:function interpret-name-as-person left-edge))


;;;----------------------------
;;; <title> , <person or ne> ,  
;;;----------------------------

(define-debris-analysis-rule comma+person+comma
  :pattern ( "," person "," )
  :action (:function person-absorb-appos-commas-look-around second))

(defun person-absorb-appos-commas-look-around (person-edge)
  (push-debug `(,person-edge)) 
  (break "absorb-appos-commas edge: ~a" person-edge)
  ;; //// When applied to ex.#1,  it looks under the leading edge
  ;; of e64 and finds a person, but ignores the remaining parts
  person-edge  ;; have to return an edge
  )

(define-debris-analysis-rule comma+person+comma
  :pattern ( "," named-object"," )
  :action (:function ne-absorb-appos-commas-look-around second))

(defun ne-absorb-appos-commas-look-around (ne-edge)
  ;;(push-debug `(,ne-edge))
  (let ((ne (edge-referent ne-edge)))
    ;;(push-debug `(,ne)) ;; to convert to person
    (let ((appos-edge (DA-based-appos-edge ne-edge)))
      (let* ((start-pos (pos-edge-starts-at appos-edge))
             (ends-there (pos-ends-here start-pos))
             (title-edge (da/look-under-edge/scan-edges
                          ends-there category::title)))
        (if title-edge
          ;; then we convert the ne to a person and
          ;; form the combined edge
          (let ((person (interpret-name-as-person ne))
                (edge-over-title (edge-used-in title-edge)))
            (setf (edge-referent appos-edge) person)
            (let* ((title+person (find-cfr 'person '(title person)))
                   (full-edge
                    (make-completed-binary-edge
                     title-edge appos-edge title+person)))
              (tuck-new-edge-under-already-knit
               title-edge full-edge edge-over-title)
              full-edge))
          ;; otherwise we just return the ne edge having
          ;; absorbed the commas
          appos-edge)))))



(define-debris-analysis-rule title+comma+ne+comma
  :pattern ( title "," named-object "," )
  :action (:function title-ne-in-appositive-DA third))

(define-debris-analysis-rule title+comma+person+comma
  :pattern ( title "," person "," )
  :action (:function title-person-in-appositive-DA third))

(defun title-ne-in-appositive-DA (ne-edge)
  (let* ((named-object (edge-referent ne-edge))
         (person (interpret-name-as-person named-object)))
    (let ((narrow-person-edge
           (do-pnf-edge category::person
                        person
                        (pos-edge-starts-at ne-edge)
                        (pos-edge-ends-at ne-edge)
                        :title-ne-in-apposative-DA)))
      (title-person-in-appositive-DA narrow-person-edge))))

(defun title-person-in-appositive-DA (person-edge)
  (declare (special *da-starting-position* *da-ending-position*))
  (let* ((before-leading-comma
          (chart-position-before (pos-edge-starts-at person-edge)))
         (after-trailing-comma
          (chart-position-after (pos-edge-ends-at person-edge)))
         (title+person (find-cfr 'person '(title person)))
         (title-edge (left-treetop-at before-leading-comma)))
    (unless title+person
      (error "Presumed rule not found"))
    (let ((consituents `(,(right-treetop-at before-leading-comma)
                         ,person-edge
                         ,(left-treetop-at after-trailing-comma))))
      (let ((appositive-edge
           (make-edge-over-long-span
            before-leading-comma
            after-trailing-comma
            category::person
            :rule :title-person-in-apposative-DA
            :form category::appositive
            :referent (edge-referent person-edge)
            :constituents consituents)))
        (let ((full-edge
               (make-completed-binary-edge
                title-edge appositive-edge title+person)))
          full-edge)))))

(defun DA-based-appos-edge (appos-edge)
  ;;/// sort out how to factor title-person-in-appositive-DA
  ;; to expose this.  Appos could be named-object
  (let* ((appos-category (edge-category appos-edge))
         (appos-referent (edge-referent appos-edge))
         (before-leading-comma
          (chart-position-before (pos-edge-starts-at appos-edge)))
         (after-trailing-comma
          (chart-position-after (pos-edge-ends-at appos-edge)))
         (consituents `(,(right-treetop-at before-leading-comma)
                        ,appos-edge
                        ,(left-treetop-at after-trailing-comma))))
    (make-edge-over-long-span
     before-leading-comma
     after-trailing-comma
     appos-category
     :rule :DA-based-appos-edge
     :form category::appositive
     :referent appos-referent
     :constituents consituents)))


(def-k-method redistribute (age+title person)
  ;; Called for side-effects at the bottom of referent from rule
  (push-debug `(,age+title ,person)) ;;(break "right place")
  ;; (setq age+title (car *) person (cadr *))
  (let ((age-binding (binds age+title 'age))
        (title-binding (binds age+title 'title))
        (position-binding (binds person 'position)))
    ;; /// We should change the type of the age+title to just title
    ;; but that's overkill, that would include cleaning up its
    ;; bindings to fit.
    ;; For now just add the age and the title to the person.
    (let ((age (binding-value age-binding))
          (title (binding-value title-binding)))
      (bind-variable 'age age person)
      (setf (binding-value position-binding) title) ;; more indexing????
      (push-debug `(,person ,title))
      (call-next-method)
      person)))
    
(def-k-method redistribute (title person)
  (let ((country-binding (binds title 'locale)))
    (when country-binding
      (bind-variable
       'nationality (binding-value country-binding) person))))



