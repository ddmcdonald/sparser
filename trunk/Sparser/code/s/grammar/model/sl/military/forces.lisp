;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "forces"
;;;   Module:  "model:sl:military:"
;;;  version:  December 2013

;; For any sort of group that can engage in military operations.

;; initiated 7/19/11. Started populating 8/3. Reworked to be more
;; compositional 8/16/13. 

(in-package :sparser)

;;;--------
;;; forces
;;;--------

(define-category military-force
  :specializes kind
  :instantiates self
  :binds ((name  :primitive word)
          (abbrev :primitive word)
          (country country))
  :index (:permanent :key name))

;;//// I've forgotten whether realization of super classes are
;; applied to the subclasses, so not doing this property
(def-cfr military-force (country military-force)
  :form np
  :referent (:head right-edge
             :bind (country . left-edge)))


;; Forces are referred to in general terms "insurgents", "CF",  which are
;; categories, but when they do something its a particular platoon or other
;; sort of group that's doing it, which is an individual. Starting with
;; making them categories, but this needs sorting out.

(defun define-type-of-force (name &optional abbrev)
  (let* ((category-name (name-to-use-for-category name))
         (category (category-named category-name))
         (new? (null category))
         (name-word (resolve/make name)) ;; allow for polywords
         (abbrev-word (when abbrev (define-word abbrev))))
    (if new?
      (let ((form `(define-category ,category-name
                     :specializes military-force
                     :instantiates military-force
                     :bindings (name ,name-word abbrev ,abbrev-word))))
        (setq category (eval form))

        (let ((name-rule (make-cn-rules/aux
                          name-word 
                          (category-named 'military-force) ;; label
                          category)) ;; referent
              (abbrev-rule 
               (when abbrev
                 (make-cn-rules/aux
                  abbrev-word  ;; plural make sense?
                  (category-named 'military-force) ;; label
                  category))))

          (add-rules-to-category category (if abbrev
                                            `(,name-rule ,abbrev-rule)
                                            `(,name-rule)))))
        category )))
          

;;--- cases (would usually be in a dossier)

(define-type-of-force "armed forces") 

(define-type-of-force "coalition forces" "cf")

;;this unfortunately parses "cases" as the plural of "cas"!
;;blocking rule out for now

;;(define-type-of-force "close air support" "cas")

(define-type-of-force "insurgent" "ins") ;; is this right for CAS?









        



