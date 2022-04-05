;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "city"
;;;   Module:  "model;core:places:"
;;;  version:  April 2020

;; initiated 1/91 v1.8
;; 0.1 (10/19/93 v2.3) revamped for modern semantics
;;     (1/18/94) added autodef form
;; 0.2 (4/17/95) removed the constraint that the country had to be specified
;;      and added define-name-as-city
;;     (5/1) moved file up to [places;] since everything else was already gone
;;      from the [cities;] subdirectory.     5/12 added String/city.
;;      5/16 remodularized Interpret-name-as-city a bit when the Completion rule
;;      for US States fed it an already assembled city (interaction w/ extended scan
;;      by PNF?)
;;     (9/12) tweeked the autodef

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  city
  :instantiates self
  :specializes geo-political-region
  :lemma (:common-noun "city")
  :binds ((name :primitive word)
          (aliases  :primitive list)
          (country . country)
          (state . state))
  :index (:permanent :key name)
  :realization (:proper-noun name))

;; patch forced in Subsumption-check/complete because "New York"
;; has ':mixed-case' in its plist field


(defun string/city (c)
  (let ((name (value-of 'name c)))
    (if name ; could be nil
      (etypecase name
        (word (word-pname name))
        (polyword (pw-pname name)))
      "city-with-no-recorded-name")))


;;;------------------
;;; <person> of-city
;;;------------------

(define-marker-category of-city
  :realization (:tree-family transparent-pp
                :mapping ((pp . of-city)
                          (preposition . of)
                          (complement . city))))

(def-csr name person ; name -> person / ___ of-city
  :right-context of-city
  :form np
  :referent (:function interpret-name-as-person left-edge))

(def-csr named-object person
  :right-context of-city
  :form np
  :referent (:function interpret-name-as-person left-edge))

(def-cfr person (person of-city)
  :form np
  :referent (:head left-edge
             :bind (location right-edge)))


;;;---------------
;;; defining form
;;;---------------

(defun define-city (string &key country state aliases)
  (unless (itypep country 'country)
    (break "Called with country '~a'~%of type ~a"
           country (type-of country)))
  (let* ((word (resolve/make string))
         (city (define-or-find-individual 'city
                   :name word :country country)))
    (when aliases
      (let ((rules
             (loop for alias in aliases
                as word = (resolve/make alias) ;;///use rule-label?
                collect (define-cfr category::city `( ,word )
                      :form category::proper-noun
                      :referent city))))
        (setf (get-rules city)
              (append rules (get-rules city)))))
    ;; ignoring state
    city))



(defun interpret-name-as-city (name)
  (etypecase name
    (individual
     (case (cat-symbol (itype-of name))

       (category::uncategorized-name
        (let* ((sequence (value-of 'name/s name))
               (list-of-name-items (value-of 'items sequence))
               (string ""))

          (when (null (cdr list-of-name-items))
            (when (itypep (first list-of-name-items)
                          category::city)
              (return-from interpret-name-as-city
                           (first list-of-name-items))))
                

          ;; cities are defined by words or polywords
          ;; contruct the string and apply it to the
          (else
            (dolist (name-item list-of-name-items) 
              (case (cat-symbol (itype-of name-item))
                (category::name-word
                 (setq string
                       (concatenate 'string
                                    string
                                    " "
                                    (word-pname
                                     (value-of 'name name-item)))))
                (otherwise
                 (break "New kind of item in the sequence of items ~
                         in the name for a city:~%   ~A~%" name-item))))
            
            (setq string (subseq string 1))
            (define-city string))))

       (category::city  name)

       (otherwise
        (break "New kind of individual acting as a 'name': ~
               ~A" name))))

    (word
     (define-city (word-pname name)))))


;;;-----------------
;;; auto definition
;;;-----------------

(define-autodef-data 'city
  :display-string "city"
  :form 'define-city
  :module *cities*
  :dossier "dossier;cities"
  :description "A word or polyword that names a specific city"
  :examples "\"London\", \"San Francisco\"" )

