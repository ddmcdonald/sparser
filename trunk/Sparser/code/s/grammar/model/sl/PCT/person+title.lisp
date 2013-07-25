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

(define-debris-analysis-rule title+comma+ne+comma
  :pattern ( title "," named-object "," )
  :action (:function title-ne-in-appositive-DA third))

(define-debris-analysis-rule title+comma+person+comma
  :pattern ( title "," person "," )
  :action (:function title-person-in-appositive-DA third))

(define-debris-analysis-rule comma+person+comma
  :pattern ( "," person "," )
  :action (:function person-absorb-appos-commas-look-around second))


(defun person-absorb-appos-commas-look-around (person-edge)
  (push-debug `(,person-edge)) (break "absorb-appos-commas"))

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
  (let ((before-leading-comma
         (chart-position-before (pos-edge-starts-at person-edge)))
        (after-trailing-comma
         (chart-position-after (pos-edge-ends-at person-edge)))
        (title+person (find-cfr 'person '(title person)))
        (title-edge (left-treetop-at *da-starting-position*)))
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
          (break "full edge")
          full-edge)))))


(def-k-method redistribute (age+title person)
  (push-debug `(,age+title ,person)) ;;(break "right place")
  )
                          



