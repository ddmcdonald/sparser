;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996,2013-2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "parens after name"
;;;   Module:  "model;core:names:"
;;;  version:  April 2014

;; initiated 7/11/96. Revised and updated 2/13/13. Put in a guard to not
;; require it to always be debugged 9/16/13. 4/19/95 Added case for bio-entity.

(in-package :sparser)


;;;-------------------------------------------
;;; e.g. "Electronic Book Technologies (EBT)"
;;;-------------------------------------------

;;--- setup

(defun acronym-is-alternative-for-name (referent-of-left-edge
                                        referent-of-right-edge)

  ;; The function on 'company ->  company single-capitalized-word-in-parentheses'.
  ;; The item on the left is something that has a name, and the item to the right
  ;; is an acronym for it, where the acronymic-word has been passed in to us
  ;; as the referent-of-right-edge.  We establish that word as referring to a
  ;; name that is one of the names of the item on the left.

  (typecase referent-of-left-edge
    (individual
     (cond ((itypep referent-of-left-edge 'company)
            (setup-acronym-as-name-for-company referent-of-right-edge 
                                               referent-of-left-edge))
           ((itypep referent-of-left-edge 'named-object)
            (setup-acronym-as-name-for-company referent-of-right-edge 
                                               referent-of-left-edge))
           ((and *big-mechanism* ;; establish that the biology is loaded
                 (itypep referent-of-left-edge 'bio-entity))
            (setup-acronym-for-bio-entity referent-of-right-edge 
                                          referent-of-left-edge))
           (t 
            (when *break-on-new-cases*
              ;; iranian-commander starts "TEHRAN (FNA)" where that's 
              ;; a new-agency that should be on a list.
              (push-debug `(,referent-of-left-edge ,referent-of-right-edge))
              (error "~&>>>>>>>> new case:~
                      ~%  an acronym in parentheses has appeared just after ~
                      ~%  a new kind of of individual: ~A~%(e~A)~%" 
                     (itype-of referent-of-left-edge)
                     (edge-position-in-resource-array *left-edge-into-reference*))))))
    (otherwise
     (when *break-on-new-cases*
       (push-debug `(,referent-of-left-edge ,referent-of-right-edge))
       (format t "~&>>>>>>>> new case:~
                  ~%  an acronym in parentheses has appeared just after an object~
                  ~%  of type ~A (e~A)~%" (type-of referent-of-left-edge)
                  (edge-position-in-resource-array *left-edge-into-reference*)))))

  ;; Any name we make here is for its effect on later parts of the text.
  ;; Our return value is going to be the referent of the rule and entered into
  ;; the discourse history as such.  This rule is just rolling another appositive-like
  ;; element onto the headline from the right, so we return the referent of the
  ;; item on the left
  referent-of-left-edge )


;;--- bind the named-entity (company)

(defun setup-acronym-as-name-for-company (acronym company)
  (let (  nw )
    (typecase acronym
      (word 
       (setq nw (define-name-word acronym)))
      (individual
       (case (cat-symbol (itype-of acronym))
         (category::name-word
          (setq nw acronym))
         (otherwise
          (push-debug `(,acronym ,company))
          (error "Unexpected type of individual for acronym: ~a~%~a"
                 (itype-of acronym) acronym))))
      (otherwise
       (push-debug `(,acronym ,company))
       (error "Unexpected type for acronym: ~a~%~a"
              (type-of acronym) acronym)))

    ;;(link-named-object-to-name-word company nw)

    nw))
    

;;;---------------------------------------------------------------------
;;; rules linking named entities and the trailing single word in parens
;;;---------------------------------------------------------------------
  
#|
/// This pattern is likely motivated by the need to introduce the abbreviated
form (or whatever it is), which would be an adjunction from the perspective
of the generator, so it should be a form rule for the parser. 
|#

(def-cfr company (company single-capitalized-word-in-parentheses)
  :form np
  :referent (:function acronym-is-alternative-for-name left-edge right-edge))

(def-cfr company (company company-in-parentheses)
  :form np
  :referent (:daughter left-edge))

(def-form-rule (proper-name single-capitalized-word-in-parentheses)
  :form proper-name
  :head :left-edge
  :referent (:function acronym-is-alternative-for-name left-edge right-edge))


