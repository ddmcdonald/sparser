;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "names to people"
;;;   Module:  "model;core:people:"
;;;  version:  0.3 July 2013

;; copied over material from [random and hacks] 4/12/95
;; 0.1 (4/25) redid Interpret-name-as-person as a dispatch on itype to handle
;;  collections.  Tweeked .. 5/3
;;  (12/18) started moving the individual cs rules here to centralize them
;; 0.2 (3/16/05) Elaborated Interpret-name-as-person/aux along the same lines
;;  as done with companies.  2/18/13 folded in named-object case.
;;  3/5/13 Moved in the country+person method, Exposed 4/3/13
;; 0.3 (5/26/13) Reworking the interpret-as-name code to fit current scheme,
;;  and pulled in csr's for name and position. Extended 6/6/13.
;;  debugged 7/15/13

(in-package :sparser)

;;;--------------------------
;;; interpretation functions
;;;--------------------------

;;--- single words

(defun interpret-cap-word-as-person (word)
  ;; make a name for the word and then have it interpreted as
  ;; a person
  (let ((name-word (define-individual 'name-word :name word)))
    (interpret-name-word-as-person name-word)))

(defun interpret-name-word-as-person (name-word)
  ;; can't already be known or we would be getting to the person
  ;; by a subseq. ref.  route.
  (let ((name-of-person
         (define-individual 'person-name :last-name name-word)))
    (define-individual 'person
      :name name-of-person)))


;;--- multiple words

(defun interpret-name-as-person (name)
  ;; reconstrue this name as that of a person and then make 
  ;; a person with that name.
  ;(if (category-p name) ;; "name/unknown-pattern"
  ;  *default-person*
  ;; The default-person isn't defined now (in loaded coade)
  (tr :interpreting-name-as-person name)
  (let ( person ) 
    ;; the value get lost in this recursive threading, 
    ;; so we cache it so the return value for this referent function
    ;; is right.
    (typecase name
      (individual
       (case (cat-symbol (itype-of name))

         (category::uncategorized-name
          (let* ((sequence (value-of 'name/s name)))
            (unless sequence
              (push-debug `(,name))
              (break "Name is not based on a sequence:~%  ~A" name))
            (let* ((person-name
                    (or (find/person-name/sequence sequence)
                        (make-person-name-from-items
                         (value-of 'items sequence)
                         :sequence sequence)))
                   (i (or (find/person-with-name person-name)
                          (make/person-with-name person-name))))
              (setq person i)
              (disconnect-uncategorized-name name)
              i)))
       
         (category::named-object
          ;; We reified it earlier. Now lift out it's name part
          ;; and try again
          (let ((name-value (value-of 'name name)))
            (unless name-value
              (push-debug `(,name))
              (error "Named-object without a name ???"))
            (when (eq name-value name) ;; trap potential loop
              (error "Name slot of a named-object contains same ~
                      named object."))
            (setq person (interpret-name-as-person name-value))
            (disconnect-named-object name name-value)))

         ((or category::sequence category::collection)
          (let ((items (value-of 'items name))
                people )
            (dolist (item items)
              (push (interpret-name-as-person item)
                    people))
            ;;//// test this case re. return value
            (define-individual 'collection
               :items (nreverse people)
              :number (length people)
              :type (category-named 'person))))

         (category::name-word
          (let* ((person-name
                  (or (name-word-to-person? name)
                      (make-person-name-from-items
                       (list name))))
                 (i (or (find/person-with-name person-name)
                        (make/person-with-name person-name))))
            (setq person i)
            i))

         (category::company
          ;; Can happen when a cs rule wants to convert a cap seq.
          ;; that's already defined.
          (setq person name))

         (category::person
          ;; as with companies
          (setq person name))

         (otherwise
          (push-debug `(,name))
          (error "New category of name: ~a~%~a"
                 (cat-symbol (itype-of name)) name))))

      (word
       (let* ((nw (define-individual 'name-word :name name))
              (person-name (make-person-name-from-items (list nw))))
         (setq person (or (find/person-with-name person-name)
                          (make/person-with-name person-name)))))

      (otherwise
       (push-debug `(name))
       (error "New type of object: ~a~%~a"
              (type-of name) name)))

    (unless person
      (push-debug `(,name))
      (error "Conversion to a person failed. Variable is nil"))
    person))


(defun name-word-to-person? (nw)
  (dolist (b (indiv-bound-in nw) nil)
    (when (eq (category-of (binding-body b)) category::person-name)
      (return (binding-body b)))
    ;(when (eq (category-of (binding-body b)) category::position-in-a-sequence)
    ;  (let ((sequence (value-of 'sequence (binding-body b))
    ))



;;;-----------------------
;;; relation to countries
;;;-----------------------

(define-category nationality
  :specializes associated-with-country
  :binds ((country . country)
          (person . person))
  :index (:sequential-keys country person))

(defmethod relationship-to-country ((c sh::country) (p sh::person))
  (declare (special *parent-edge-getting-reference*))
  (let ((country (dereference-shadow-individual c))
        (person (dereference-shadow-individual p)))
    (setf (edge-category *parent-edge-getting-reference*)
          category::person)
    (setf (edge-form *parent-edge-getting-reference*)
          category::np)
    (define-or-find-individual category::nationality
        :country country :person person)
    person))



;;;-----------------
;;; rule of context
;;;-----------------

;;--- age

(def-csr name person
  :right-context comma-age
  :form np
  :referent (:function interpret-name-as-person left-edge))


;;--- age rewriting rules when the age is given as just a bare number

(def-csr comma-number comma-age
  :left-context person
  :form appositive-prefix
  :referent (:function interpret-number-as-years-of-age right-edge))

(def-csr comma-number comma-age
  :left-context name
  :form appositive-prefix
  :referent (:function interpret-number-as-years-of-age right-edge))

                          

                        


