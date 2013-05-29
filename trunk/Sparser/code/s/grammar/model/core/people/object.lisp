;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:names:people:"
;;;  version:  0.2 March 2013

;; initiated 6/8/93 v2.3
;; 0.1 (1/7/94) redesigned not to pre-index
;; 0.2 (9/26) promulgating change to how instances are stored. 10/6 added properties
;;  (3/16/05) Adding realization rules.
;;  (2/13/13) Made person specialize named-object (see core/names/object)
;;  (3/6/13) Added another pattern for age. Defined "person" here 3/21.
;;  (3/25/13) Pulled that definition because it required an instance of
;;   "a person" to have a name to be properly indexed. Introduced a new
;;   cagegory -- person-type -- to carry those references. 

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  person
  :instantiates self
  :specializes named-object
  :binds ((name . person-name)
          (age . age)
          (position . (:or title position)))
  :index (:key name)
  :realization ((:tree-family  appositive
                 :mapping ((appositive-field . age)
                           (np . :self)
                           (appositive . age)))
                (:tree-family premodifier-adds-property
                 :mapping ((property . age)
                           (np-head . :self)
                           (modifier . age)))))


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
   The define person types are in the people/kinds file.
|#
(define-category person-type
  :instantiates self
  :specializes kind)


;;;----------------------------------------
;;; def-form for explicitly defined people
;;;----------------------------------------

(defun define-person (name-string &key alias nicknames)
  (declare (ignore alias nicknames))
  (let* ((name-strings (vet-person-name name-string))
         (name-words (convert-name-strings-to-name-words name-strings))
         (person-name ;; takes version keyword
          (make-person-name-from-items1 name-words)))
    (push-debug `(,person-name))
    (or (find/person-with-name person-name)
        (make/person-with-name person-name))))
 

(defun vet-person-name (name-string)
  "Check the name-string for validity. 
   Return a list of name-words"
  (let ( string-elements )
    (typecase name-string
      (string
       ;;/// Any other characters to look for?
       (setq string-elements
             (if (position #\space name-string)
               (break-up-at name-string :delimeter-chars '(#\space))
               (list name-string))))
      (cons
       (if (every #'stringp name-string)
         (setq string-elements name-string)
         (else
          (push-debug `(,name-string))
          (break "New list case in person-name: ~a"
                 name-string))))
      (otherwise
       (push-debug `(,name-string))
       (error "Unexpected type of person name specifier: ~a~%~a"
              (type-of name-string) name-string)))

    (remove-if #'(lambda (s) (and (= 1 (length s))
                                  (eql (elt s 0) #\space)))
               string-elements)))
                           
                           


(defun convert-name-strings-to-name-words (list-of-strings)
  ;; Convert the strings to namewords, but note the
  ;; cases in referents-of-list-of-edges show what to do
  ;; with terms that have other meanings
  (let ((words (loop for string in list-of-strings
                 collect (resolve-string-to-word/make string))))
    (flet ((make-name-word (word)
             (cond
              ((name-word-for-word word) ;; already is one
               (get-tag-for :name-word word))
              ((only-known-as-a-name word) ;
               ;/// presumes an ordering on the pllist - may not be reliable
               (define-name-word word))
              (t ;; punting on the other real cases
               (define-name-word word)))))
      (loop for word in words
        collect (make-name-word word)))))
  
         
;;;------------
;;; operations
;;;------------

(defun make/person-with-name (name)
  (unless (indiv-typep name 'person-name)
    (push-debug `(,name))
    (break "Expected a person-name and got:~%  ~A" name))
  (define-individual 'person
    :name name))

(defun find/person-with-name (name)
  ;; ///add capability for near misses.
  (let ((people (cat-instances category::person)))

    (let ((person (gethash name people)))
      (if (consp person)
        (if (null (cdr person))
          (car person)
          (break "Multiple people with the same name"))
        person ))))



;;;---------------
;;; print routine
;;;---------------
#|
(define-special-printing-routine-for-category  person-name
  :full ((write-string "#<person-name " stream)
         (  |#

(defun shortest-person-string (person)
  (let ((name-word
         (value-of 'last-name
                   (value-of 'name person))))
    (let ((word
           (value-of 'name name-word)))
      (word-pname word))))

