;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011,2016-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "paths"
;;;   Module:  "model;core:places:"
;;;  version:  December 2020

;; initated 7/13/11. Finished effort to reify the types 3/16.

(in-package :sparser)

;;;-----
;;; top
;;;-----

(define-category  path
  :instantiates self
  :specializes location
;;  :realization  ?? where does "path" go?
  )


;;;----------------
;;; types of paths
;;;----------------

(define-category path-type ;; "street", "turnpike"
  :instantiates :self
  :specializes path
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-type-category-constructor path-type) ;; creates define-path-type 

;; dossier is [path-types]

;;;------------------
;;; highway patterns
;;;------------------

(dont-check-rule-form-for-etf-named 'dependent-of)
(dont-check-rule-form-for-etf-named 'modifier-creates-instance)
(dont-check-rule-form-for-etf-named 'pair-instantiates-category)

;; Need "route 66" -- fold in here?

(define-category highway  ;; "MA 102"
  :instantiates :self
  :rule-label path
  :specializes location
  :lemma (:common-noun "highway")
  :binds ((authority :or country US-state)
          (number . number))
  :realization (:tree-family pair-instantiates-category
                :mapping ((result-type . :self)
                          (np . :self)
                          (first . (country US-state))
                          (second . (number path-type))
                          (item1 . authority)
                           (item2 . number))))


;;; throughways and exits

(define-category throughway-exit
  :instantiates :self
  :rule-label location
  :specializes location ;; object with a location
  :binds ((reference-point . name) ;; "the) Arlington exit"
          (throughway . highway))
  :realization (:tree-family modifier-creates-instance
                :mapping ((property . reference-point)
                          (head . :self)
                          (n-bar . :self)
                          (modifier . reference-point)
                          (np-head . :self))
                :common-noun "exit"))

(define-category exit-on-throughway
  :instantiates :self
  :rule-label location
  :specializes dependent-substrate
  :binds ((exit . throughway-exit) ;; dependent
          (throughway . highway))  ;; substrate
  :realization (:tree-family dependent-of
                :mapping ((dependent . exit)
                          (substrate . throughway)
                          (np . :self)
                          (prep . "of")
                          (complement . (location path)))))


;;;--------------------------
;;; labeled transparent pp's
;;;--------------------------

(dont-check-rule-form-for-etf-named 'transparent-pp)

(define-marker-category on-path
  :realization (:tree-family transparent-pp
                :mapping ((pp . on-path)
                          (preposition . "on")
                          (complement . path))))



;;--- used by establish-referent-of-pn to sort out location names

(defun find-or-make-named-type-of-location (location-name)
  (let ((type (value-of 'type location-name)))
    (push-debug `(,location-name ,type));; (lsp-break "type = ~a" type)
    (cond
     ((not (category-p type))
      (or (find/location-with-name location-name)
          (make/location-with-name location-name)))
     ((itypep type 'path-type) ;;(itypep type 'region-type))
      (let ((symbol (cat-name type)))
        ;; doesn't seem to be a make with correct
        ;; factoring to take the category directly
        (or (find-individual symbol :name location-name)
          (let ((i (make-an-individual symbol :name location-name)))
            ;; The automatic indexing will have run 
            ;; (push-debug `(,i)) (break "look at individual")
            i))))
     (t
      ;; not sure what this would be. Letting it fall through
      ;; to 
      (find/location-with-name location-name)))))

