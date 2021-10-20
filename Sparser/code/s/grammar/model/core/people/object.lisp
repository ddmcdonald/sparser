;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013.2019-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:people:"
;;;  version:  September 2021

;; initiated 6/8/93 v2.3
;; 0.1 (1/7/94) redesigned not to pre-index
;; 0.2 (9/26) promulgating change to how instances are stored. 10/6 added properties
;;  (3/16/05) Adding realization rules.
;;  (2/13/13) Made person specialize named-object (see core/names/object)
;;  (3/6/13) Added another pattern for age. Defined "person" here 3/21.
;;  (3/25/13) Pulled that definition because it required an instance of
;;   "a person" to have a name to be properly indexed. Introduced a new
;;   cagegory -- person-type -- to carry those references. 
;;  (6/6/13) Added position. Added cross-indexing for subseq. ref. Removed
;;   stub special-printer. If we need one it goes in people/printers.lisp
;;  (7/29/13) Added notion of a role-based-person and the convert-title-to-person
;;   routine to make them.
;; 0.3 (8/16/13) Make person permanent in the category definition

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  person
  :instantiates self
  :specializes physical-agent
  :mixins (has-uid)
  :binds ((name . person-name)
          (age . age)
          (gender . gender)
          (position . (:or title position-at-co))
          (nationality . country)
          (origin top)) ;; simplistic
  :index (:permanent :apply :key name)
  :lemma (:common-noun "person")
  :realization
     ((:from origin
       :of nationality)
   
      (:tree-family  appositive
       :mapping ((appositive-field . age)
                 (np . :self)
                 (appositive . age)))
      (:tree-family premodifier-adds-property
       :mapping ((property . age)
                 (np-head . :self)
                 (modifier . age)))
      (:tree-family  appositive
       :mapping ((appositive-field . position)
                 (np . :self)
                 (appositive . position-at-co)))
      ))


;;;-----------------
;;; types of people
;;;-----------------

#| The person type is for categories like "girl" or "uncle"
 and in particular for "person". They are descriptions of
 particular people or may be for general statements about
 a class of people ('girls are young and female'), though
 that distinction is hard to make with just local evidence.
   When it is a referent to a particular person we will
 usually recognize their name, and at that point we can
 instantiate the person category which is indexed on
 the name, and need to carry over the attributes that
 have acrused to the type, qua hook, and put them on 
 the person instance.

 The defined person types and family members are in people/kinds.lisp.
|#
(define-category person-type
  :instantiates person
  :mixins (named-type)
  :specializes person
  :bindings (type-of 'person))

(define-category family-member
  :instantiates person
  :specializes person-type
  :binds ((relative . person))
  :realization (:of relative)
  :documentation "Its worth separating out these cases
    since they take possessives ('my mother is turning 92')
    and have nice inter-relationships if we want to model them.")

;;;-----------------------------------------
;;; people defined implicitly by their role
;;;-----------------------------------------

(define-category title-based-person
  :instantiates person
  :specializes person
  :index (:key role)  ;; should these be permanent?
  :binds ((role . title))
  :documentation "Virtually any job title can be used to refer
 to people who hold that position, ")

(define-category role-based-person
  :instantiates person
  :specializes person
  :binds ((name :primitive word)
          (in top)
          (with top)
          (under top)
          (from top))
  :realization (:common-noun name
                :in in :with with :under under :from from)
  :documentation "Similar to how titles can refer, this covers
 people construed by some role that they play in some relation.
 That would subsume family-member (for instance), but we want
 to maintain some semantic distinctions. Refining role-based into
 finer subcategories is to the point if the differences have some
 consequence.
 N.b. the 'name' here is a simple word that labels the role
 ('student', 'subject') the actual people, individuals serving
 the role at some time, should have person-name objects in their
 name file.")

;; instances in dossiers/person-roles.lisp
(define-type-instance-constructor role-based-person)

;;;------------
;;; operations
;;;------------

(defun make/person-with-name (name)
  (unless (indiv-typep name 'person-name)
    (push-debug `(,name))
    (break "Expected a person-name and got:~%  ~A" name))
  (let ((person (define-individual 'person :name name)))
    (tr :made-person-with-name person name)
    (index-person-name-to-person name person)
    person))

(defun find/person-with-name (name)
  ;; ///add capability for near misses.
  (tr :looking-for-person-with-name name) 
  (let ((people (cat-instances category::person)))
    (let ((person (gethash name people)))
      (when (consp person)
        (if (null (cdr person))
          (setq person (car person))
          (break "Multiple people with the same name")))
      (if person
        (tr :found-person-with-name person)
        (tr :did-not-find-person-with-name))
      person )))



;;;----------------------------------------
;;; def-form for explicitly defined people
;;;----------------------------------------

(defun define-person (name-string &key alias nicknames)
  (declare (ignore alias nicknames))
  (let* ((words (name-string-to-words name-string))
         (name-words (name-words-for-words words))
         (person-name ;; also takes version keyword
          (make-person-name-from-items name-words)))
    (or (find/person-with-name person-name)
        (make/person-with-name person-name))))
 

(defun name-string-to-words (name-string)
  "Check the name-string for validity. 
   Returns a list of words"
  (let ((string-elements
         (typecase name-string
          (string
           ;;/// Any other characters to look for?
           (if (position #\space name-string)
             (break-up-at name-string :delimeter-chars '(#\comma #\space))
             (list name-string)))
          (cons
           (if (every #'stringp name-string)
             name-string
             (else
              (push-debug `(,name-string))
              (break "New list case in person-name: ~a"
                     name-string))))
          (otherwise
           (push-debug `(,name-string))
           (error "Unexpected type of person name specifier: ~a~%~a"
                  (type-of name-string) name-string)))))
    (setq string-elements
          (remove-if #'(lambda (s) (and (= 1 (length s))
                                        (eql (elt s 0) #\space)))
                     string-elements))
    (setq string-elements ;; "Apple Computer, Inc."
          (remove-if #'(lambda (s) (position #\comma s))
                     string-elements))
    
    (loop for string in string-elements
       collect (resolve-string-to-word/make string))))
                           

(defun name-words-for-words (list-of-words)
  ;; Find or make name-word individuals for all the words,
  ;; but note the cases in referents-of-list-of-edges show what to do
  ;; with terms that have other meanings
  (flet ((find-or-make-name-word (word)
           (or (get-tag :name-word word)
               ;;/// versions, initials, company-indicators, 
               ;; inc-terms
               (when (only-known-as-a-name word)
                 ;/// presumes an ordering on the pllist - may not be reliable
                 (define-name-word word))
               ;; punting on the other real cases
               (define-name-word word))))
      (loop for word in list-of-words
        collect (find-or-make-name-word word))))
  
 
