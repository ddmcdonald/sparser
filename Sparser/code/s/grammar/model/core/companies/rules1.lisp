;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:companies:"
;;;  version:  1.3 July 2013

;; 1.0 (10/30/91 v2.3) flushed everything to get in a rule that Capitalization
;;      needed just to get running.
;; 1.1 (6/15/93) put back the preposition rules
;; 1.2 (5/3/95) pulled out the prepositions to a public dossier. Nothing's left
;;      here except the unvetted stuff
;; 1.3 (7/23/13) Starting to mine and add stuff. DA for <country>'s <co>. 

(in-package :sparser)

;;;---------
;;; country
;;;---------

(def-cfr company (country company)
  :form np
  :referent (:function relate-company-to-country left-edge right-edge))

(defun relate-company-to-country (country company)
  ;;//////// Nothing is checking the possessive
  ;; Where could we put that?
  (bind-variable 'location country company)
  company)



#|---------------------------- old stuff commented out
;;;---------------------
;;; soak up determiners
;;;---------------------

(def-cfr company ("the" company)
  :referent (:daughter right-edge))


;;;-------------------
;;; soak up modifiers
;;;-------------------

(defun define-company-modifier (string)
  (let ((word (resolve/make string)))
    (define-cfr category::company `(,word ,category::company)
      :referent '(:daughter right-edge))))


(define-company-modifier "new")
(define-company-modifier "flagship")


(def-cfr company (location company)
  :referent (:daughter right-edge))


;;;--------------------------------
;;; set up for larger compositions
;;;--------------------------------

(def-cfr company-possessive (company apostrophe-s)
  :referent (:daughter left-edge))

(def-cfr comma-company ("," company)
  :referent (:daughter right-edge))


;;;---------------------------
;;; setting up for heuristics
;;;---------------------------

(set-Completion-action/edge/category category::company-possessive
                                     'setup-determiner-span)

(defun setup-determiner-span (co-pos)
  (when *trace-HA-contexts*
    (format t "~&Setting up pending determiner ~A~%"
            co-pos))
  (setq *pending-open-determiner* co-pos))


;;;---------------------------------------------------
;;; rules for forming companies from other than names
;;;---------------------------------------------------

(def-cfr company (city name)
  :referent (:merge city+name->company left-edge right-edge))

(defun city+name->company (city name)
  (let* ((city-name-elements
          (if (listp (city-name city))
            (city-name city)
            (list (city-name city))))
         (name-name-elements
          (cond ((composite? name)
                 (case (cat-symbol (first name))
                   (category::name/unknown-referent
                    (if (listp (second name))
                      (second name)
                      (list (second name))))
                   (category::name/plural
                    (let ((1st (names-from-obj (second name)))
                          (2d  (names-from-obj (third name))))
                      (append 1st 2d)))
                   (otherwise
                    (break/debug "New case of composite") :foo)))
                ((typep name 'name) (list name))
                (t (break "Unexpected kind of first name element in ~
                           [name] \"of\" [co] construction~
                           ~%  ~A" name)))))

    (let ((extended-name
           (append city-name-elements name-name-elements)))

      (or (find/company extended-name)
          (let ((company (make-company
                          :name (make-name-of-a-company
                                 :all-but-inc extended-name
                                 :name1 (first extended-name)))))

            (index/company company extended-name)
            company )))))


(defun names-from-obj (obj)
  (let ((names
         (typecase obj
           (company (noc-all-but-inc (company-name obj)))
           (list
            (unless (composite? obj)
              (break/debug "Non-composite passed to Names-from-obj: ~A" obj))
            (unless (typep (first obj) 'category)
              (break/debug "Composite is not headed by a category: ~A" obj))
            (case (cat-symbol (first obj))
              (category::name/unknown-referent (rest obj))
              (otherwise
               (break/debug "New kind of composite passed to ~
                             Names-from-obj: ~A" (first obj)))))
           (otherwise
            (break/debug "New kind of object passed to ~
                          Names-from-obj: ~A" obj)))))
    (unless (listp names)
      (setq names (list names)))
    names ))
               


;;;------------------------------------------------
;;;      "of" internal to the company name
;;; e.g. "Worlds of Wonder", Dec1;107
;;;------------------------------------------------

(def-cfr of-company ("of" company)
  :referent (:daughter right-edge))


(def-cfr company (name of-company)
  :referent (:merge fold-name-into-ofco left-edge right-edge))

(defun fold-name-into-ofco (name of-co)
  ;; returns the new company formed by extending the name of the
  ;; of-co.  Doesn't flush the old-co, which perhaps it should ////
  (let* ((name-name
          (cond ((composite? name)
                 (case (cat-symbol (first name))
                   (category::name/unknown-referent
                    (second name))
                   (otherwise
                    (break/debug "New case of composite") :foo)))
                ((typep name 'name) name)
                (t (break "Unexpected kind of first name element in ~
                           [name] \"of\" [co] construction~
                           ~%  ~A" name))))
         (of-co-name (company-name of-co))
         (of-co-all-but (noc-all-but-inc of-co-name))
         (of-co-inc-term (noc-inc-term of-co-name))
         (extended-all-but
          (cons name-name (cons word::|of| of-co-all-but))))

    (or (find/company extended-all-but)
        (let ((company (make-company
                        :name (make-name-of-a-company
                               :all-but-inc extended-all-but
                               :name1       name-name
                               :inc-term    of-co-inc-term))))
          
          (index/company company extended-all-but)
          company ))))


(def-cfr company (company of-name)
  :referent (:merge fold-of-name-into-company left-edge right-edge))

(defun fold-of-name-into-company (co of-name)
  (let* ((co-name (company-name co))
         (co-name-elements (noc-all-but-inc co-name))
         (of-name-elements
          (cond ((composite? of-name)
                 (case (cat-symbol (first of-name))
                   (category::name/unknown-referent
                    (if (listp (second of-name))
                      (second of-name)
                      (list (second of-name))))
                   (category::name/plural
                    (append (if (composite? (second of-name))
                              (rest (second of-name))
                              nil)
                            (if (composite? (third of-name))
                              (rest (third of-name))
                              nil)))
                   (otherwise
                    (break/debug "New case of composite") :foo)))
                ((typep of-name 'name) (list of-name))
                ((typep of-name 'subsidiary)
                 (noc-all-but-inc (subsid-name of-name)))
                ((typep of-name 'company)
                 (noc-all-but-inc (company-name of-name)))
                (t (break "Unexpected kind of first name element in ~
                           [name] \"of\" [co] construction~
                           ~%  ~A" of-name)))))

    (let ((extended-name
           (append co-name-elements
                   (list word::|of|)
                   of-name-elements)))

      (or (find/company extended-name)
          (let ((company (make-company
                          :name (make-name-of-a-company
                                 :all-but-inc extended-name
                                 :name1 (first extended-name)))))

            (index/company company extended-name)
            company )))))


;;;-----------------------------------
;;;   [name/co] of [country/city]
;;;-----------------------------------

#| //// ignoring formation of the proper full name until the indexing
of companies is revised to take the full name  These just extend the span
of the company without elaborating its name |#

(def-cfr of-city ("of" city)
  :referent (:daughter right-edge))

(def-cfr of-country ("of" country)
  :referent (:daughter right-edge))


(def-cfr company (company of-city)
  :referent (:daughter left-edge))

(def-cfr company (company of-country)
  :referent (:daughter left-edge))           |#

