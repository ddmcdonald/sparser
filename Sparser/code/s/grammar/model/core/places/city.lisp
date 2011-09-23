;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "city"
;;;   Module:  "model;core:places:"
;;;  version:  0.2 September 1995

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
  :instantiates  self
  :specializes  location
  :binds ((name :primitive word)
          (aliases  :primitive list)
          (country . country)
          (state . state))
  :index (:permanent :key name) ;; deleted country
  :realization (:word name))

;; patch forced in Subsumption-check/complete because "New York"
;; has ':mixed-case' in its plist field


(defun string/city (c)
  (let ((name (value-of 'name c)))
    (etypecase name
      (word (word-pname name))
      (polyword (pw-pname name)))))




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

;;;---------------
;;; defining form
;;;---------------

(defun define-city (name-string  &optional country-string
                    &key state aliases)
  (let ((country
         (when country-string
           (etypecase country-string
             (string (find-individual 'country :name country-string))
             (referential-category country-string))))
        (name
         (etypecase name-string
           (string (resolve-string-to-word/make name-string))
           (word name-string)))
        obj )

    (if (setq obj (find-individual 'city
                                   :name name :country country))
      obj
      (let ( rule  rules )
        (setq obj (define-individual 'city
                    :name name :country country))

        ;(unless country
        ;  (format t "~&~%No country has been specified for ~A~%~%" obj))

        (setq rule
              (list (define-cfr category::city `( ,name )
                      :form category::proper-noun
                      :referent obj)))

        (when state
          (let ((state-obj
                 (etypecase state
                   (string (find-individual 'state :name state))
                   ;;(list ) ;; (state . country)
                   (referential-category state))))
            (bind-variable 'state state-obj obj)))
                    
        (when aliases
          (let ( word )
            (dolist (alias-string aliases)
              (setq word (resolve-string-to-word/make alias-string))
              (push (define-cfr category::city `( ,word )
                      :form category::proper-noun
                      :referent obj)
                    rules))
            (when rules
              (setq rule (cons rule (nreverse rules))))))

        (setf (unit-plist obj)
              `(:rules ,rules ,@(unit-plist obj)))

        obj ))))


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

