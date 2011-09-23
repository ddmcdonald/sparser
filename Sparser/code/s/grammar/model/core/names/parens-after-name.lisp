;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "parens after name"
;;;   Module:  "model;core:names:"
;;;  version:  July 1996

;; initiated 7/11/96

(in-package :sparser)

;;;-------------------------------------------
;;; e.g. "Electronic Book Technologies (EBT)"
;;;-------------------------------------------

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
           (t 
            (format t "~&>>>>>>>> new case:~
                       ~%  an acronym in parentheses has appeared just after an object~
                       ~%  of type ~A (e~A)~%" (type-of referent-of-left-edge)
                    (edge-position-in-resource-array *left-edge-into-reference*)))))
    (otherwise
     (format t "~&>>>>>>>> new case:~
                ~%  an acronym in parentheses has appeared just after an object~
                ~%  of type ~A (e~A)~%" (type-of referent-of-left-edge)
             (edge-position-in-resource-array *left-edge-into-reference*))))

  ;; Any name we make here is for its effect on later parts of the text.
  ;; Our return value is going to be the referent of the rule and entered into
  ;; the discourse history as such.  This rule is just rolling another appositive-like
  ;; element onto the headline from the right, so we return the referent of the
  ;; item on the left
  referent-of-left-edge )



(defun setup-acronym-as-name-for-company (acronym company)
  (unless (word-p acronym)
    (if *break-on-unexpected-cases*
      (break "Assumption violated: Expected the 'acronym' to be a word.~
              ~%It's ~A~%" acronym)
      (return-from setup-acronym-as-name-for-company)))

  (let ((alternative-name
         (make-company-name-as-simple-sequence (list acronym))))
    
    (bind-variable 'name alternative-name company)

    (let ((cfr (define-cfr (category-named 'company)
                            (list acronym)
                 :form (category-named 'proper-name)
                 :referent company )))

      (print cfr *standard-output*)  ;; announce it

      cfr )))
  


(def-cfr company  (company single-capitalized-word-in-parentheses)
  :form np
  :referent (:function acronym-is-alternative-for-name left-edge right-edge))

